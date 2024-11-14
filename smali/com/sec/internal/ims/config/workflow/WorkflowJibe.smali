.class public Lcom/sec/internal/ims/config/workflow/WorkflowJibe;
.super Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;
.source "WorkflowJibe.java"


# static fields
.field protected static final BADREQERR_RETRY_AFTER_TIME:I = 0xa8c0

.field protected static final HTTPERR_RETRY_AFTER_TIME:I = 0xa

.field protected static final HTTPERR_TRY_MAX_COUNT:I = 0x2

.field protected static final IIDTOKENERR_RETRY_AFTER_TIME:I = 0x3c

.field protected static final IIDTOKENERR_RETRY_LIMIT:I = 0x3

.field protected static final LOG_TAG:Ljava/lang/String;

.field protected static final MSISDN_TRY_MAX_COUNT:I = 0x1

.field protected static final MSISDN_TRY_MAX_COUNT_NON_GC:I = 0x3

.field protected static final OTP_SMS_BINARY_TYPE:Ljava/lang/String; = "binary"

.field protected static final OTP_SMS_TEXT_TYPE:Ljava/lang/String; = "text"

.field protected static final OTP_SMS_TIME_OUT:I = 0x2bc


# instance fields
.field protected m503ErrCount:I

.field protected m511ErrCount:I

.field protected mAuthHiddenTryCount:I

.field protected mAuthTryCount:I

.field protected mHttpResponse:I

.field protected mIidToken:Ljava/lang/String;

.field protected mIidTokenRetryLimit:I

.field protected mIsEnrichedHeaderFailed:Z

.field protected mIsMobileConfigCompleted:Z

.field protected mIsMobileConfigNeeded:Z

.field protected mIsMobileConnected:Z

.field protected mIsMobileRequested:Z

.field protected mIsWifiConnected:Z

.field final mMobileStateCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field protected mMsisdnTryCount:I

.field protected mPendingTask:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$DRfvY_uIeDRXQ1KFnbZizzNT6KA(Lcom/sec/internal/ims/config/workflow/WorkflowJibe;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->lambda$handleMessage$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$XjvIR89Zq-u5mltX6jmtrGYYcPk(Lcom/sec/internal/ims/config/workflow/WorkflowJibe;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->lambda$handleMessage$0(Ljava/lang/Runnable;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetIidToken(Lcom/sec/internal/ims/config/workflow/WorkflowJibe;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->getIidToken()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misIidTokenInvalid(Lcom/sec/internal/ims/config/workflow/WorkflowJibe;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->isIidTokenInvalid(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mretryConfigAfterTime(Lcom/sec/internal/ims/config/workflow/WorkflowJibe;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->retryConfigAfterTime()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 60
    const-class v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Lcom/sec/internal/constants/Mno;I)V
    .locals 12

    move-object v11, p0

    move-object v2, p2

    move-object v3, p3

    move/from16 v10, p5

    .line 90
    new-instance v5, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    invoke-direct {v5, p2, p3, v10}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;-><init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;I)V

    new-instance v6, Lcom/sec/internal/ims/config/adapters/StorageAdapter;

    invoke-direct {v6}, Lcom/sec/internal/ims/config/adapters/StorageAdapter;-><init>()V

    new-instance v7, Lcom/sec/internal/ims/config/adapters/HttpAdapterJibeAndSec;

    invoke-direct {v7, v10}, Lcom/sec/internal/ims/config/adapters/HttpAdapterJibeAndSec;-><init>(I)V

    new-instance v8, Lcom/sec/internal/ims/config/adapters/XmlParserAdapter;

    invoke-direct {v8}, Lcom/sec/internal/ims/config/adapters/XmlParserAdapter;-><init>()V

    new-instance v9, Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    invoke-direct {v9, p2, p3, v10}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;-><init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;I)V

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v4, p4

    invoke-direct/range {v0 .. v10}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;Lcom/sec/internal/interfaces/ims/config/IXmlParserAdapter;Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;I)V

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileRequested:Z

    .line 75
    iput-boolean v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileConnected:Z

    .line 76
    iput-boolean v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsWifiConnected:Z

    .line 77
    iput-boolean v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileConfigNeeded:Z

    .line 78
    iput-boolean v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileConfigCompleted:Z

    .line 79
    iput-boolean v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsEnrichedHeaderFailed:Z

    const/4 v1, 0x0

    .line 80
    iput-object v1, v11, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIidToken:Ljava/lang/String;

    .line 81
    iput v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIidTokenRetryLimit:I

    .line 82
    iput v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mHttpResponse:I

    .line 83
    iput v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mAuthTryCount:I

    .line 84
    iput v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mAuthHiddenTryCount:I

    .line 85
    iput v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mMsisdnTryCount:I

    .line 86
    iput v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->m511ErrCount:I

    .line 87
    iput v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->m503ErrCount:I

    .line 212
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$1;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowJibe;)V

    iput-object v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mMobileStateCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    return-void
.end method

.method private getIidToken()Ljava/lang/String;
    .locals 4

    .line 537
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    const-string v1, "need iid token from telephony/application"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/PowerController;->release()V

    .line 539
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mTelephonyAdapter:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getIidToken()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "receive iid token from telephony/application"

    .line 540
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "iidToken: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/PowerController;->lock()V

    return-object v1
.end method

.method private getMsisdnForGc()Ljava/lang/String;
    .locals 4

    .line 549
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mMsisdnHandler:Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->getMsisdnSkipCount()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 550
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mMsisdnHandler:Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->setMsisdnSkipCount(I)V

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/PowerController;->release()V

    .line 553
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mMsisdnHandler:Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->getLastMsisdnValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 554
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mDialog:Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mTelephonyAdapter:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getSimCountryCode()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mMsisdnHandler:Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->getLastMsisdnValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;->getMsisdn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 556
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mDialog:Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mTelephonyAdapter:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getSimCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;->getMsisdn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 558
    :goto_0
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "msisdn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/PowerController;->lock()V

    return-object v0
.end method

.method private getMsisdnForJibe()Ljava/lang/String;
    .locals 4

    .line 494
    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mMsisdnTryCount:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    add-int/2addr v0, v1

    .line 495
    iput v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mMsisdnTryCount:I

    .line 496
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    const-string v1, "need msisdn from telephony/application"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/PowerController;->release()V

    .line 498
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mTelephonyAdapter:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getMsisdnNumber()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "receive msisdn from telephony/application"

    .line 499
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "msisdn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/PowerController;->lock()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method private isIidTokenInvalid(Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_1

    const-string v0, ""

    .line 512
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 513
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "iidToken is null or empty"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->addEventLog(Ljava/lang/String;)V

    .line 514
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "retry after 60 sec, IIDTOKENERR_RETRY_LIMIT is "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIidTokenRetryLimit:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    iget p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIidTokenRetryLimit:I

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-ge p1, v0, :cond_2

    add-int/2addr p1, v1

    .line 516
    iput p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIidTokenRetryLimit:I

    const/16 p1, 0x3c

    .line 517
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setValidityTimer(I)V

    .line 518
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setNextAutoconfigTimeAfter(I)V

    :cond_2
    return v1
.end method

.method private isMsisdnForGcNeeded()Z
    .locals 2

    .line 507
    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mMsisdnTryCount:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsPreConsent(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mMno:Lcom/sec/internal/constants/Mno;

    .line 508
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isEmeasewaoce()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v0, Lcom/sec/internal/constants/Mno;->CLARO_DOMINICAN:Lcom/sec/internal/constants/Mno;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$handleMessage$0(Ljava/lang/Runnable;)V
    .locals 0

    .line 137
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    .line 138
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mPendingTask:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic lambda$handleMessage$1()V
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    iget p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->clearWorkflowByDmaChange(I)Z

    return-void
.end method

.method private retryConfigAfterTime()V
    .locals 3

    .line 526
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "retry after 60 sec, IIDTOKENERR_RETRY_LIMIT is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIidTokenRetryLimit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIidTokenRetryLimit:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 528
    iput v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIidTokenRetryLimit:I

    const/16 v0, 0x3c

    .line 529
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setValidityTimer(I)V

    .line 530
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setNextAutoconfigTimeAfter(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected endAutoConfig(Z)V
    .locals 0

    .line 298
    invoke-super {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->endAutoConfig(Z)V

    const/4 p1, 0x0

    .line 300
    iput-boolean p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileRequested:Z

    .line 301
    iput-boolean p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileConnected:Z

    .line 302
    iput-boolean p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileConfigNeeded:Z

    return-void
.end method

.method protected getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;
    .locals 3

    .line 349
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v2, "getHttpResponse"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 350
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mHttp:Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->close()Z

    .line 351
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mHttp:Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpHeaders()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->setHeaders(Ljava/util/Map;)V

    .line 352
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mHttp:Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpParams()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->setParams(Ljava/util/Map;)V

    .line 353
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mHttp:Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->setContext(Landroid/content/Context;)V

    .line 355
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsMobileConfigNeeded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileConfigNeeded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsMobileRequested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileRequested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsMobileConnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-boolean v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileConfigNeeded:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileRequested:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileConnected:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 359
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->checkMobileConnection(Landroid/net/ConnectivityManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "set network to mobile network"

    .line 360
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mHttp:Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mNetwork:Landroid/net/Network;

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->setNetwork(Landroid/net/Network;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "set network to default network"

    .line 363
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mHttp:Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->setNetwork(Landroid/net/Network;)V

    .line 366
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mHttp:Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->open(Ljava/lang/String;)Z

    .line 367
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mHttp:Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->request()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v0

    .line 368
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mHttp:Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->close()Z

    return-object v0
.end method

.method protected getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 2

    packed-switch p1, :pswitch_data_0

    .line 846
    sget-object p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNextWorkflow: Unexpected type ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] !!!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 837
    :pswitch_0
    new-instance p1, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$9;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$9;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowJibe;)V

    return-object p1

    .line 803
    :pswitch_1
    new-instance p1, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$8;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$8;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowJibe;)V

    return-object p1

    .line 738
    :pswitch_2
    new-instance p1, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$5;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$5;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowJibe;)V

    return-object p1

    .line 783
    :pswitch_3
    new-instance p1, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$7;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$7;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowJibe;)V

    return-object p1

    .line 747
    :pswitch_4
    new-instance p1, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$6;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$6;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowJibe;)V

    return-object p1

    .line 633
    :pswitch_5
    new-instance p1, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$4;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$4;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowJibe;)V

    return-object p1

    .line 590
    :pswitch_6
    new-instance p1, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$3;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$3;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowJibe;)V

    return-object p1

    .line 567
    :pswitch_7
    new-instance p1, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$2;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$2;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowJibe;)V

    return-object p1

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

.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    .line 96
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 97
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    const-string v3, "AutoConfig: finish"

    const-string v4, " newVersion: "

    const-string v5, "oldVersion: "

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x1

    if-eqz v1, :cond_7

    if-eq v1, v8, :cond_8

    const-string v9, "mIsMobileConfigCompleted: "

    if-eq v1, v7, :cond_5

    if-eq v1, v6, :cond_3

    const/4 v3, 0x5

    if-eq v1, v3, :cond_0

    .line 208
    invoke-super {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 183
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    const-string v1, "defaultmsgappinuse"

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {p1, v1, v3}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v8, :cond_1

    .line 184
    iget p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string/jumbo v1, "sms default application is changed to samsung"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 185
    sget-object p1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setVersion(I)V

    .line 186
    invoke-virtual {p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->setRcsState(Ljava/lang/String;)V

    const-string v0, ""

    .line 187
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->setRcsDisabledState(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setValidity(I)V

    .line 189
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->cancelValidityTimer()V

    .line 190
    invoke-virtual {p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result p1

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setNextAutoconfigTime(J)V

    .line 191
    iput-boolean v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mIsConfigOngoing:Z

    goto/16 :goto_0

    .line 193
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-interface {p1, v1}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->isValidConfigDb(I)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 194
    iget p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string/jumbo v1, "sms default application is changed to non-samsung"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 195
    sget-object p1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_RCS_BY_USER:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->setOpMode(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;Ljava/util/Map;)V

    .line 197
    new-instance p1, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$$ExternalSyntheticLambda1;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowJibe;)V

    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mPendingTask:Ljava/lang/Runnable;

    .line 198
    invoke-virtual {p0, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 199
    invoke-virtual {p0, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 201
    :cond_2
    iget p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v1, "not to trigger a config because of invalid config"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 202
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    iget p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-interface {p1, p0}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->clearWorkflowByDmaChange(I)Z

    goto/16 :goto_0

    .line 165
    :cond_3
    iget-boolean p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileConfigCompleted:Z

    if-eqz p1, :cond_4

    .line 166
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileConfigCompleted:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 169
    :cond_4
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {p1}, Lcom/sec/internal/ims/config/PowerController;->lock()V

    .line 170
    invoke-virtual {p0, v8}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->changeOpMode(Z)V

    .line 171
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mMobileStateCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {p0, p1, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->unregisterMobileNetwork(Landroid/net/ConnectivityManager;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 172
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersion()I

    move-result p1

    iput p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mNewVersion:I

    .line 173
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->endAutoConfig(Z)V

    .line 174
    iget p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mOldVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mNewVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 175
    iget p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {v0, p1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 176
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mOldVersion:I

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mNewVersion:I

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    .line 177
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 176
    invoke-virtual {p0, v7, v0, v1, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 178
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/PowerController;->release()V

    goto/16 :goto_0

    .line 145
    :cond_5
    invoke-virtual {p0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 146
    iget-boolean p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileConfigCompleted:Z

    if-eqz p1, :cond_6

    .line 147
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileConfigCompleted:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 150
    :cond_6
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {p1}, Lcom/sec/internal/ims/config/PowerController;->lock()V

    .line 151
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->executeAutoConfig()V

    .line 152
    iput-boolean v8, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileConfigCompleted:Z

    .line 153
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mMobileStateCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {p0, p1, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->unregisterMobileNetwork(Landroid/net/ConnectivityManager;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 154
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersion()I

    move-result p1

    iput p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mNewVersion:I

    .line 155
    invoke-virtual {p0, v8}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->endAutoConfig(Z)V

    .line 156
    iget p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mOldVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mNewVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 157
    iget p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {v0, p1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 158
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mOldVersion:I

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mNewVersion:I

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    .line 159
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 158
    invoke-virtual {p0, v7, v0, v1, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 160
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/PowerController;->release()V

    goto/16 :goto_0

    .line 99
    :cond_7
    iput-boolean v8, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStartForce:Z

    .line 102
    :cond_8
    iget-boolean p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mIsConfigOngoing:Z

    if-eqz p1, :cond_9

    const-string p0, "AutoConfig: ongoing"

    .line 103
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 106
    :cond_9
    iput-boolean v8, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mIsConfigOngoing:Z

    .line 107
    iget p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AutoConfig: start, mStartForce: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStartForce:Z

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 108
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v7, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 109
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {p1}, Lcom/sec/internal/ims/config/PowerController;->lock()V

    .line 110
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->initAutoConfig()V

    .line 111
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersion()I

    move-result p1

    iput p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mOldVersion:I

    .line 113
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->scheduleAutoconfigForJibe(I)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 114
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsWifiConnected: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsWifiConnected:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsMobileConfigNeeded: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileConfigNeeded:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-boolean p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsWifiConnected:Z

    if-eqz p1, :cond_a

    iget-boolean p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileConfigNeeded:Z

    if-eqz p1, :cond_a

    const-string/jumbo p1, "use mobile network"

    .line 116
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iput-boolean v8, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileRequested:Z

    .line 118
    new-instance p1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {p1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 119
    invoke-virtual {p1, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object p1

    const/16 v0, 0xc

    .line 120
    invoke-virtual {p1, v0}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object p1

    .line 121
    invoke-virtual {p1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mNetworkRequest:Landroid/net/NetworkRequest;

    .line 122
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mMobileStateCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->registerMobileNetwork(Landroid/net/ConnectivityManager;Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 123
    invoke-virtual {p0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 124
    invoke-virtual {p0, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/32 v0, 0xea60

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 125
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/PowerController;->release()V

    goto :goto_0

    .line 128
    :cond_a
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->executeAutoConfig()V

    .line 130
    :cond_b
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersion()I

    move-result p1

    iput p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mNewVersion:I

    .line 131
    invoke-virtual {p0, v8}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->endAutoConfig(Z)V

    .line 132
    iget p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mOldVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mNewVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 133
    iget p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {v0, p1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 134
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mOldVersion:I

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mNewVersion:I

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    .line 135
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 134
    invoke-virtual {p0, v7, v0, v1, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 136
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mPendingTask:Ljava/lang/Runnable;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowJibe;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 140
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/PowerController;->release()V

    :goto_0
    return-void
.end method

.method protected handleResponse(Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/config/exception/InvalidHeaderException;,
            Lcom/sec/internal/ims/config/exception/UnknownStatusException;
        }
    .end annotation

    .line 374
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleResponse: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 375
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": handleResponse: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->addEventLog(Ljava/lang/String;)V

    .line 378
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setLastErrorCode(I)V

    .line 379
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getLastErrorCode()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_f

    const/16 v4, 0xc8

    if-eq v1, v4, :cond_e

    const/16 v4, 0x193

    const/4 v5, 0x3

    const/16 v6, 0x8

    if-eq v1, v4, :cond_7

    const/16 v4, 0x1f7

    if-eq v1, v4, :cond_5

    const/16 v4, 0x1ff

    const-string v7, ""

    if-eq v1, v4, :cond_2

    const/16 v4, 0x190

    if-eq v1, v4, :cond_1

    const/16 v4, 0x191

    if-eq v1, v4, :cond_0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 468
    :cond_0
    sget-object p1, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;->INVALID_IIDTOKEN:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

    invoke-virtual {p0, v7, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setToken(Ljava/lang/String;Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;)V

    const-string/jumbo p1, "retry after 43200 sec"

    .line 469
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0xa8c0

    .line 470
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setValidityTimer(I)V

    .line 471
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setNextAutoconfigTimeAfter(I)V

    .line 472
    invoke-virtual {p0, v6}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object p0

    goto/16 :goto_1

    :cond_1
    const-string p1, "bad request received, set version to zero"

    .line 476
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    sget-object p1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->setOpMode(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;Ljava/util/Map;)V

    .line 478
    invoke-virtual {p0, v6}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object p0

    goto/16 :goto_1

    .line 381
    :cond_2
    instance-of p1, p1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$FetchHttp;

    if-eqz p1, :cond_3

    .line 382
    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object p0

    goto/16 :goto_1

    .line 385
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "The token isn\'t valid: m511ErrCount: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->m511ErrCount:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    sget-object p1, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;->INVALID_TOKEN:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

    invoke-virtual {p0, v7, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setToken(Ljava/lang/String;Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;)V

    .line 387
    iget p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->m511ErrCount:I

    if-ge p1, v2, :cond_4

    add-int/2addr p1, v3

    .line 388
    iput p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->m511ErrCount:I

    const-string/jumbo p1, "retry after 10 sec"

    .line 389
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0xa

    .line 390
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setValidityTimer(I)V

    .line 391
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setNextAutoconfigTimeAfter(I)V

    .line 393
    :cond_4
    invoke-virtual {p0, v6}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object p0

    goto/16 :goto_1

    .line 456
    :cond_5
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getretryAfterTime()J

    move-result-wide p1

    .line 457
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "m503ErrCount: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->m503ErrCount:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " retryAfterTime: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->m503ErrCount:I

    if-ge v1, v2, :cond_6

    add-int/2addr v1, v3

    .line 459
    iput v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->m503ErrCount:I

    .line 460
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "retry after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " sec"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    long-to-int p1, p1

    .line 461
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setValidityTimer(I)V

    .line 462
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setNextAutoconfigTimeAfter(I)V

    .line 464
    :cond_6
    invoke-virtual {p0, v6}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object p0

    goto/16 :goto_1

    .line 414
    :cond_7
    instance-of p1, p1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$FetchHttps;

    if-nez p1, :cond_8

    .line 415
    invoke-virtual {p0, v6}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object p0

    goto/16 :goto_1

    .line 418
    :cond_8
    sget-object p1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_RCS_BY_USER:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->getRcsState()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 419
    invoke-virtual {p0, v6}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object p0

    goto/16 :goto_1

    .line 422
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "403 is received, mMsisdnTryCount:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mMsisdnTryCount:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    invoke-direct {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->isMsisdnForGcNeeded()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 425
    iget p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mMsisdnTryCount:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mMsisdnTryCount:I

    .line 426
    iget-boolean p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mMobileNetwork:Z

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mMsisdnHandler:Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;

    invoke-virtual {p1}, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->getMsisdnSkipCount()I

    move-result p1

    if-ne p1, v5, :cond_a

    const-string p1, "Retry counter for msisdn reached. Abort."

    .line 427
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    invoke-virtual {p0, v6}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object p0

    return-object p0

    .line 430
    :cond_a
    invoke-direct {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->getMsisdnForGc()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "skip"

    .line 431
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 432
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mMsisdnHandler:Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;

    invoke-virtual {p1}, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->getMsisdnSkipCount()I

    move-result p2

    add-int/2addr p2, v3

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->setMsisdnSkipCount(I)V

    const-string/jumbo p1, "user enter skip msisdn."

    .line 433
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mMsisdnHandler:Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;

    const-string/jumbo p2, "true"

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->setMsisdnMsguiDisplay(Ljava/lang/String;)V

    .line 435
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "com.sec.rcs.config.action.SET_SHOW_MSISDN_DIALOG"

    .line 436
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 437
    iget-object p2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mMsisdnHandler:Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;

    invoke-virtual {p2}, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->getIsNeeded()Z

    move-result p2

    const-string v0, "isNeeded"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 438
    iget-object p2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/sec/ims/extensions/ContextExt;->ALL:Landroid/os/UserHandle;

    invoke-static {p2, p1, v0}, Lcom/sec/ims/extensions/ContextExt;->sendBroadcastAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 439
    invoke-virtual {p0, v6}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object p0

    return-object p0

    .line 442
    :cond_b
    invoke-direct {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->getMsisdnForJibe()Ljava/lang/String;

    move-result-object p1

    .line 445
    :cond_c
    iget-object p2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/config/SharedInfo;->setUserMsisdn(Ljava/lang/String;)V

    .line 446
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_d

    const-string p1, "msisdn doesn\'t exist"

    .line 447
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    invoke-virtual {p0, v6}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object p0

    goto :goto_1

    :cond_d
    const-string p1, "msisdn exists"

    .line 450
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object p0

    goto :goto_1

    :cond_e
    const/4 v0, 0x0

    .line 482
    iput v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->m511ErrCount:I

    .line 483
    iput v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->m503ErrCount:I

    .line 487
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->handleResponse(Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object p0

    goto :goto_1

    .line 404
    :cond_f
    :pswitch_0
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-ne v1, v4, :cond_10

    instance-of v1, p1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$FetchHttp;

    if-eqz v1, :cond_10

    iget-boolean v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsEnrichedHeaderFailed:Z

    if-nez v1, :cond_10

    const-string p1, "http enriched header is failed, retry it with default header"

    .line 405
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iput-boolean v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsEnrichedHeaderFailed:Z

    .line 407
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object p0

    goto :goto_1

    .line 410
    :cond_10
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->handleResponse(Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object p0

    :goto_1
    return-object p0

    :pswitch_data_0
    .packed-switch 0x320
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected initAutoConfig()V
    .locals 3

    .line 280
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v2, "initAutoConfig"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x0

    .line 281
    iput-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mNetwork:Landroid/net/Network;

    const/4 v0, 0x0

    .line 282
    iput-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileRequested:Z

    .line 283
    iput-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileConnected:Z

    .line 284
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->checkWifiConnection(Landroid/net/ConnectivityManager;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsWifiConnected:Z

    .line 286
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    .line 287
    iput-boolean v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileConfigNeeded:Z

    .line 289
    :cond_0
    iput-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileConfigCompleted:Z

    .line 291
    iput v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mAuthTryCount:I

    .line 292
    iput v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mAuthHiddenTryCount:I

    .line 293
    iput v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mMsisdnTryCount:I

    return-void
.end method

.method onMobileConnectionChanged(Landroid/net/Network;Z)V
    .locals 1

    if-eqz p2, :cond_1

    .line 226
    iget-boolean p2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileRequested:Z

    if-eqz p2, :cond_2

    iget-boolean p2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileConnected:Z

    if-nez p2, :cond_2

    .line 227
    sget-object p2, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    const-string v0, "onMobileConnectionChanged: onAvailable"

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const-string v0, "mobile connection is successful"

    .line 229
    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mNetwork:Landroid/net/Network;

    const/4 p1, 0x1

    .line 231
    iput-boolean p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileConnected:Z

    const/4 p1, 0x3

    .line 232
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_0
    const-string p0, "mobile connection info is empty"

    .line 234
    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 237
    :cond_1
    iget-boolean p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileRequested:Z

    if-eqz p1, :cond_2

    .line 238
    sget-object p1, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    const-string p2, "onMobileConnectionChanged: onLost"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 239
    iput-boolean p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileConnected:Z

    :cond_2
    :goto_0
    return-void
.end method

.method protected scheduleAutoconfigForJibe(I)Z
    .locals 10

    .line 244
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string/jumbo v2, "scheduleAutoconfigForJibe"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 245
    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->needScheduleAutoconfig(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string p0, "needScheduleAutoconfig: false"

    .line 246
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 249
    :cond_0
    iget-boolean v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStartForce:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 250
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->cancelValidityTimer()V

    const-string p0, "force autoconfig"

    .line 251
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    const/4 v1, -0x1

    if-eq p1, v1, :cond_5

    const/4 v1, -0x2

    if-ne p1, v1, :cond_2

    goto/16 :goto_0

    .line 259
    :cond_2
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getNextAutoconfigTime()J

    move-result-wide v4

    .line 260
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nextAutoconfigTime: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 263
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long v6, v4, v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int p1, v6

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "remainValidity: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-gtz p1, :cond_3

    const-string p0, "need autoconfig"

    .line 267
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3
    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_4

    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "autoconfig schedule: after "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " seconds"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",VNE:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v4, 0x13020300

    invoke-static {v4, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": autoconfig schedule: after "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->addEventLog(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setValidityTimer(I)V

    :cond_4
    return v2

    .line 255
    :cond_5
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "currentVersion: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " skip autoconfig"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method work()V
    .locals 8

    const/4 v0, 0x1

    .line 307
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v1

    .line 308
    sget v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->AUTO_CONFIG_MAX_FLOWCOUNT:I

    :goto_0
    if-eqz v1, :cond_2

    if-lez v2, :cond_2

    const/16 v3, 0x8

    .line 312
    :try_start_0
    invoke-interface {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;->run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v1
    :try_end_0
    .catch Lcom/sec/internal/ims/config/exception/NoInitialDataException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/sec/internal/ims/config/exception/UnknownStatusException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v1

    .line 335
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 336
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unknown exception occur: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_0
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "wait 1 sec and retry"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v3, 0x3e8

    .line 339
    invoke-virtual {p0, v3, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->sleep(J)V

    .line 340
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v3

    .line 341
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    :catch_1
    move-exception v1

    .line 331
    sget-object v4, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SQLiteFullException occur: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteFullException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v3

    .line 333
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteFullException;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception v1

    .line 320
    invoke-virtual {v1}, Lcom/sec/internal/ims/config/exception/UnknownStatusException;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 321
    sget-object v5, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UnknownStatusException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    instance-of v4, v1, Lcom/sec/internal/ims/config/exception/EmptyBodyAndCookieException;

    if-eqz v4, :cond_1

    .line 323
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v3

    goto :goto_1

    .line 325
    :cond_1
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "wait 2 sec and retry"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v3, 0x7d0

    .line 326
    invoke-virtual {p0, v3, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->sleep(J)V

    .line 327
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v3

    .line 329
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catch_3
    move-exception v1

    .line 314
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NoInitialDataException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/exception/NoInitialDataException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "wait 10 sec and retry"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v3, 0x2710

    .line 316
    invoke-virtual {p0, v3, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->sleep(J)V

    .line 317
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v3

    .line 318
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    move-object v1, v3

    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    :cond_2
    return-void
.end method
