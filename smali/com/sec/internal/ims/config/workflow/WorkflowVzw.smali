.class public Lcom/sec/internal/ims/config/workflow/WorkflowVzw;
.super Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;
.source "WorkflowVzw.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Initialize;,
        Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Finish;,
        Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Store;,
        Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Parse;,
        Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttps;,
        Lcom/sec/internal/ims/config/workflow/WorkflowVzw$ReFetchAppTokenFor511Response;,
        Lcom/sec/internal/ims/config/workflow/WorkflowVzw$ReFetchAppToken;,
        Lcom/sec/internal/ims/config/workflow/WorkflowVzw$AuthorizeAppToken;,
        Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchAppToken;,
        Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchToken;
    }
.end annotation


# static fields
.field protected static final GENERAL_ERROR_MAX_RETRY:I = 0x3

.field protected static final GENERAL_ERROR_RETRY_TIME:[J

.field protected static final INTENT_GENERAL_ERROR_MAX_RETRY:Ljava/lang/String; = "com.sec.internal.ims.config.workflow.general_error_max_retry"

.field protected static final LOCAL_CONFIG_BASE:Ljava/lang/String; = "base"

.field protected static final LOCAL_CONFIG_FILE:Ljava/lang/String; = "localconfig"

.field protected static final LOCAL_CONFIG_MAX_RETRY:I = 0x5

.field protected static final LOCAL_CONFIG_TARGET:Ljava/lang/String; = "vzw_up"

.field protected static final LOCAL_CONFIG_VERS:I = 0x3b

.field protected static final LOG_TAG:Ljava/lang/String;

.field protected static final NO_INITIAL_DATA_MAX_RETRY:I = 0x5

.field protected static final UP_VERSION_DISABLED_VERS:I = 0x65


# instance fields
.field protected m511ResponseRetryCount:I

.field protected mAdsSubId:I

.field protected mAppToken:Ljava/lang/String;

.field protected mBackupVersion:I

.field protected mCurClientVendor:Ljava/lang/String;

.field protected mCurClientVersion:Ljava/lang/String;

.field protected mCurConfigStartForce:Z

.field protected mCurRcsProfile:Ljava/lang/String;

.field protected mCurRcsVersion:Ljava/lang/String;

.field protected mCurVersion:I

.field protected mDmaPackage:Ljava/lang/String;

.field protected mGeneralErrorRetryIntent:Landroid/app/PendingIntent;

.field protected mGeneralErrorRetryIntentReceiver:Landroid/content/BroadcastReceiver;

.field protected mHttpResponse:I

.field protected mImsRegistrationListener:Lcom/sec/ims/IImsRegistrationListener;

.field protected mIntentFilter:Landroid/content/IntentFilter;

.field protected mIsDmaPackageChanged:Z

.field protected mIsGeneralErrorRetryFailed:Z

.field protected mIsGeneralErrorRetryTimerRunning:Z

.field protected mIsImsRegiNotifyReceived:Z

.field protected mIsMobileAutoConfigOngoing:Z

.field protected mIsMobileConnectionAvailable:Z

.field protected mIsSecAndGoogDmaPackageSwitched:Z

.field protected mMobileStateCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field protected mNextWorkflow:Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

.field protected mNoAppTokenRetryCount:I

.field protected mNoInitialDataRetryCount:I

.field protected mNoRemainingValidityRetryCount:I

.field protected mNoResponseRetryCount:I

.field protected mRcsDisabledStateRetryCount:I

.field protected mXmlMultipleParser:Lcom/sec/internal/interfaces/ims/config/IXmlParserAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 75
    const-class v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [J

    .line 85
    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->GENERAL_ERROR_RETRY_TIME:[J

    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x1d4c0
        0x3a980
    .end array-data
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Lcom/sec/internal/constants/Mno;I)V
    .locals 12

    move-object v11, p0

    move-object v2, p2

    move-object v3, p3

    move/from16 v10, p5

    .line 120
    new-instance v5, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzw;

    invoke-direct {v5, p2, p3, v10}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzw;-><init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;I)V

    new-instance v6, Lcom/sec/internal/ims/config/adapters/StorageAdapter;

    invoke-direct {v6}, Lcom/sec/internal/ims/config/adapters/StorageAdapter;-><init>()V

    new-instance v7, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzw;

    invoke-direct {v7, v10}, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzw;-><init>(I)V

    new-instance v8, Lcom/sec/internal/ims/config/adapters/XmlParserAdapter;

    invoke-direct {v8}, Lcom/sec/internal/ims/config/adapters/XmlParserAdapter;-><init>()V

    new-instance v9, Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    invoke-direct {v9, p2, p3}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;-><init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;)V

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v4, p4

    invoke-direct/range {v0 .. v10}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;Lcom/sec/internal/interfaces/ims/config/IXmlParserAdapter;Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;I)V

    const/4 v0, 0x0

    .line 87
    iput-object v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mCurRcsVersion:Ljava/lang/String;

    .line 88
    iput-object v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mCurRcsProfile:Ljava/lang/String;

    .line 89
    iput-object v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mCurClientVendor:Ljava/lang/String;

    .line 90
    iput-object v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mCurClientVersion:Ljava/lang/String;

    .line 91
    iput-object v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mDmaPackage:Ljava/lang/String;

    .line 92
    iput-object v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mAppToken:Ljava/lang/String;

    const/4 v1, 0x0

    .line 93
    iput v1, v11, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mCurVersion:I

    .line 94
    iput v1, v11, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mBackupVersion:I

    .line 95
    iput v1, v11, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mAdsSubId:I

    .line 96
    iput v1, v11, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mHttpResponse:I

    .line 97
    iput v1, v11, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mNoInitialDataRetryCount:I

    .line 98
    iput v1, v11, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mNoAppTokenRetryCount:I

    .line 99
    iput v1, v11, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->m511ResponseRetryCount:I

    .line 100
    iput v1, v11, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mNoResponseRetryCount:I

    .line 101
    iput v1, v11, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mRcsDisabledStateRetryCount:I

    .line 102
    iput v1, v11, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mNoRemainingValidityRetryCount:I

    .line 103
    iput-boolean v1, v11, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mCurConfigStartForce:Z

    .line 104
    iput-boolean v1, v11, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsMobileAutoConfigOngoing:Z

    .line 105
    iput-boolean v1, v11, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsImsRegiNotifyReceived:Z

    .line 106
    iput-boolean v1, v11, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsDmaPackageChanged:Z

    .line 107
    iput-boolean v1, v11, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsSecAndGoogDmaPackageSwitched:Z

    .line 108
    iput-boolean v1, v11, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsMobileConnectionAvailable:Z

    .line 109
    iput-boolean v1, v11, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsGeneralErrorRetryTimerRunning:Z

    .line 110
    iput-boolean v1, v11, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsGeneralErrorRetryFailed:Z

    .line 111
    iput-object v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mNextWorkflow:Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    .line 112
    iput-object v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mImsRegistrationListener:Lcom/sec/ims/IImsRegistrationListener;

    .line 113
    iput-object v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mMobileStateCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 116
    iput-object v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mGeneralErrorRetryIntent:Landroid/app/PendingIntent;

    .line 117
    iput-object v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mGeneralErrorRetryIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 122
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->registerImsRegistrationListener()V

    .line 123
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.sec.internal.ims.config.workflow.general_error_max_retry"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIntentFilter:Landroid/content/IntentFilter;

    .line 124
    new-instance v0, Lcom/sec/internal/ims/config/adapters/XmlParserAdapterMultipleServer;

    invoke-direct {v0}, Lcom/sec/internal/ims/config/adapters/XmlParserAdapterMultipleServer;-><init>()V

    iput-object v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mXmlMultipleParser:Lcom/sec/internal/interfaces/ims/config/IXmlParserAdapter;

    return-void
.end method

.method private endCurConfig()V
    .locals 7

    .line 492
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersion()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mNewVersion:I

    .line 493
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getParsedIntVersionBackup()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mBackupVersion:I

    .line 494
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "curConfig: oldVersion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mOldVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " newVersion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mNewVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " backupVersion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mBackupVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 496
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->checkAndUpdateDmaPackage()V

    .line 497
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->checkAndUpdateRcsClientConfiguration()V

    .line 498
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mDmaPackage:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->isGoogDmaPackageInuse(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsSecAndGoogDmaPackageSwitched:Z

    if-nez v1, :cond_2

    .line 499
    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mNewVersion:I

    const/16 v4, 0x3b

    if-ne v1, v4, :cond_0

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mBackupVersion:I

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->isActiveVersion(I)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 501
    iget v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mBackupVersion:I

    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setVersion(I)V

    .line 503
    :cond_1
    iget v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "curConfig: notify preConfig: isBackupVersionUpdateNeeded: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 505
    invoke-static {}, Lcom/sec/internal/google/SecImsNotifier;->getInstance()Lcom/sec/internal/google/SecImsNotifier;

    move-result-object v4

    iget v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    iget-object v6, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    invoke-virtual {v6, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->getProvisioningXml(Z)[B

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/internal/google/SecImsNotifier;->notifyRcsPreConfigurationReceived(I[B)V

    if-eqz v1, :cond_2

    .line 508
    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mNewVersion:I

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setVersion(I)V

    .line 511
    :cond_2
    iput-boolean v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mCurConfigStartForce:Z

    .line 512
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setCompleted(Z)V

    .line 513
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mOldVersion:I

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mNewVersion:I

    iget v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {p0, v5, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 514
    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "curConfig: isImsRegiNotifyReceived: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsImsRegiNotifyReceived:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 515
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsImsRegiNotifyReceived:Z

    if-eqz v0, :cond_3

    .line 516
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->sendRestartAutoConfigMsg()V

    goto :goto_1

    :cond_3
    const/16 v0, 0xc

    .line 518
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/32 v1, 0xea60

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_1
    return-void
.end method

.method private loadLocalConfig()Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 449
    :try_start_0
    new-instance v1, Lcom/google/gson/stream/JsonReader;

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {v1, v2}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/gson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 450
    :try_start_1
    new-instance v2, Lcom/google/gson/JsonParser;

    invoke-direct {v2}, Lcom/google/gson/JsonParser;-><init>()V

    .line 451
    invoke-virtual {v2, v1}, Lcom/google/gson/JsonParser;->parse(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;

    move-result-object v2

    .line 452
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    const-string v4, "base"

    invoke-virtual {v3, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    .line 453
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v4, v0

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 454
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_2

    aget-object v9, v6, v8

    const-string/jumbo v10, "vzw_up"

    .line 455
    invoke-static {v10, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 456
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gson/JsonElement;

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v4, :cond_0

    .line 464
    :cond_3
    :try_start_2
    invoke-virtual {v1}, Lcom/google/gson/stream/JsonReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/google/gson/JsonParseException; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v3, :cond_7

    if-nez v4, :cond_4

    goto :goto_4

    .line 474
    :cond_4
    new-instance p0, Ljava/util/TreeMap;

    invoke-direct {p0}, Ljava/util/TreeMap;-><init>()V

    .line 475
    invoke-virtual {v3}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string/jumbo v2, "root/"

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 476
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gson/JsonElement;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;->path(Lcom/google/gson/JsonElement;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_2

    .line 479
    :cond_5
    invoke-virtual {v4}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 480
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gson/JsonElement;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;->path(Lcom/google/gson/JsonElement;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_3

    :cond_6
    return-object p0

    .line 470
    :cond_7
    :goto_4
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v2, "loadLocalConfig: base/target object is empty"

    invoke-static {v1, p0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0

    :catchall_0
    move-exception v2

    .line 449
    :try_start_3
    invoke-virtual {v1}, Lcom/google/gson/stream/JsonReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/google/gson/JsonParseException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v1

    .line 465
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadLocalConfig: can not open/parse localconfig: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected checkAndKeepData(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 912
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 913
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    :cond_0
    const-string/jumbo v1, "root/token/token"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 914
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getValidity()I

    move-result v0

    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v2

    if-le v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getValidity()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 915
    :cond_1
    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string/jumbo v0, "root/vers/validity"

    .line 914
    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected checkAndKeepRcsClientConfiguration(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 930
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->getRcsVersion(Z)Ljava/lang/String;

    move-result-object v0

    .line 931
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_0

    move-object v0, v3

    :cond_0
    const-string v2, "info/rcs_version"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 932
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->getRcsProfile(Z)Ljava/lang/String;

    move-result-object v0

    .line 933
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v3

    :cond_1
    const-string v2, "info/rcs_profile"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 934
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->getClientVendor(Z)Ljava/lang/String;

    move-result-object v0

    .line 935
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, v3

    :cond_2
    const-string v2, "info/client_vendor"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 936
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->getClientVersion(Z)Ljava/lang/String;

    move-result-object p0

    .line 937
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    move-object v3, p0

    :goto_0
    const-string p0, "info/client_version"

    invoke-interface {p1, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected checkAndKeepRcsDisabledState(Ljava/util/Map;Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;",
            ")V"
        }
    .end annotation

    .line 919
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->convertRcsDisabledStateToValue(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p2, "root/services/rcsdisabledstate"

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected checkAndKeepSpgUrl(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 923
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->getSpgUrl()Ljava/lang/String;

    move-result-object v0

    .line 924
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_0

    move-object v0, v2

    :cond_0
    const-string/jumbo v1, "root/serviceproviderext/spgurl"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 925
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->getSpgParamsUrl()Ljava/lang/String;

    move-result-object p0

    .line 926
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, p0

    :goto_0
    const-string/jumbo p0, "root/serviceproviderext/params-url"

    invoke-interface {p1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected checkAndUpdateData(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 942
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getToken(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 943
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 944
    sget-object v1, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;->UPDATE_TOKEN:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setToken(Ljava/lang/String;Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;)V

    .line 946
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getValidity(Ljava/util/Map;)I

    move-result p1

    .line 947
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getValidity()I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 948
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setValidity(I)V

    :cond_1
    return-void
.end method

.method protected checkAndUpdateDmaPackage()V
    .locals 2

    .line 953
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mDmaPackage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {v0, v1}, Lcom/sec/internal/ims/util/ConfigUtil;->getDmaPackage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mDmaPackage:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mDmaPackage:Ljava/lang/String;

    return-void
.end method

.method protected checkAndUpdateDmaPackageInfo()V
    .locals 5

    .line 957
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {v0, v1}, Lcom/sec/internal/ims/util/ConfigUtil;->getDmaPackage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 958
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkAndUpdateDmaPackageInfo: dmaPackage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mDmaPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " cur dmaPackage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 959
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mDmaPackage:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v2, 0x1

    .line 963
    iput-boolean v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsDmaPackageChanged:Z

    .line 964
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mDmaPackage:Ljava/lang/String;

    invoke-virtual {p0, v3, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->isSecAndGoogDmaPackageSwitched(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsSecAndGoogDmaPackageSwitched:Z

    .line 965
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mDmaPackage:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->isNonSecGoogDmaPackageInuse(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->isDmaPackageInuse(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    iget-boolean v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mCurConfigStartForce:Z

    if-eqz v3, :cond_3

    :cond_2
    move v3, v2

    goto :goto_0

    :cond_3
    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mCurConfigStartForce:Z

    .line 966
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mDmaPackage:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->isNonSecGoogDmaPackageInuse(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->isDmaPackageInuse(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_4
    iget-boolean v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStartForce:Z

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    move v2, v4

    :cond_6
    :goto_1
    iput-boolean v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStartForce:Z

    .line 967
    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkAndUpdateDmaPackageInfo: dmaPackage is changed isSecAndGoogDmaPackageSwitched: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsSecAndGoogDmaPackageSwitched:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " curConfigStartForce: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mCurConfigStartForce:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " startForce: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStartForce:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 970
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mDmaPackage:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->isGoogDmaPackageInuse(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->isGoogDmaPackageInuse(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 971
    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v3, "checkAndUpdateDmaPackageInfo: dmaPackage is changed from goog to non-goog: notify autoConfigRemoved"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 972
    invoke-static {}, Lcom/sec/internal/google/SecImsNotifier;->getInstance()Lcom/sec/internal/google/SecImsNotifier;

    move-result-object v1

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-virtual {v1, v2}, Lcom/sec/internal/google/SecImsNotifier;->notifyRcsAutoConfigurationRemoved(I)V

    .line 975
    :cond_7
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->checkAndUpdateRcsClientConfiguration()V

    .line 976
    iput-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mDmaPackage:Ljava/lang/String;

    .line 977
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->cancelValidityTimer()V

    .line 978
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->stopGeneralErrorRetryTimer()V

    :cond_8
    :goto_2
    return-void
.end method

.method protected checkAndUpdateRcsClientConfiguration()V
    .locals 3

    .line 982
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mDmaPackage:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->isGoogDmaPackageInuse(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 983
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mCurRcsVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->getRcsVersion(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mCurRcsVersion:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mCurRcsVersion:Ljava/lang/String;

    .line 984
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mCurRcsProfile:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->getRcsProfile(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mCurRcsProfile:Ljava/lang/String;

    :goto_1
    iput-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mCurRcsProfile:Ljava/lang/String;

    .line 985
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mCurClientVendor:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->getClientVendor(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mCurClientVendor:Ljava/lang/String;

    :goto_2
    iput-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mCurClientVendor:Ljava/lang/String;

    .line 986
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mCurClientVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->getClientVersion(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mCurClientVersion:Ljava/lang/String;

    :goto_3
    iput-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mCurClientVersion:Ljava/lang/String;

    goto :goto_8

    .line 988
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mCurRcsVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mRcsVersion:Ljava/lang/String;

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mCurRcsVersion:Ljava/lang/String;

    :goto_4
    iput-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mCurRcsVersion:Ljava/lang/String;

    .line 989
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mCurRcsProfile:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string/jumbo v1, "rcs_up_profile"

    const-string v2, "UP_1.0"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 990
    :cond_6
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mCurRcsProfile:Ljava/lang/String;

    :goto_5
    iput-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mCurRcsProfile:Ljava/lang/String;

    .line 991
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mCurClientVendor:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "SEC"

    goto :goto_6

    :cond_7
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mCurClientVendor:Ljava/lang/String;

    :goto_6
    iput-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mCurClientVendor:Ljava/lang/String;

    .line 992
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mCurClientVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mClientPlatform:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mClientVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_8
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mCurClientVersion:Ljava/lang/String;

    :goto_7
    iput-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mCurClientVersion:Ljava/lang/String;

    :goto_8
    return-void
.end method

.method public cleanup()V
    .locals 4

    const/4 v0, 0x4

    .line 1138
    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mIsConfigOngoing:Z

    if-eqz v1, :cond_0

    .line 1139
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v3, "cleanup: waiting for the result of mobile connection"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1140
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1141
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1143
    :cond_0
    invoke-super {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->cleanup()V

    .line 1144
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->endMobileAutoConfig()V

    .line 1145
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v2, "cleanup: send cleanup msg"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0xe

    .line 1146
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected convertRcsDisabledStateToOpMode(Ljava/lang/String;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;
    .locals 1

    .line 881
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_RCS_BY_USER:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 882
    sget-object p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->TURNEDOFF_BY_RCS_DISABLED_STATE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    goto :goto_0

    .line 883
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->convertRcsDisabledStateToOpMode(Ljava/lang/String;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method protected convertRcsDisabledStateToValue(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)I
    .locals 1

    .line 888
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->TURNEDOFF_BY_RCS_DISABLED_STATE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    if-ne p1, v0, :cond_0

    .line 889
    sget-object p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_RCS_BY_USER:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result p0

    goto :goto_0

    .line 890
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->convertRcsDisabledStateToValue(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)I

    move-result p0

    :goto_0
    return p0
.end method

.method protected convertRcsStateWithSpecificParam(I)Ljava/lang/String;
    .locals 2

    .line 894
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mDmaPackage:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->isDmaPackageInuse(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsSecAndGoogDmaPackageSwitched:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 896
    :cond_0
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStartForce:Z

    if-eqz v0, :cond_1

    .line 897
    sget-object p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 899
    :cond_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->getRcsDisabledState()Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v0

    .line 900
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->isValidRcsDisabledState(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 901
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->convertRcsDisabledStateToValue(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 903
    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 895
    :cond_3
    :goto_0
    sget-object p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_RCS_BY_USER:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected displayRcsDisabledState(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)Ljava/lang/String;
    .locals 0

    .line 907
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->convertRcsDisabledStateToValue(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)I

    move-result p0

    .line 908
    sget-object p1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->NONE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result p1

    if-ne p0, p1, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method protected endAutoConfig()V
    .locals 11

    .line 724
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->endMobileAutoConfig()V

    .line 725
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersion()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mNewVersion:I

    .line 726
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->getRcsDisabledState()Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v0

    .line 727
    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mNewVersion:I

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->isNonActiveVersion(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mNewVersion:I

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->isActiveVersion(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->isValidRcsDisabledState(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mNewVersion:I

    const/16 v2, 0x65

    if-ne v1, v2, :cond_2

    .line 729
    :cond_1
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v3, "autoConfig: end: need localconfig info"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 730
    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mNewVersion:I

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->startLocalConfig(ILcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)V

    .line 731
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersion()I

    move-result v1

    iput v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mNewVersion:I

    .line 733
    :cond_2
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getParsedIntVersionBackup()I

    move-result v1

    iput v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mBackupVersion:I

    .line 734
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "autoConfig: end: oldVersion: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mOldVersion:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " newVersion: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mNewVersion:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " backupVersion: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mBackupVersion:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 736
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "OV:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mOldVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",NV:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mNewVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, 0x13020401

    invoke-static {v3, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 737
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": OV: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mOldVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " NV: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mNewVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->addEventLog(Ljava/lang/String;)V

    .line 739
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->getSpgUrl()Ljava/lang/String;

    move-result-object v2

    .line 740
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->getSpgParamsUrl()Ljava/lang/String;

    move-result-object v3

    .line 741
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 742
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    .line 743
    iget v6, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "autoConfig: end: rcsDisabledState: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->displayRcsDisabledState(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " isSpgUrlEmpty: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " isSpgParamsUrlEmpty: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v6, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 745
    iget v6, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "autoConfig: end: spgUrl: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " spgParamsUrl: "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v6, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 746
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "DV:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->displayRcsDisabledState(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",SU:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",SPU:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, 0x13020402

    invoke-static {v3, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 748
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": rcsDisabledState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->displayRcsDisabledState(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->addEventLog(Ljava/lang/String;)V

    .line 751
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->notifyAutoConfig()V

    const/4 v0, 0x0

    .line 752
    iput-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStartForce:Z

    .line 753
    iput-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsDmaPackageChanged:Z

    const/4 v2, 0x1

    .line 754
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setCompleted(Z)V

    .line 755
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getHandler()Landroid/os/Handler;

    move-result-object v3

    iget v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mOldVersion:I

    iget v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mNewVersion:I

    iget v6, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {p0, v7, v4, v5, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 756
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mDmaPackage:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->isDmaPackageInuse(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsSecAndGoogDmaPackageSwitched:Z

    if-eqz v3, :cond_3

    .line 757
    iput-boolean v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mCurConfigStartForce:Z

    .line 758
    iput-boolean v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStartForce:Z

    .line 759
    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v3, "autoConfig: end: need autoConfig to use the changed dmaPackage"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 760
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual {p0, v4, v2, v0, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 762
    :cond_3
    iput-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsSecAndGoogDmaPackageSwitched:Z

    return-void
.end method

.method protected endFailureAutoConfig()V
    .locals 6

    .line 766
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->endMobileAutoConfig()V

    .line 767
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersion()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mNewVersion:I

    .line 768
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->getRcsDisabledState()Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v0

    .line 769
    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mNewVersion:I

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->isNonActiveVersion(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mNewVersion:I

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->isActiveVersion(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->isValidRcsDisabledState(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mNewVersion:I

    const/16 v2, 0x65

    if-ne v1, v2, :cond_2

    .line 771
    :cond_1
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v3, "autoConfig: endfailure: need localconfig info"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 772
    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mNewVersion:I

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->startLocalConfig(ILcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)V

    .line 773
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersion()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mNewVersion:I

    .line 775
    :cond_2
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getParsedIntVersionBackup()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mBackupVersion:I

    .line 776
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "autoConfig: endfailure: oldVersion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mOldVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " newVersion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mNewVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " backupVersion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mBackupVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v1, 0x1

    .line 778
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setCompleted(Z)V

    .line 779
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mOldVersion:I

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mNewVersion:I

    iget v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {p0, v5, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 780
    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v2, "autoConfig: endfailure: need autoConfig next time with suitable network"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 781
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {p0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected endMobileAutoConfig()V
    .locals 3

    .line 679
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v2, "mobileAutoConfig: end using mobile network"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 680
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->unregisterMobileNetwork()V

    const/4 v0, 0x0

    .line 681
    iput-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsMobileConnectionAvailable:Z

    return-void
.end method

.method protected executeAutoConfig(Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;)V
    .locals 5

    .line 699
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "autoConfig: execute: next: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 702
    :try_start_0
    invoke-interface {p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;->run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object p1
    :try_end_0
    .catch Lcom/sec/internal/ims/config/exception/NoInitialDataException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 716
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "autoConfig: execute: exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v2, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 717
    iput-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mNextWorkflow:Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    .line 718
    new-instance p1, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Finish;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzw;)V

    goto :goto_0

    .line 704
    :catch_1
    iget p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mNoInitialDataRetryCount:I

    const/4 v1, 0x5

    if-ge p1, v1, :cond_0

    iget-boolean p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsMobileConnectionAvailable:Z

    if-eqz p1, :cond_0

    .line 705
    sget-object p1, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "autoConfig: execute: noInitialDataException: noInitialDataRetryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mNoInitialDataRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " wait 10 seconds and retry"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const-wide/16 v0, 0x2710

    .line 707
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->startGeneralErrorRetryTimer(J)V

    .line 708
    iget p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mNoInitialDataRetryCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mNoInitialDataRetryCount:I

    .line 709
    new-instance p1, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Initialize;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Initialize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzw;)V

    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mNextWorkflow:Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    goto :goto_1

    .line 711
    :cond_0
    sget-object p1, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v2, "autoConfig: execute: noInitialDataException: no need to retry anymore"

    invoke-static {p1, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 712
    iput-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mNextWorkflow:Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    .line 714
    :goto_1
    new-instance p1, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Finish;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzw;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected executeCurConfig()V
    .locals 4

    .line 398
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersion()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mOldVersion:I

    .line 399
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->getRcsDisabledState()Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v0

    .line 400
    iget-boolean v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mCurConfigStartForce:Z

    if-eqz v1, :cond_0

    .line 401
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v2, "curConfig: need force localconfig info"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 402
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->NONE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->startLocalConfig(ILcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)V

    goto :goto_0

    .line 403
    :cond_0
    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mOldVersion:I

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->isNonActiveVersion(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mOldVersion:I

    .line 404
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->isActiveVersion(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->isValidRcsDisabledState(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mOldVersion:I

    const/16 v2, 0x65

    if-ne v1, v2, :cond_3

    .line 406
    :cond_2
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v3, "curConfig: need localconfig info"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 407
    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mOldVersion:I

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->startLocalConfig(ILcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected getGeneralErrorRetryIntentReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    .line 551
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$3;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$3;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzw;)V

    return-object v0
.end method

.method protected getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;
    .locals 2

    .line 1151
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mHttp:Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->close()Z

    .line 1152
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mHttp:Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->setHeaders(Ljava/util/Map;)V

    .line 1153
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mHttp:Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpParams()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->setParams(Ljava/util/Map;)V

    .line 1154
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mHttp:Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->setContext(Landroid/content/Context;)V

    .line 1155
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mHttp:Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mNetwork:Landroid/net/Network;

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->setNetwork(Landroid/net/Network;)V

    .line 1156
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mHttp:Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->open(Ljava/lang/String;)Z

    .line 1157
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mHttp:Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->request()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v0

    .line 1158
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mHttp:Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->close()Z

    return-object v0
.end method

.method getInputStream()Ljava/io/InputStream;
    .locals 4

    .line 487
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    .line 488
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v2, "localconfig"

    const-string/jumbo v3, "raw"

    invoke-virtual {v1, v2, v3, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 487
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method protected getMobileStateCallback()Landroid/net/ConnectivityManager$NetworkCallback;
    .locals 1

    .line 175
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$2;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$2;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzw;)V

    return-object v0
.end method

.method protected getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected getRcsDisabledState()Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;
    .locals 3

    const-string/jumbo v0, "root/services/rcsdisabledstate"

    const/4 v1, 0x0

    const-string/jumbo v2, "storage_data"

    .line 858
    invoke-super {p0, v2, v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->getRcsDisabledState(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object p0

    return-object p0
.end method

.method protected getRcsDisabledState(Ljava/util/Map;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;"
        }
    .end annotation

    const-string/jumbo v0, "parsedxml_data"

    const-string/jumbo v1, "root/services/rcsdisabledstate"

    .line 863
    invoke-super {p0, v0, v1, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->getRcsDisabledState(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object p0

    return-object p0
.end method

.method protected getRemainingValidityTime(J)I
    .locals 4

    .line 631
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long v0, p1, v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 632
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "autoConfig: getRemainingValidityTime: nextAutoconfigTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " remainingValidityTime: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v0
.end method

.method protected getSpgParamsUrl()Ljava/lang/String;
    .locals 1

    .line 876
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    const-string/jumbo v0, "root/serviceproviderext/params-url"

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getSpgUrl()Ljava/lang/String;
    .locals 1

    .line 872
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    const-string/jumbo v0, "root/serviceproviderext/spgurl"

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    .line 218
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage: msg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 219
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_d

    if-eq v1, v3, :cond_e

    const/4 v4, 0x2

    if-eq v1, v4, :cond_b

    const/4 v5, 0x3

    const/4 v6, 0x4

    if-eq v1, v5, :cond_8

    if-eq v1, v6, :cond_6

    const/4 v7, 0x5

    if-eq v1, v7, :cond_5

    packed-switch v1, :pswitch_data_0

    .line 386
    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v2, "handleMessage: unknown msg"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 387
    invoke-super {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_2

    .line 363
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 364
    iget p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string p1, "handleMessage: client info is empty"

    invoke-static {v0, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_2

    .line 368
    :cond_0
    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v5, "handleMessage: client info is changed"

    invoke-static {v0, v1, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 369
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/PowerController;->lock()V

    .line 370
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    .line 371
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mDmaPackage:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->isGoogDmaPackageInuse(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsSecAndGoogDmaPackageSwitched:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    const-string/jumbo v5, "rcsVersion"

    .line 372
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "rcsProfile"

    .line 373
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "clientVendor"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "clientVersion"

    .line 374
    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 372
    invoke-virtual {v1, v5, v6, v7, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->setRcsClientConfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 375
    iget p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v1, "handleMessage: client info is changed: need autoConfig to use the changed client info"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 377
    iput-boolean v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStartForce:Z

    .line 378
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const/4 v1, 0x0

    .line 379
    invoke-virtual {p0, v4, v0, v2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    .line 378
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 381
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/PowerController;->release()V

    goto/16 :goto_2

    .line 355
    :pswitch_1
    iget p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v1, "handleMessage: ads is changed"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 356
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {p1}, Lcom/sec/internal/ims/config/PowerController;->lock()V

    .line 357
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 358
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/PowerController;->release()V

    goto/16 :goto_2

    .line 342
    :pswitch_2
    iget p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v1, "handleMessage: cleanup"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 343
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {p1}, Lcom/sec/internal/ims/config/PowerController;->lock()V

    .line 344
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->cancelValidityTimer()V

    .line 345
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->stopGeneralErrorRetryTimer()V

    .line 346
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->unregisterImsRegistrationListener()V

    .line 347
    invoke-virtual {p0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 348
    invoke-virtual {p0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 349
    iput-boolean v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mIsConfigOngoing:Z

    .line 350
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/PowerController;->release()V

    goto/16 :goto_2

    :pswitch_3
    const/16 p1, 0xd

    .line 326
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 327
    iget-boolean p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mIsConfigOngoing:Z

    if-eqz p1, :cond_2

    .line 328
    iget p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string p1, "autoConfig: generalErrorRetryTimer is expired: ongoing"

    invoke-static {v0, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_2

    .line 331
    :cond_2
    iget p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v1, "autoConfig: generalErrorRetryTimer is expired"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 332
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {p1}, Lcom/sec/internal/ims/config/PowerController;->lock()V

    .line 333
    iget-boolean p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsGeneralErrorRetryTimerRunning:Z

    if-eqz p1, :cond_3

    .line 334
    iput-boolean v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mIsConfigOngoing:Z

    .line 335
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->startMobileAutoConfig()V

    .line 337
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/PowerController;->release()V

    goto/16 :goto_2

    .line 317
    :pswitch_4
    iget p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v1, "handleMessage: ims regi status is changed"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 318
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {p1}, Lcom/sec/internal/ims/config/PowerController;->lock()V

    .line 319
    iput-boolean v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsImsRegiNotifyReceived:Z

    .line 320
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->sendRestartAutoConfigMsg()V

    .line 321
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/PowerController;->release()V

    goto/16 :goto_2

    .line 221
    :pswitch_5
    iget-boolean p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mIsConfigOngoing:Z

    if-eqz p1, :cond_4

    .line 222
    iget p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string p1, "curConfig: ongoing"

    invoke-static {v0, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_2

    .line 225
    :cond_4
    iget p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "curConfig: start curConfig with curConfigStartForce: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mCurConfigStartForce:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 226
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {p1}, Lcom/sec/internal/ims/config/PowerController;->lock()V

    .line 227
    iput-boolean v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mIsConfigOngoing:Z

    .line 228
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->executeCurConfig()V

    .line 229
    invoke-direct {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->endCurConfig()V

    .line 230
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/PowerController;->release()V

    goto/16 :goto_2

    .line 308
    :cond_5
    iget p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v1, "handleMessage: dmaPackage is changed"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 309
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {p1}, Lcom/sec/internal/ims/config/PowerController;->lock()V

    .line 310
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->checkAndUpdateDmaPackageInfo()V

    .line 311
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {p1}, Lcom/sec/internal/ims/config/PowerController;->release()V

    .line 312
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    iget p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-interface {p1, p0}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->clearWorkflowByDmaChange(I)Z

    goto/16 :goto_2

    .line 279
    :cond_6
    invoke-virtual {p0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 280
    iget-boolean p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsMobileAutoConfigOngoing:Z

    if-eqz p1, :cond_7

    .line 281
    iget p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string p1, "autoConfig: mobile connection is failure: ongoing"

    invoke-static {v0, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_2

    .line 284
    :cond_7
    iget p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v1, "autoConfig: mobile connection is failure"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 285
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {p1}, Lcom/sec/internal/ims/config/PowerController;->lock()V

    .line 286
    iput-boolean v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsMobileAutoConfigOngoing:Z

    .line 287
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->endFailureAutoConfig()V

    .line 288
    iput-boolean v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mIsConfigOngoing:Z

    .line 289
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/PowerController;->release()V

    goto/16 :goto_2

    .line 258
    :cond_8
    invoke-virtual {p0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 259
    iget-boolean p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsMobileAutoConfigOngoing:Z

    if-eqz p1, :cond_9

    .line 260
    iget p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string p1, "autoConfig: mobile connection is successful: ongoing"

    invoke-static {v0, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_2

    .line 263
    :cond_9
    iget p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v1, "autoConfig: mobile connection is successful"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 264
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {p1}, Lcom/sec/internal/ims/config/PowerController;->lock()V

    .line 265
    iput-boolean v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsMobileAutoConfigOngoing:Z

    .line 266
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mNextWorkflow:Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->executeAutoConfig(Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;)V

    .line 267
    iget-boolean p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsGeneralErrorRetryTimerRunning:Z

    if-eqz p1, :cond_a

    .line 268
    iget p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v1, "autoConfig: mobile connection is successful: generalErrorRetryTimer is running"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 269
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->endMobileAutoConfig()V

    goto :goto_0

    .line 271
    :cond_a
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->endAutoConfig()V

    .line 273
    :goto_0
    iput-boolean v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mIsConfigOngoing:Z

    .line 274
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/PowerController;->release()V

    goto/16 :goto_2

    .line 294
    :cond_b
    iget p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v1, "handleMessage: config info is cleared"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 295
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {p1}, Lcom/sec/internal/ims/config/PowerController;->lock()V

    .line 296
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->clearStorage()V

    .line 297
    iput-boolean v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mCurConfigStartForce:Z

    .line 298
    iput-boolean v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStartForce:Z

    .line 299
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mDmaPackage:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->isGoogDmaPackageInuse(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 300
    iget p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v1, "handleMessage: config info is cleared: notify autoConfigRemoved"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 301
    invoke-static {}, Lcom/sec/internal/google/SecImsNotifier;->getInstance()Lcom/sec/internal/google/SecImsNotifier;

    move-result-object p1

    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-virtual {p1, v0}, Lcom/sec/internal/google/SecImsNotifier;->notifyRcsAutoConfigurationRemoved(I)V

    .line 303
    :cond_c
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/PowerController;->release()V

    goto :goto_2

    .line 235
    :cond_d
    iput-boolean v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStartForce:Z

    .line 238
    :cond_e
    iget-boolean p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mIsConfigOngoing:Z

    if-eqz p1, :cond_f

    .line 239
    iget p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string p1, "autoConfig: ongoing"

    invoke-static {v0, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_2

    .line 242
    :cond_f
    iget p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "autoConfig: start autoConfig with startForce: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStartForce:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 243
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {p1}, Lcom/sec/internal/ims/config/PowerController;->lock()V

    .line 244
    iput-boolean v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mIsConfigOngoing:Z

    .line 245
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->scheduleAutoconfig()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 246
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->initAutoConfig()V

    .line 247
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->startMobileAutoConfig()V

    goto :goto_1

    .line 249
    :cond_10
    iget p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v1, "autoConfig: schedule: false"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 250
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->endAutoConfig()V

    .line 251
    iput-boolean v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mIsConfigOngoing:Z

    .line 253
    :goto_1
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/PowerController;->release()V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected handleResponseForUp(Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/config/exception/InvalidHeaderException;,
            Lcom/sec/internal/ims/config/exception/UnknownStatusException;
        }
    .end annotation

    .line 1000
    sget-object p1, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleResponseForUp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getLastErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " response"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1001
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getLastErrorCode()I

    move-result v0

    const-string v1, " retryTime: "

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_5

    const/16 v5, 0x193

    if-eq v0, v5, :cond_3

    const/16 v5, 0x1f4

    if-eq v0, v5, :cond_4

    const/16 v5, 0x1f7

    if-eq v0, v5, :cond_2

    const/16 v5, 0x1ff

    if-ne v0, v5, :cond_1

    .line 1022
    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->m511ResponseRetryCount:I

    if-ge v0, v2, :cond_0

    .line 1023
    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleResponseForUp: 511 response: retryCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->m511ResponseRetryCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->GENERAL_ERROR_RETRY_TIME:[J

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->m511ResponseRetryCount:I

    aget-wide v5, v1, v3

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1025
    iget p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->m511ResponseRetryCount:I

    aget-wide v0, v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->startGeneralErrorRetryTimer(J)V

    .line 1026
    iput-object p2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mNextWorkflow:Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    .line 1027
    iget p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->m511ResponseRetryCount:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->m511ResponseRetryCount:I

    goto :goto_0

    .line 1029
    :cond_0
    iget p2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v0, "handleResponseForUp: 511 response: no need to retry anymore"

    invoke-static {p1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1030
    iput-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mNextWorkflow:Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    .line 1031
    iput-boolean v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsGeneralErrorRetryFailed:Z

    .line 1032
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->cancelValidityTimer()V

    .line 1034
    :goto_0
    sget-object p1, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;->INVALID_TOKEN:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

    const-string p2, ""

    invoke-virtual {p0, p2, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setToken(Ljava/lang/String;Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;)V

    .line 1035
    iput-object p2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mAppToken:Ljava/lang/String;

    goto :goto_1

    .line 1057
    :cond_1
    new-instance p0, Lcom/sec/internal/ims/config/exception/UnknownStatusException;

    const-string p1, "handleResponseForUp: unknown https status code"

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/exception/UnknownStatusException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1015
    :cond_2
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getretryAfterTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->startGeneralErrorRetryTimer(J)V

    .line 1016
    iput-object p2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mNextWorkflow:Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    goto :goto_1

    .line 1003
    :cond_3
    sget-object p1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {p0, p1, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->setOpMode(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;Ljava/util/Map;)V

    .line 1006
    :cond_4
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->stopGeneralErrorRetryTimer()V

    .line 1007
    iput-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mNextWorkflow:Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    .line 1008
    iput-boolean v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsGeneralErrorRetryFailed:Z

    .line 1009
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->cancelValidityTimer()V

    goto :goto_1

    .line 1041
    :cond_5
    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mNoResponseRetryCount:I

    if-ge v0, v2, :cond_6

    .line 1042
    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleResponseForUp: no response: retryCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mNoResponseRetryCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->GENERAL_ERROR_RETRY_TIME:[J

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mNoResponseRetryCount:I

    aget-wide v5, v1, v3

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1044
    iget p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mNoResponseRetryCount:I

    aget-wide v0, v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->startGeneralErrorRetryTimer(J)V

    .line 1045
    iput-object p2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mNextWorkflow:Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    .line 1046
    iget p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mNoResponseRetryCount:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mNoResponseRetryCount:I

    goto :goto_1

    .line 1048
    :cond_6
    iget p2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v0, "handleResponseForUp: no response: no need to retry anymore for no response"

    invoke-static {p1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1049
    iput-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mNextWorkflow:Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    .line 1050
    iput-boolean v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsGeneralErrorRetryFailed:Z

    .line 1051
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->cancelValidityTimer()V

    :goto_1
    return-object p3
.end method

.method protected initAutoConfig()V
    .locals 1

    .line 651
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Initialize;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Initialize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzw;)V

    iput-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mNextWorkflow:Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    const/4 v0, 0x0

    .line 652
    iput v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mHttpResponse:I

    .line 653
    iput v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mNoInitialDataRetryCount:I

    .line 654
    iput v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mNoAppTokenRetryCount:I

    .line 655
    iput v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->m511ResponseRetryCount:I

    .line 656
    iput v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mNoResponseRetryCount:I

    .line 657
    iput v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mRcsDisabledStateRetryCount:I

    .line 658
    iput v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mNoRemainingValidityRetryCount:I

    const-string v0, ""

    .line 659
    iput-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mAppToken:Ljava/lang/String;

    const/4 v0, 0x0

    .line 660
    iput-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mNetwork:Landroid/net/Network;

    return-void
.end method

.method protected isActiveVersion(I)Z
    .locals 0

    .line 811
    sget-object p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->ACTIVE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result p0

    if-lt p1, p0, :cond_0

    const/16 p0, 0x3b

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isDmaPackageInuse(Ljava/lang/String;)Z
    .locals 1

    .line 819
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->isSecDmaPackageInuse(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->isGoogDmaPackageInuse(Ljava/lang/String;)Z

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

.method protected isGoogDmaPackageInuse(Ljava/lang/String;)Z
    .locals 3

    .line 827
    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v1, "goog_message_app_package"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 828
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {v1, p0}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->isImsSingleRegiRequired(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 829
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isNonActiveVersion(I)Z
    .locals 0

    .line 815
    sget-object p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result p0

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isNonSecGoogDmaPackageInuse(Ljava/lang/String;)Z
    .locals 2

    .line 838
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {v0, v1}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->isImsSingleRegiRequired(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->isDmaPackageInuse(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isSecAndGoogDmaPackageSwitched(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 833
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {v0, v1}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->isImsSingleRegiRequired(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->isDmaPackageInuse(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->isDmaPackageInuse(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 834
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isSecDmaPackageInuse(Ljava/lang/String;)Z
    .locals 1

    .line 823
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/internal/helper/os/PackageUtils;->getMsgAppPkgName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isValidRcsDisabledState(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)Z
    .locals 1

    .line 853
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->TURNEDOFF_BY_RCS_DISABLED_STATE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->isValidRcsDisabledState(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)Z

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

.method protected notifyAutoConfig()V
    .locals 5

    .line 785
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mDmaPackage:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->isGoogDmaPackageInuse(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsSecAndGoogDmaPackageSwitched:Z

    if-nez v0, :cond_3

    .line 786
    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mLastErrorCode:I

    const/16 v1, 0x3db

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    .line 787
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v2, "autoConfig: notify: autoConfigError"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 788
    invoke-static {}, Lcom/sec/internal/google/SecImsNotifier;->getInstance()Lcom/sec/internal/google/SecImsNotifier;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mLastErrorCode:I

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mLastErrorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0}, Lcom/sec/internal/google/SecImsNotifier;->notifyRcsAutoConfigurationErrorReceived(IILjava/lang/String;)V

    return-void

    .line 791
    :cond_0
    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mNewVersion:I

    const/16 v1, 0x3b

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mBackupVersion:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->isActiveVersion(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    .line 793
    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mBackupVersion:I

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setVersion(I)V

    .line 795
    :cond_2
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v4, "autoConfig: notify: autoConfigReceived"

    invoke-static {v1, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 797
    invoke-static {}, Lcom/sec/internal/google/SecImsNotifier;->getInstance()Lcom/sec/internal/google/SecImsNotifier;

    move-result-object v1

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    invoke-virtual {v4, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->getProvisioningXml(Z)[B

    move-result-object v4

    invoke-virtual {v1, v3, v4, v2}, Lcom/sec/internal/google/SecImsNotifier;->notifyRcsAutoConfigurationReceived(I[BZ)V

    if-eqz v0, :cond_4

    .line 800
    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mNewVersion:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setVersion(I)V

    goto :goto_1

    .line 802
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mDmaPackage:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->isSecDmaPackageInuse(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsSecAndGoogDmaPackageSwitched:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mCurRcsProfile:Ljava/lang/String;

    .line 803
    invoke-static {v0}, Lcom/sec/ims/settings/ImsProfile;->isRcsUp2Profile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 804
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v2, "autoConfig: notify: autoConfigCompleted"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 805
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mTelephonyAdapter:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mNewVersion:I

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->isActiveVersion(I)Z

    move-result p0

    const/16 v1, 0x34

    invoke-interface {v0, v1, p0}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->notifyAutoConfigurationListener(IZ)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onADSChanged()V
    .locals 4

    const/4 v0, 0x4

    .line 686
    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mIsConfigOngoing:Z

    if-eqz v1, :cond_0

    .line 687
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v3, "onADSChanged: waiting for the result of mobile connection"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 688
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 689
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 691
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v2, "onADSChanged: send ads changed msg"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 692
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mTelephonyAdapter:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->onADSChanged()V

    .line 693
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mHttp:Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->close()Z

    .line 694
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->endMobileAutoConfig()V

    const/16 v0, 0xf

    .line 695
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected registerImsRegistrationListener()V
    .locals 2

    .line 128
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->unregisterImsRegistrationListener()V

    .line 129
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$1;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzw;)V

    iput-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mImsRegistrationListener:Lcom/sec/ims/IImsRegistrationListener;

    .line 139
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-interface {v1, v0, p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->registerListener(Lcom/sec/ims/IImsRegistrationListener;I)V

    return-void
.end method

.method protected registerMobileNetwork()Z
    .locals 5

    const/4 v0, 0x0

    .line 152
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->unregisterMobileNetwork()V

    .line 153
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getSubId()I

    move-result v1

    iput v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mAdsSubId:I

    .line 154
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 155
    invoke-virtual {v1, v0}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    .line 156
    invoke-virtual {v1, v0}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mAdsSubId:I

    .line 157
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Ljava/lang/String;)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    .line 158
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mNetworkRequest:Landroid/net/NetworkRequest;

    .line 159
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->getMobileStateCallback()Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mMobileStateCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 160
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mNetworkRequest:Landroid/net/NetworkRequest;

    invoke-virtual {v2, v3, v1}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 161
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerMobileNetwork: registered with ads subId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mAdsSubId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " instead of this subId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    .line 162
    invoke-static {v4}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 161
    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception v1

    .line 167
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerMobileNetwork: can not register: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v0
.end method

.method protected scheduleAutoconfig()Z
    .locals 8

    .line 585
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersion()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mOldVersion:I

    .line 586
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getParsedIntVersionBackup()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mBackupVersion:I

    .line 587
    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mOldVersion:I

    const/16 v2, 0x3b

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mCurVersion:I

    .line 588
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->checkAndUpdateDmaPackage()V

    .line 589
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->checkAndUpdateRcsClientConfiguration()V

    .line 590
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->checkAndUpdateDmaPackageInfo()V

    .line 591
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "autoConfig: schedule: oldVersion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mOldVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " curVersion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mCurVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " backupVersion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mBackupVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 593
    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->needScheduleAutoconfig(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 595
    :cond_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getLastSwVersion()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/sec/internal/constants/ims/config/ConfigConstants$BUILD;->TERMINAL_SW_VERSION:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v4, 0x1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mDmaPackage:Ljava/lang/String;

    .line 596
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->isDmaPackageInuse(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 597
    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v2, "autoConfig: schedule: software version is changed: force autoConfig"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 598
    iput-boolean v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStartForce:Z

    .line 599
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setLastSwVersion(Ljava/lang/String;)V

    .line 600
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->cancelValidityTimer()V

    return v4

    .line 602
    :cond_2
    iget-boolean v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStartForce:Z

    if-eqz v1, :cond_3

    .line 603
    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v2, "autoConfig: schedule: startForce is true: force autoConfig"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 604
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->cancelValidityTimer()V

    return v4

    .line 606
    :cond_3
    iget-boolean v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsDmaPackageChanged:Z

    if-eqz v1, :cond_4

    .line 607
    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mCurVersion:I

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->isNonActiveVersion(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStartForce:Z

    .line 608
    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "autoConfig: schedule: dmaPackage is changed: need autoConfig with startForce: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStartForce:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v4

    .line 610
    :cond_4
    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mCurVersion:I

    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_PERMANENTLY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v3}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v3

    if-eq v1, v3, :cond_b

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mCurVersion:I

    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v3}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v3

    if-ne v1, v3, :cond_5

    goto :goto_1

    .line 613
    :cond_5
    iget-boolean v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsGeneralErrorRetryFailed:Z

    if-eqz v1, :cond_6

    .line 614
    iget p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v1, "autoConfig: schedule: generalErrorRetry is failed: skip autoConfig"

    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    .line 617
    :cond_6
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getNextAutoconfigTime()J

    move-result-wide v5

    .line 618
    invoke-virtual {p0, v5, v6}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->getRemainingValidityTime(J)I

    move-result v1

    .line 619
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v3}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v7

    if-gt v1, v7, :cond_9

    .line 620
    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mCurVersion:I

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->isNonActiveVersion(I)Z

    move-result v1

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStartForce:Z

    if-eqz v1, :cond_8

    :cond_7
    move v2, v4

    :cond_8
    iput-boolean v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStartForce:Z

    .line 621
    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "autoConfig: schedule: validity is expired: need autoConfig with startForce: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStartForce:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v4

    .line 623
    :cond_9
    invoke-virtual {v3}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v3

    int-to-long v3, v3

    cmp-long v3, v5, v3

    if-lez v3, :cond_a

    .line 624
    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v4, "autoConfig: schedule: validity is not expired: skip autoConfig"

    invoke-static {v0, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 625
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->setValidityTimer(I)V

    :cond_a
    return v2

    .line 611
    :cond_b
    :goto_1
    iget p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v1, "autoConfig: schedule: disable_permanently/disable opMode: skip autoConfig"

    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v2
.end method

.method protected sendRestartAutoConfigMsg()V
    .locals 5

    .line 523
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "curConfig: send restart autoConfig msg: isConfigOngoing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mIsConfigOngoing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 524
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mIsConfigOngoing:Z

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const/4 v2, 0x0

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v1, v4, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 526
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->unregisterImsRegistrationListener()V

    .line 527
    iput-boolean v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mIsConfigOngoing:Z

    :cond_0
    return-void
.end method

.method protected setHttpParameter()V
    .locals 8

    .line 1163
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStartForce:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mCurVersion:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->isNonActiveVersion(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mCurVersion:I

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_1

    .line 1164
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    :cond_1
    iput v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mCurVersion:I

    .line 1165
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setHttpParameter: curVersion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mCurVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " startForce: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStartForce:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1166
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mCurVersion:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "vers"

    invoke-virtual {v1, v3, v2}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mTelephonyAdapter:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getImsi()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IMSI"

    invoke-virtual {v1, v3, v2}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1168
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    const-string/jumbo v2, "terminal_vendor"

    const-string v3, "SEC"

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1169
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    const-string/jumbo v2, "terminal_model"

    sget-object v4, Lcom/sec/internal/constants/ims/config/ConfigConstants$BUILD;->TERMINAL_MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1170
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    iget v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {v4}, Lcom/sec/internal/ims/util/ConfigUtil;->getModelName(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/ims/config/ConfigConstants$PVALUE;->TERMINAL_SW_VERSION:Ljava/lang/String;

    const/16 v6, 0x8

    const/4 v7, 0x1

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->getModelInfoFromBuildVersion(Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "terminal_sw_version"

    invoke-virtual {v1, v4, v2}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mTelephonyAdapter:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getImei()Ljava/lang/String;

    move-result-object v2

    const-string v4, "IMEI"

    invoke-virtual {v1, v4, v2}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mTelephonyAdapter:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getMsisdn(I)Ljava/lang/String;

    move-result-object v1

    .line 1174
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1175
    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setHttpParameter: use msisdn from telephony with current subId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {v5}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1176
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    invoke-virtual {v4, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->encodeRFC3986(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "msisdn"

    invoke-virtual {v2, v4, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1178
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mTelephonyAdapter:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getSmsDestPort()Ljava/lang/String;

    move-result-object v2

    const-string v4, "SMS_port"

    invoke-virtual {v1, v4, v2}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getToken()Ljava/lang/String;

    move-result-object v1

    .line 1181
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string/jumbo v4, "token"

    if-eqz v2, :cond_3

    .line 1182
    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string/jumbo v2, "setHttpParameter: rcstoken is empty so use apptoken"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1183
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mAppToken:Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1185
    :cond_3
    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string/jumbo v5, "setHttpParameter: rcstoken is existed so use rcstoken"

    invoke-static {v0, v2, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1186
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v2, v4, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    :goto_0
    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mCurVersion:I

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->convertRcsStateWithSpecificParam(I)Ljava/lang/String;

    move-result-object v1

    .line 1190
    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setHttpParameter: rcsState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1191
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    const-string/jumbo v4, "rcs_state"

    invoke-virtual {v2, v4, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1192
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mDmaPackage:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->isDmaPackageInuse(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsSecAndGoogDmaPackageSwitched:Z

    if-nez v1, :cond_8

    .line 1193
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mDmaPackage:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->isSecDmaPackageInuse(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1194
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mRcsVersion:Ljava/lang/String;

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    invoke-virtual {v2, v7}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->getRcsVersion(Z)Ljava/lang/String;

    move-result-object v2

    :goto_1
    iput-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mCurRcsVersion:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 1195
    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string/jumbo v4, "rcs_up_profile"

    const-string v5, "UP_1.0"

    invoke-static {v2, v4, v5}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 1197
    :cond_5
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    invoke-virtual {v2, v7}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->getRcsProfile(Z)Ljava/lang/String;

    move-result-object v2

    :goto_2
    iput-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mCurRcsProfile:Ljava/lang/String;

    if-eqz v1, :cond_6

    goto :goto_3

    .line 1199
    :cond_6
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    invoke-virtual {v2, v7}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->getClientVendor(Z)Ljava/lang/String;

    move-result-object v3

    :goto_3
    iput-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mCurClientVendor:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 1200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mClientPlatform:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mClientVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 1201
    :cond_7
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    invoke-virtual {v1, v7}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->getClientVersion(Z)Ljava/lang/String;

    move-result-object v1

    :goto_4
    iput-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mCurClientVersion:Ljava/lang/String;

    .line 1203
    :cond_8
    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setHttpParameter: curRcsVersion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mCurRcsVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " curRcsProfile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mCurRcsProfile:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " curClientVendor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mCurClientVendor:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " curClientVersion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mCurClientVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1205
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    const-string/jumbo v2, "rcs_version"

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mCurRcsVersion:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    const-string/jumbo v2, "rcs_profile"

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mCurRcsProfile:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    const-string v2, "client_vendor"

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mCurClientVendor:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    const-string v2, "client_version"

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mCurClientVersion:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mCurRcsProfile:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/ims/settings/ImsProfile;->isRcsUp2Profile(Ljava/lang/String;)Z

    move-result v1

    const-string/jumbo v2, "provisioning_version"

    if-eqz v1, :cond_9

    .line 1211
    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string/jumbo v3, "setHttpParameter: app: ap2002 provisioningVersion: 5.0"

    invoke-static {v0, v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1213
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    const-string v1, "app"

    const-string v3, "ap2002"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    const-string v1, "5.0"

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 1216
    :cond_9
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    const-string v1, "2.0"

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1218
    :goto_5
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mDmaPackage:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->isDmaPackageInuse(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-boolean p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsSecAndGoogDmaPackageSwitched:Z

    if-nez p0, :cond_a

    const-string p0, "1"

    goto :goto_6

    :cond_a
    const-string p0, "2"

    :goto_6
    const-string v1, "default_sms_app"

    invoke-virtual {v0, v1, p0}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected setOpMode(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1065
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setOpMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1066
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$4;->$SwitchMap$com$sec$internal$ims$config$workflow$WorkflowBase$OpMode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1131
    iget p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string/jumbo p1, "setOpMode: unknown opMode"

    invoke-static {v0, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_3

    :pswitch_0
    if-nez p2, :cond_2

    .line 1108
    iget p2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string/jumbo v1, "setOpMode: data is empty"

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1109
    iget-object p2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->getRcsVersion(Z)Ljava/lang/String;

    move-result-object p2

    .line 1110
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->getRcsProfile(Z)Ljava/lang/String;

    move-result-object v1

    .line 1111
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->getClientVendor(Z)Ljava/lang/String;

    move-result-object v2

    .line 1112
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    invoke-virtual {v3, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->getClientVersion(Z)Ljava/lang/String;

    move-result-object v0

    .line 1113
    sget-object v3, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;->DISABLE_RCS:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->clearStorage(Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;)V

    .line 1114
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    if-eq p1, v3, :cond_1

    sget-object v4, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_PERMANENTLY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    if-eq p1, v4, :cond_1

    sget-object v4, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    if-eq p1, v4, :cond_1

    sget-object v4, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DORMANT:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    if-ne p1, v4, :cond_0

    goto :goto_0

    .line 1117
    :cond_0
    invoke-virtual {v3}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setVersion(I)V

    .line 1118
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->convertRcsDisabledStateToValue(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->setRcsDisabledState(Ljava/lang/String;)V

    goto :goto_1

    .line 1115
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setVersion(I)V

    .line 1120
    :goto_1
    invoke-virtual {v3}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setValidity(I)V

    .line 1121
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    invoke-virtual {p0, p2, v1, v2, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->setRcsClientConfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 1124
    :cond_2
    iget p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string/jumbo v1, "setOpMode: update the new config info"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1125
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->checkAndKeepRcsClientConfiguration(Ljava/util/Map;)V

    .line 1126
    sget-object p1, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;->DISABLE_RCS:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->clearStorage(Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;)V

    .line 1127
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    invoke-interface {p0, p2}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->writeAll(Ljava/util/Map;)Z

    goto :goto_3

    :pswitch_1
    if-nez p2, :cond_3

    .line 1069
    iget p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string/jumbo p1, "setOpMode: active: data is empty"

    invoke-static {v0, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_3

    .line 1072
    :cond_3
    iget p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setOpMode: active: data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 1073
    iget p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mCurVersion:I

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersion(Ljava/util/Map;)I

    move-result v1

    if-le p1, v1, :cond_4

    iget-boolean p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStartForce:Z

    if-eqz p1, :cond_5

    :cond_4
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mDmaPackage:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->isDmaPackageInuse(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsSecAndGoogDmaPackageSwitched:Z

    if-nez p1, :cond_5

    .line 1075
    iget p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string/jumbo v1, "setOpMode: active: update the new config info"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1076
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->checkAndKeepRcsClientConfiguration(Ljava/util/Map;)V

    .line 1077
    sget-object p1, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;->UPDATE_REMOTE_CONFIG:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->clearStorage(Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;)V

    .line 1078
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    invoke-interface {p1, p2}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->writeAll(Ljava/util/Map;)Z

    .line 1079
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersion(Ljava/util/Map;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setVersionBackup(I)V

    goto :goto_2

    .line 1081
    :cond_5
    iget p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string/jumbo v1, "setOpMode: active: maintain the previous config info"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1082
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->checkAndUpdateData(Ljava/util/Map;)V

    .line 1085
    :goto_2
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getValidity()I

    move-result p1

    .line 1086
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setNextAutoconfigTimeAfter(I)V

    .line 1087
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->setValidityTimer(I)V

    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setRcsClientConfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 843
    new-instance p5, Landroid/os/Bundle;

    invoke-direct {p5}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "rcsVersion"

    .line 844
    invoke-virtual {p5, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "rcsProfile"

    .line 845
    invoke-virtual {p5, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "clientVendor"

    .line 846
    invoke-virtual {p5, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "clientVersion"

    .line 847
    invoke-virtual {p5, p1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x10

    .line 848
    invoke-virtual {p0, p1, p5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected setRcsDisabledState(Ljava/lang/String;)V
    .locals 1

    .line 868
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    const-string/jumbo v0, "root/services/rcsdisabledstate"

    invoke-interface {p0, v0, p1}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method protected setValidityTimer(I)V
    .locals 5

    .line 639
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->cancelValidityTimer()V

    .line 640
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setValidityTimer: validityPeriod: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 641
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 642
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.internal.ims.config.workflow.validity_timeout"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "phone"

    .line 643
    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 644
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 645
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const/high16 v3, 0x2000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mValidityIntent:Landroid/app/PendingIntent;

    .line 646
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    int-to-long v1, p1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-static {p0, v0, v1, v2}, Lcom/sec/internal/helper/AlarmTimer;->start(Landroid/content/Context;Landroid/app/PendingIntent;J)V

    :cond_0
    return-void
.end method

.method public startCurConfig()V
    .locals 1

    const/16 v0, 0xb

    .line 394
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected startGeneralErrorRetryTimer(J)V
    .locals 4

    .line 532
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->stopGeneralErrorRetryTimer()V

    .line 533
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startGeneralErrorRetryTimer: retryTimer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x1

    .line 534
    iput-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsGeneralErrorRetryTimerRunning:Z

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/16 p1, 0xd

    .line 536
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 538
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->getGeneralErrorRetryIntentReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mGeneralErrorRetryIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 539
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 541
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.internal.ims.config.workflow.general_error_max_retry"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "phone"

    .line 542
    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 543
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 544
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const/high16 v3, 0x2000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mGeneralErrorRetryIntent:Landroid/app/PendingIntent;

    .line 545
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    invoke-static {p0, v0, p1, p2}, Lcom/sec/internal/helper/AlarmTimer;->start(Landroid/content/Context;Landroid/app/PendingIntent;J)V

    :goto_0
    return-void
.end method

.method protected startLocalConfig(ILcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)V
    .locals 4

    .line 412
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_3

    .line 414
    invoke-direct {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->loadLocalConfig()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 419
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string/jumbo v3, "startLocalConfig: load localconfig"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 420
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->checkAndKeepData(Ljava/util/Map;)V

    .line 421
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->isValidRcsDisabledState(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 422
    invoke-virtual {p0, v0, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->checkAndKeepRcsDisabledState(Ljava/util/Map;Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)V

    .line 424
    :cond_1
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->checkAndKeepSpgUrl(Ljava/util/Map;)V

    .line 425
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->checkAndKeepRcsClientConfiguration(Ljava/util/Map;)V

    .line 427
    sget-object p2, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;->UPDATE_LOCAL_CONFIG:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->clearStorage(Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;)V

    .line 429
    iget-object p2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    invoke-interface {p2, v0}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->writeAll(Ljava/util/Map;)Z

    .line 430
    iget-object p2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/config/SharedInfo;->setParsedXml(Ljava/util/Map;)V

    .line 431
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getValidity()I

    move-result p2

    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v2

    if-le p2, v2, :cond_2

    .line 432
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getValidity()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setNextAutoconfigTimeAfter(I)V

    .line 433
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getValidity()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->setValidityTimer(I)V

    goto :goto_1

    .line 435
    :cond_2
    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result p2

    int-to-long v1, p2

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setNextAutoconfigTime(J)V

    .line 436
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->cancelValidityTimer()V

    .line 438
    :goto_1
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setVersionBackup(I)V

    :cond_3
    if-nez v0, :cond_4

    .line 442
    sget-object p1, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string/jumbo p2, "startLocalConfig: can not load localconfig"

    invoke-static {p1, p0, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :cond_4
    return-void
.end method

.method protected startMobileAutoConfig()V
    .locals 4

    const/4 v0, 0x0

    .line 664
    iput-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsMobileAutoConfigOngoing:Z

    .line 665
    iput-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsMobileConnectionAvailable:Z

    .line 666
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->stopGeneralErrorRetryTimer()V

    .line 667
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->checkAndUpdateDmaPackageInfo()V

    .line 668
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mDmaPackage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x4

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mDmaPackage:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->isGoogDmaPackageInuse(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsSecAndGoogDmaPackageSwitched:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    .line 669
    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->isRcsClientConfigurationInfoNotSet()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->registerMobileNetwork()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 673
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v3, "mobileAutoConfig: start using mobile network"

    invoke-static {v0, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const-wide/32 v2, 0xea60

    .line 674
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 670
    :cond_2
    :goto_0
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v3, "mobileAutoConfig: dmaPackage/client info/mobile network is not available"

    invoke-static {v0, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 671
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_1
    return-void
.end method

.method protected stopGeneralErrorRetryTimer()V
    .locals 7

    .line 566
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string/jumbo v2, "stopGeneralErrorRetryTimer:"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0xd

    .line 567
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 569
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mGeneralErrorRetryIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_0

    .line 570
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/sec/internal/helper/AlarmTimer;->stop(Landroid/content/Context;Landroid/app/PendingIntent;)V

    .line 572
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mGeneralErrorRetryIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_1

    .line 573
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 578
    :cond_1
    :goto_0
    iput-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mGeneralErrorRetryIntent:Landroid/app/PendingIntent;

    .line 579
    iput-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mGeneralErrorRetryIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 580
    iput-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsGeneralErrorRetryTimerRunning:Z

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    .line 576
    :try_start_1
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    iget v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "stopGeneralErrorRetryTimer: can not stop/unregister: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 578
    :goto_2
    iput-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mGeneralErrorRetryIntent:Landroid/app/PendingIntent;

    .line 579
    iput-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mGeneralErrorRetryIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 580
    iput-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsGeneralErrorRetryTimerRunning:Z

    .line 581
    throw v2
.end method

.method protected unregisterImsRegistrationListener()V
    .locals 3

    const/16 v0, 0xc

    .line 143
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 144
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mImsRegistrationListener:Lcom/sec/ims/IImsRegistrationListener;

    if-eqz v0, :cond_0

    .line 145
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-interface {v1, v0, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->unregisterListener(Lcom/sec/ims/IImsRegistrationListener;I)V

    const/4 v0, 0x0

    .line 146
    iput-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mImsRegistrationListener:Lcom/sec/ims/IImsRegistrationListener;

    :cond_0
    return-void
.end method

.method protected unregisterMobileNetwork()V
    .locals 6

    const/4 v0, 0x0

    .line 204
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mMobileStateCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v1, :cond_0

    .line 205
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 206
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string/jumbo v3, "unregisterMobileNetwork: unregistered"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mNetworkRequest:Landroid/net/NetworkRequest;

    .line 212
    iput-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mMobileStateCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 209
    :try_start_1
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unregisterMobileNetwork: can not unregister: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 211
    :goto_2
    iput-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mNetworkRequest:Landroid/net/NetworkRequest;

    .line 212
    iput-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mMobileStateCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 213
    throw v1
.end method
