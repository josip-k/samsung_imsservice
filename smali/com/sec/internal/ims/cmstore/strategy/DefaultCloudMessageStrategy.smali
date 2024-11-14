.class public Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;
.super Ljava/lang/Object;
.source "DefaultCloudMessageStrategy.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;
.implements Lcom/sec/internal/interfaces/ims/cmstore/IMessageAttributeInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;,
        Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$NmsNotificationType;
    }
.end annotation


# static fields
.field public static final MAX_RETRY_COUNTER:I = 0x4

.field protected static mMessageTypeMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field protected mAutoDownload:Z

.field protected mContentType:Ljava/lang/String;

.field protected mDateFormat:Ljava/text/SimpleDateFormat;

.field protected mFailedCallFlowTranslator:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/sec/internal/helper/httpclient/HttpRequestParams;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mMaxBulkOption:I

.field protected mMaxRetryCounter:I

.field protected mMaxSearch:I

.field protected mMessageAttributeRegistration:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mNotificationFormat:Lcom/sec/internal/omanetapi/common/data/NotificationFormat;

.field protected mOmaCallFlowTranslator:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mProtocol:Ljava/lang/String;

.field protected mScheduledTimer:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mStandardRetrySchedule:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

.field protected mStrategyType:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

.field protected mSuccessfullCallFlowTranslator:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/sec/internal/helper/httpclient/HttpRequestParams;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mVVMPendingRequestCount:I

.field protected sErrorMsgsTranslator:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorType;",
            "Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V
    .locals 2

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const-class v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x4

    .line 79
    iput v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMaxRetryCounter:I

    const/16 v0, 0xa

    .line 88
    iput v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMaxSearch:I

    const/4 v0, 0x0

    .line 90
    iput v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mVVMPendingRequestCount:I

    const/4 v0, 0x1

    .line 96
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mAutoDownload:Z

    .line 661
    sget-object v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->DEFAULT:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStrategyType:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->LOG_TAG:Ljava/lang/String;

    const-string v1, "DefaultCloudMessageStrategy"

    .line 126
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    const/16 p1, 0x64

    .line 128
    iput p1, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMaxBulkOption:I

    return-void
.end method

.method private getHandlerClassName(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;)Ljava/lang/String;
    .locals 1

    .line 555
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    .line 556
    instance-of v0, p1, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;

    if-eqz v0, :cond_0

    .line 557
    const-class p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 558
    :cond_0
    instance-of v0, p1, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;

    if-eqz v0, :cond_1

    .line 559
    const-class p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 560
    :cond_1
    instance-of v0, p1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    if-eqz v0, :cond_2

    .line 561
    const-class p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 562
    :cond_2
    instance-of v0, p1, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;

    if-nez v0, :cond_3

    instance-of p1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    if-eqz p1, :cond_4

    .line 563
    :cond_3
    const-class p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    :cond_4
    :goto_0
    return-object p0
.end method


# virtual methods
.method public final bulkOpTreatSuccessIndividualResponse(I)Z
    .locals 1

    .line 953
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStrategyType:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    sget-object v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->TMOUS:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    filled-new-array {v0}, [Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->isOneOf([Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x193

    if-eq p1, p0, :cond_0

    const/16 p0, 0x194

    if-ne p1, p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final bulkOpTreatSuccessRequestResponse(I)Z
    .locals 1

    .line 964
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStrategyType:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    sget-object v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->TMOUS:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    filled-new-array {v0}, [Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->isOneOf([Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/16 p0, 0x194

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public clearOmaRetryData()V
    .locals 0

    .line 0
    return-void
.end method

.method public decrypt(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, ""

    return-object p0
.end method

.method public getAdaptedRetrySchedule(I)I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getAuthorizationBasic()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, ""

    return-object p0
.end method

.method public getAuthorizationBearer()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, ""

    return-object p0
.end method

.method public getClientVersion()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, ""

    return-object p0
.end method

.method public final getContentType()Ljava/lang/String;
    .locals 0

    .line 709
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mContentType:Ljava/lang/String;

    return-object p0
.end method

.method public getControllerOfLastFailedApi()Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDateFormat()Ljava/text/SimpleDateFormat;
    .locals 0

    .line 1097
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mDateFormat:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, ""

    return-object p0
.end method

.method public final getFailedCallFlowTranslator()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/sec/internal/helper/httpclient/HttpRequestParams;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;",
            ">;>;"
        }
    .end annotation

    .line 671
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mFailedCallFlowTranslator:Ljava/util/Map;

    return-object p0
.end method

.method public final getIsInitSyncIndicatorRequired()Z
    .locals 1

    .line 780
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStrategyType:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    sget-object v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->ATT:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    filled-new-array {v0}, [Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->isOneOf([Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getLastFailedApi()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;",
            ">;"
        }
    .end annotation

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMaxBulkOptionEntry()I
    .locals 0

    .line 845
    iget p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMaxBulkOption:I

    return p0
.end method

.method public final getMaxRetryCounter()I
    .locals 0

    .line 676
    iget p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMaxRetryCounter:I

    return p0
.end method

.method public final getMaxSearchEntry()I
    .locals 0

    .line 850
    iget p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMaxSearch:I

    return p0
.end method

.method public final getMessageAttributeRegistration()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 681
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    return-object p0
.end method

.method public getNativeLine()Ljava/lang/String;
    .locals 0

    .line 167
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTelCtn()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNcHost()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, ""

    return-object p0
.end method

.method public getNmsHost()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, ""

    return-object p0
.end method

.method public final getNotificaitonFormat()Lcom/sec/internal/omanetapi/common/data/NotificationFormat;
    .locals 0

    .line 704
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mNotificationFormat:Lcom/sec/internal/omanetapi/common/data/NotificationFormat;

    return-object p0
.end method

.method public getOMAApiVersion()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, ""

    return-object p0
.end method

.method public final getProtocol()Ljava/lang/String;
    .locals 0

    .line 686
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mProtocol:Ljava/lang/String;

    return-object p0
.end method

.method public getSmsHashTagOrCorrelationTag(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 762
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStrategyType:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    sget-object v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->ATT:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->TMOUS:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    filled-new-array {v0, v1}, [Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->isOneOf([Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "::"

    const-string v0, ":::::"

    const-string v1, ":::"

    .line 763
    filled-new-array {v1, p0, v0}, [Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 765
    invoke-static {p1, p2, p3, p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/AmbsUtils;->generateSmsHashCode(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getStoreName()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, ""

    return-object p0
.end method

.method public final getSuccessfullCallFlowTranslator()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/sec/internal/helper/httpclient/HttpRequestParams;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;",
            ">;>;"
        }
    .end annotation

    .line 666
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mSuccessfullCallFlowTranslator:Ljava/util/Map;

    return-object p0
.end method

.method public getTimerValue(I)J
    .locals 0

    .line 0
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public getTypeUsingMessageContext(Ljava/lang/String;)I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getVVMAutoDownloadSetting()Z
    .locals 0

    .line 1114
    iget-boolean p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mAutoDownload:Z

    return p0
.end method

.method public getValidTokenByLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public handleNCCommonError(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;II)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method protected initOmaFailureCommonFlow()V
    .locals 7

    .line 364
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->LOG_TAG:Ljava/lang/String;

    const-string v1, "init OMA failure common flow"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v2, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualObject;

    .line 373
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;

    .line 374
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x194

    invoke-direct {v1, v4, v2, v3}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->DOWNLOAD_RETRIVED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 375
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 371
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v3, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualObject;

    .line 379
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-class v5, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    .line 380
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v3, v5}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->OBJECT_ONE_DOWNLOAD_COMPLETED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 381
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 377
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v5, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads;

    .line 388
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    .line 389
    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v4, v5, v6}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 390
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 386
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v5, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads;

    .line 394
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;

    .line 395
    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v4, v5, v6}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 396
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 392
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v5, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualPayLoad;

    .line 401
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    .line 402
    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v4, v5, v6}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 403
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 399
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v3, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualPayLoad;

    .line 407
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-class v5, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;

    .line 408
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v3, v5}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 409
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 405
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v2, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessagePutObjectFlag;

    .line 415
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Landroid/os/Handler;

    .line 416
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v4, v2, v3}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->UPDATE_ONE_SUCCESSFUL:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 417
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 413
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v3, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageDeleteObjectFlag;

    .line 423
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-class v5, Landroid/os/Handler;

    .line 424
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v3, v5}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 425
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 421
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v3, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageDeleteIndividualObject;

    .line 431
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-class v5, Landroid/os/Handler;

    .line 432
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v3, v5}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 433
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 429
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v2, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkUpdate;

    .line 438
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;

    .line 439
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x193

    invoke-direct {v1, v4, v2, v3}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->FALLBACK_ONE_UPDATE_OR_DELETE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 440
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 436
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v0, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v1, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkDeletion;

    .line 445
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-class v3, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;

    .line 446
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v4, v1, v3}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 447
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 443
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected final initOmaSuccessCommonFlow()V
    .locals 8

    .line 235
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->LOG_TAG:Ljava/lang/String;

    const-string v1, "init OMA success common flow"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v2, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateAllObjects;

    .line 240
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Landroid/os/Handler;

    .line 241
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xc9

    invoke-direct {v1, v4, v2, v3}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->OBJECT_ONE_UPLOAD_COMPLETED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 242
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 238
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v2, Lcom/sec/internal/ims/cmstore/omanetapi/nms/McsSyncMessageStatus;

    .line 245
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    .line 246
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xc8

    invoke-direct {v1, v5, v2, v3}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->SYNC_MESSAGE_ACK:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 247
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 244
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v2, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualObject;

    .line 253
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    .line 254
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v5, v2, v3}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->OBJECT_ONE_DOWNLOAD_COMPLETED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 255
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 251
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v3, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualObject;

    .line 259
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-class v6, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;

    .line 260
    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v5, v3, v6}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->DOWNLOAD_RETRIVED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 261
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 257
    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v6, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads;

    .line 268
    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    .line 269
    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v5, v6, v7}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 266
    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v6, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads;

    .line 274
    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;

    .line 275
    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v5, v6, v7}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 272
    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v6, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualPayLoad;

    .line 281
    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    .line 282
    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v5, v6, v7}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 279
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v2, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualPayLoad;

    .line 287
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-class v6, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;

    .line 288
    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v5, v2, v6}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 285
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v2, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessagePutObjectFlag;

    .line 295
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Landroid/os/Handler;

    .line 296
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v4, v2, v3}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->UPDATE_ONE_SUCCESSFUL:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 297
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 293
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v3, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageDeleteObjectFlag;

    .line 303
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Landroid/os/Handler;

    .line 304
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0xcc

    invoke-direct {v1, v6, v3, v4}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 301
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v3, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageDeleteIndividualObject;

    .line 311
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Landroid/os/Handler;

    .line 312
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v5, v3, v4}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 313
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 309
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v2, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;

    .line 319
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Landroid/os/Handler;

    .line 320
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v5, v2, v3}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->INITIAL_SYNC_SUMMARY_COMPLETE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 321
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 317
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v3, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;

    .line 325
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Landroid/os/Handler;

    .line 326
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v6, v3, v4}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 327
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 323
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v2, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkDeletion;

    .line 334
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;

    .line 335
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v5, v2, v3}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->BULK_UPDATE_OR_DELETE_SUCCESSFUL:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 336
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 332
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v3, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkDeletion;

    .line 340
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;

    .line 341
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v6, v3, v4}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 342
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 338
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v3, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkUpdate;

    .line 350
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;

    .line 351
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v5, v3, v4}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 352
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 348
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v0, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v1, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkUpdate;

    .line 356
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-class v3, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;

    .line 357
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v6, v1, v3}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 358
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 354
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final isAirplaneModeChangeHandled()Z
    .locals 2

    .line 902
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStrategyType:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    sget-object v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->ATT:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->TMOUS:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    filled-new-array {v0, v1}, [Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->isOneOf([Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isAppTriggerMessageSearch()Z
    .locals 1

    .line 937
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStrategyType:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    sget-object v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->TMOUS:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    filled-new-array {v0}, [Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->isOneOf([Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isBulkCreationEnabled()Z
    .locals 1

    .line 829
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStrategyType:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    sget-object v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->ATT:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    filled-new-array {v0}, [Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->isOneOf([Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 830
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->isAmbsPhaseIV()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isBulkDeleteEnabled()Z
    .locals 1

    .line 821
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStrategyType:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    sget-object v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->ATT:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    filled-new-array {v0}, [Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->isOneOf([Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 822
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->isAmbsPhaseIV()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final isBulkUpdateEnabled()Z
    .locals 2

    .line 810
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStrategyType:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->ATT:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    filled-new-array {v1}, [Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->isOneOf([Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 811
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->isAmbsPhaseIV()Z

    move-result p0

    return p0

    .line 813
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStrategyType:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    sget-object v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->KOR:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    filled-new-array {v0}, [Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->isOneOf([Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final isCaptivePortalCheckSupported()Z
    .locals 1

    .line 746
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStrategyType:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    sget-object v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->ATT:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    filled-new-array {v0}, [Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->isOneOf([Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected isCarrierStrategyBreakCommonRule(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;I)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method protected isCarrierStrategyDiffFromCommonRuleByCode(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;I)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public final isDeviceConfigUsed()Z
    .locals 1

    .line 855
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStrategyType:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    sget-object v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->TMOUS:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    filled-new-array {v0}, [Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->isOneOf([Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isEnableATTHeader()Z
    .locals 1

    .line 876
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStrategyType:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    sget-object v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->ATT:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    filled-new-array {v0}, [Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->isOneOf([Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isEnableFolderIdInSearch()Z
    .locals 1

    .line 772
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStrategyType:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    sget-object v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->TMOUS:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    filled-new-array {v0}, [Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->isOneOf([Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isEnableTMOHeader()Z
    .locals 1

    .line 884
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStrategyType:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    sget-object v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->TMOUS:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    filled-new-array {v0}, [Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->isOneOf([Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isEncrypted()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public isErrorCodeSupported(ILcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method protected isFailedForLocationRedirect(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/helper/httpclient/HttpResponseParams;)Z
    .locals 2

    .line 487
    invoke-virtual {p3}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getHeaders()Ljava/util/Map;

    move-result-object p3

    const-string v0, "Location"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 489
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 490
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 492
    :goto_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 494
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 495
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->isGcmReplacePolling()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 496
    iget-object p3, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p3}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p3

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveNmsHost(Ljava/lang/String;)V

    .line 497
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->getNmsHost()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;->updateServerRoot(Ljava/lang/String;)V

    goto :goto_1

    .line 499
    :cond_1
    instance-of p3, p2, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;

    if-eqz p3, :cond_2

    .line 500
    iget-object p3, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p3}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p3

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveNmsHost(Ljava/lang/String;)V

    .line 501
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->getNmsHost()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;->updateServerRoot(Ljava/lang/String;)V

    goto :goto_1

    .line 502
    :cond_2
    instance-of p3, p2, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;

    if-eqz p3, :cond_3

    .line 503
    iget-object p3, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p3}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p3

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveNcHost(Ljava/lang/String;)V

    .line 504
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->getNcHost()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;->updateServerRoot(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 508
    invoke-virtual {p0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 510
    :cond_3
    :goto_1
    sget-object p0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->MSTORE_REDIRECT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p0

    invoke-interface {p1, p0, p2}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedEvent(ILjava/lang/Object;)V

    return v0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method protected isFailedForOmaRetryAfter(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/helper/httpclient/HttpResponseParams;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Z
    .locals 5

    .line 457
    invoke-virtual {p3}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getHeaders()Ljava/util/Map;

    move-result-object p3

    const-string v0, "Retry-After"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    if-eqz p3, :cond_2

    .line 458
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 459
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 460
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "retryAfterHeader: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "API["

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "], retry after "

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " seconds"

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 460
    invoke-static {v2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    if-lez p3, :cond_0

    const-string/jumbo v1, "retry_header"

    .line 465
    invoke-interface {p1, p2, v1, p3}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onOverRequest(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    .line 470
    invoke-interface {p1, p2, p4}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 474
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    invoke-interface {p1, p2, p4}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public isGbaSupported()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public final isGoForwardSyncSupported()Z
    .locals 1

    .line 754
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStrategyType:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    sget-object v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->ATT:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    filled-new-array {v0}, [Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->isOneOf([Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isMultiLineSupported()Z
    .locals 1

    .line 722
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStrategyType:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    sget-object v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->TMOUS:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    filled-new-array {v0}, [Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->isOneOf([Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isNeedCheckBlockedNumberBeforeCopyRcsDb()Z
    .locals 1

    .line 1010
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStrategyType:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    sget-object v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->ATT:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    filled-new-array {v0}, [Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->isOneOf([Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isNmsEventHasMessageDetail()Z
    .locals 1

    .line 738
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStrategyType:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    sget-object v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->TMOUS:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    filled-new-array {v0}, [Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->isOneOf([Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isNotifyAppOnUpdateCloudFail()Z
    .locals 1

    .line 892
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStrategyType:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    sget-object v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->TMOUS:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    filled-new-array {v0}, [Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->isOneOf([Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected isOmaErrorRuleMatch(ILcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/Object;I)Z
    .locals 4

    .line 572
    invoke-direct {p0, p3}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->getHandlerClassName(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;)Ljava/lang/String;

    move-result-object v0

    .line 573
    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2, v0}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 575
    new-instance v0, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Landroid/os/Handler;

    .line 576
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p1, v2, v3}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 577
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/high16 v3, -0x80000000

    if-eqz v2, :cond_0

    .line 578
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 579
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 580
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    if-eq p5, v3, :cond_2

    goto :goto_1

    :cond_2
    move p5, v0

    :goto_1
    if-eq p5, v3, :cond_5

    .line 586
    invoke-static {p5}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    move-result-object v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    goto :goto_2

    .line 587
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    .line 588
    :goto_2
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "API["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], match rule["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0xc8

    if-lt p1, p0, :cond_4

    const/16 p0, 0x12c

    if-ge p1, p0, :cond_4

    .line 591
    invoke-interface {p3, p2, p5, p4}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onSuccessfulEvent(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;ILjava/lang/Object;)V

    goto :goto_3

    .line 593
    :cond_4
    invoke-interface {p3, p5, p4}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedEvent(ILjava/lang/Object;)V

    :goto_3
    const/4 p0, 0x1

    return p0

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method public final isPollingAllowed()Z
    .locals 1

    .line 730
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStrategyType:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    sget-object v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->ATT:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    filled-new-array {v0}, [Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->isOneOf([Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isPostMethodForBulkDelete()Z
    .locals 2

    .line 837
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStrategyType:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->ATT:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    filled-new-array {v1}, [Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->isOneOf([Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStrategyType:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    sget-object v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->KOR:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    filled-new-array {v0}, [Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->isOneOf([Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final isProvisionRequired()Z
    .locals 1

    .line 714
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStrategyType:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    sget-object v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->ATT:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    filled-new-array {v0}, [Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->isOneOf([Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isRetryEnabled()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public isRetryRequired(I)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public final isStoreImdnEnabled()Z
    .locals 2

    .line 992
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStrategyType:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->ATT:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    filled-new-array {v1}, [Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->isOneOf([Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 993
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->isAmbsPhaseIV()Z

    move-result p0

    return p0

    .line 994
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStrategyType:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    sget-object v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->KOR:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    filled-new-array {v0}, [Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->isOneOf([Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final isSupportExpiredRule()Z
    .locals 2

    .line 1034
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStrategyType:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->ATT:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    filled-new-array {v1}, [Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->isOneOf([Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1035
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->isAmbsPhaseIV()Z

    move-result p0

    return p0

    .line 1036
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStrategyType:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    sget-object v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->KOR:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    filled-new-array {v0}, [Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->isOneOf([Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final isTokenRequestedFromProvision()Z
    .locals 1

    .line 788
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStrategyType:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    sget-object v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->ATT:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    filled-new-array {v0}, [Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->isOneOf([Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isTrIdCorrelationId()Z
    .locals 1

    .line 1089
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStrategyType:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    sget-object v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->ATT:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    filled-new-array {v0}, [Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->isOneOf([Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isUIButtonUsed()Z
    .locals 1

    .line 863
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStrategyType:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    sget-object v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->ATT:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    filled-new-array {v0}, [Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->isOneOf([Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isValidOMARequestUrl()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public final needToHandleSimSwap()Z
    .locals 1

    .line 945
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStrategyType:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    sget-object v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->ATT:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    filled-new-array {v0}, [Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->isOneOf([Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onOmaApiCredentialFailed(Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;I)V
    .locals 0

    .line 0
    return-void
.end method

.method protected final onOmaFlowInitComplete()V
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    return-void
.end method

.method protected final onOmaFlowInitStart()V
    .locals 1

    .line 227
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    return-void
.end method

.method public onOmaSuccess(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .locals 0

    .line 0
    return-void
.end method

.method public final requiresInterworkingCrossSearch()Z
    .locals 2

    .line 802
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStrategyType:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    sget-object v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->ATT:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->TMOUS:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    filled-new-array {v0, v1}, [Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->isOneOf([Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public requiresMsgUploadInInitSync()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public resetVVMPendingRequestCount()V
    .locals 0

    .line 0
    return-void
.end method

.method public setDeviceConfigUsed(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public final setProtocol(Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public setVVMAutoDownloadSetting(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public setVVMPendingRequestCounts(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public shouldCareAfterPreProcess(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/helper/httpclient/HttpResponseParams;Ljava/lang/Object;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;I)Z
    .locals 9

    .line 185
    invoke-virtual {p3}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v6

    .line 186
    instance-of v0, p2, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;

    if-eqz v0, :cond_0

    const-string v0, "NMS"

    goto :goto_0

    :cond_0
    const-string v0, "NC"

    :goto_0
    move-object v7, v0

    .line 187
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "["

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], res code["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 187
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    move v1, v6

    move-object v2, p2

    move-object v3, p1

    move-object v4, p4

    move v5, p6

    .line 189
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->isOmaErrorRuleMatch(ILcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/Object;I)Z

    move-result p4

    const/4 p6, 0x0

    if-eqz p4, :cond_1

    .line 191
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "], isOmaErrorRuleMatch"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p6

    .line 195
    :cond_1
    invoke-virtual {p0, p2, v6}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->isCarrierStrategyBreakCommonRule(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;I)Z

    move-result p4

    const/4 v0, 0x1

    const-string v1, "], ["

    if-eqz p4, :cond_2

    .line 196
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] catch call"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 201
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->shouldCareAfterProcessOMACommonCase(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/helper/httpclient/HttpResponseParams;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 202
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "], match common cases"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 202
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p6

    .line 206
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] catch call, return"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method protected shouldCareAfterProcessOMACommonCase(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/helper/httpclient/HttpResponseParams;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Z
    .locals 4

    .line 520
    invoke-virtual {p3}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v0

    const/16 v1, 0x1f4

    const/16 v2, 0x1f7

    const/4 v3, 0x0

    if-lt v0, v1, :cond_0

    if-eq v0, v2, :cond_0

    .line 523
    invoke-interface {p1, p2, p4}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V

    return v3

    .line 526
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->isCarrierStrategyDiffFromCommonRuleByCode(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;I)Z

    move-result v1

    if-eqz v1, :cond_1

    return v3

    :cond_1
    const/16 v1, 0x12e

    if-eq v0, v1, :cond_6

    const/16 v1, 0x191

    if-eq v0, v1, :cond_5

    const/16 v1, 0x198

    if-eq v0, v1, :cond_4

    const/16 v1, 0x1ad

    if-eq v0, v1, :cond_2

    if-eq v0, v2, :cond_2

    const/4 p0, 0x1

    return p0

    .line 541
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->isFailedForOmaRetryAfter(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/helper/httpclient/HttpResponseParams;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 542
    invoke-interface {p1, p2, p4}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V

    :cond_3
    return v3

    .line 546
    :cond_4
    invoke-interface {p1, p2, p4}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V

    return v3

    .line 531
    :cond_5
    invoke-interface {p1, p2, p4}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V

    return v3

    .line 534
    :cond_6
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "API["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], 302"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->isFailedForLocationRedirect(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/helper/httpclient/HttpResponseParams;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 536
    invoke-interface {p1, p2, p4}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V

    :cond_7
    return v3
.end method

.method public final shouldCareGroupChatAttribute()Z
    .locals 1

    .line 1026
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStrategyType:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    sget-object v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->ATT:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    filled-new-array {v0}, [Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->isOneOf([Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1027
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->isAmbsPhaseIV()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final shouldClearCursorUponInitSyncDone()Z
    .locals 1

    .line 1002
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStrategyType:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    sget-object v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->TMOUS:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    filled-new-array {v0}, [Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->isOneOf([Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final shouldCorrectShortCode()Z
    .locals 1

    .line 929
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStrategyType:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    sget-object v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->ATT:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    filled-new-array {v0}, [Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->isOneOf([Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public shouldEnableNetAPIPutFlag(Ljava/lang/String;)Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public shouldEnableNetAPIWorking(ZZZZZ)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public final shouldPersistImsRegNum()Z
    .locals 1

    .line 984
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStrategyType:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    sget-object v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->ATT:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    filled-new-array {v0}, [Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->isOneOf([Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final shouldSkipCmasSMS(Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_1

    const-string p0, "#CMAS#"

    .line 976
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final shouldSkipMessage(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;)Z
    .locals 2

    .line 915
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStrategyType:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    sget-object v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->ATT:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    filled-new-array {v0}, [Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->isOneOf([Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 916
    iget-object p0, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TEXT_CONTENT:Ljava/lang/String;

    .line 917
    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->FROM:Ljava/lang/String;

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "[^0-9]+"

    const-string v1, ""

    .line 921
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 922
    invoke-static {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode;->isSmsZCode(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public final shouldStopInitSyncUponLowMemory()Z
    .locals 1

    .line 1018
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStrategyType:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    sget-object v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->ATT:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    filled-new-array {v0}, [Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->isOneOf([Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1019
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->isAmbsPhaseIV()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public shouldStopSendingAPIwhenNetworklost()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public updateHTTPHeader()V
    .locals 0

    .line 0
    return-void
.end method
