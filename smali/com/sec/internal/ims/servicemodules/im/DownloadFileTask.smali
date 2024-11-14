.class public Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;
.super Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask;
.source "DownloadFileTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;,
        Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;,
        Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadFileTaskException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field private static final FT_SIZE_MARGIN:J = 0x2800L

.field private static final LOG_TAG:Ljava/lang/String; = "DownloadFileTask"

.field private static final MAX_PROGRESS_COUNT:I = 0x32


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mDownloadProgressElapsed:J

.field private mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

.field protected final mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

.field private mPhoneId:I

.field private mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

.field private mTotal:J

.field private mTransferred:J

.field private mWritten:J


# direct methods
.method static bridge synthetic -$$Nest$fgetmDownloadProgressElapsed(Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mDownloadProgressElapsed:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmRequest(Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;)Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTotal(Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mTotal:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmTransferred(Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mTransferred:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmWritten(Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mWritten:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fputmDownloadProgressElapsed(Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mDownloadProgressElapsed:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTransferred(Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mTransferred:J

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;)V
    .locals 2

    .line 83
    invoke-direct {p0, p3}, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask;-><init>(Landroid/os/Looper;)V

    .line 84
    sget-object p3, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mPhoneId:I

    .line 86
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mContext:Landroid/content/Context;

    .line 87
    invoke-static {p1}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    .line 88
    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    const/4 p1, 0x0

    .line 89
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;)Z
    .locals 0

    .line 66
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask;->isCancelled()Z

    move-result p0

    return p0
.end method

.method private cancelRequest(Lcom/sec/internal/helper/HttpRequest;)V
    .locals 3

    .line 224
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    if-eqz v0, :cond_0

    .line 225
    invoke-interface {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->handleFtHttpDownloadError(Lcom/sec/internal/helper/HttpRequest;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$HttpStrategyResponse;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$HttpStrategyResponse;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$HttpStrategyResponse;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;I)V

    .line 226
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mCallback:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$HttpStrategyResponse;->getCancelReason()Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$HttpStrategyResponse;->getDelay()I

    move-result v0

    invoke-virtual {p1}, Lcom/sec/internal/helper/HttpRequest;->code()I

    move-result p1

    invoke-interface {p0, v1, v0, p1}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;->onCanceled(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;II)V

    return-void
.end method

.method private getFileLength()J
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mFilePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mFilePath:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 211
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mContentUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 214
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/sec/internal/helper/FileUtils;->getSizeFromUri(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v0

    return-wide v0

    :cond_1
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private isPermanentFailCause(Lcom/sec/internal/helper/HttpRequest$HttpRequestException;)Z
    .locals 0

    .line 220
    invoke-virtual {p1}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object p0

    instance-of p0, p0, Ljava/net/UnknownHostException;

    return p0
.end method

.method private sendEmptyGetRequest(I)I
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/helper/HttpRequest;->get(Ljava/lang/CharSequence;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    .line 381
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->setDefaultHeaders(I)V

    .line 382
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->code()I

    move-result p0

    return p0
.end method

.method private sendGetRequest(I)I
    .locals 11

    const-string v0, "application/vnd.gsma.eap-relay.v1.0+json"

    const-string v1, "Content-Type"

    const/4 v2, 0x0

    .line 284
    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    const/4 v2, 0x3

    const/4 v3, -0x1

    .line 288
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->sendEmptyGetRequest(I)I

    move-result v4
    :try_end_0
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_4

    const/16 v5, 0xc8

    if-eq v4, v5, :cond_4

    const/16 v0, 0xce

    if-eq v4, v0, :cond_3

    const/16 v0, 0x12e

    if-eq v4, v0, :cond_1

    const/16 v0, 0x191

    if-eq v4, v0, :cond_0

    .line 353
    :try_start_1
    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Receive HTTP response "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v1}, Lcom/sec/internal/helper/HttpRequest;->message()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " neither OK nor UNAUTHORIZED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->cancelRequest(Lcom/sec/internal/helper/HttpRequest;)V

    goto/16 :goto_3

    .line 319
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Receive 401 Unauthorized, attempt to generate response"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v1}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    .line 322
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v1}, Lcom/sec/internal/helper/HttpRequest;->wwwAuthenticate()Ljava/lang/String;

    move-result-object v1

    .line 323
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "challenge: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mPhoneId:I

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-object v5, v5, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mUrl:Ljava/lang/String;

    const-string v6, "GET"

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    .line 326
    invoke-virtual {v7}, Lcom/sec/internal/helper/HttpRequest;->getCipherSuite()Ljava/lang/String;

    move-result-object v7

    .line 325
    invoke-static {v0, v5, v1, v6, v7}, Lcom/sec/internal/ims/util/HttpAuthGenerator;->getAuthorizationHeader(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 328
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/internal/helper/HttpRequest;->get(Ljava/lang/CharSequence;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    .line 329
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->setDefaultHeaders(I)V

    .line 330
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/HttpRequest;->authorization(Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;

    .line 332
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {p1}, Lcom/sec/internal/helper/HttpRequest;->code()I

    move-result v3

    goto/16 :goto_6

    .line 336
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    const-string v1, "Location"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 337
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 338
    new-instance v0, Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;

    iget v6, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mPhoneId:I

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-object v8, v1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mNetwork:Landroid/net/Network;

    iget-object v9, v1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mUserAgent:Ljava/lang/String;

    iget-boolean v10, v1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mTrustAllCerts:Z

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;-><init>(ILjava/lang/String;Landroid/net/Network;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/sec/internal/ims/util/OpenIdAuth;->sendAuthRequest(Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 341
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v1}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    .line 342
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iput-object v0, v1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mUrl:Ljava/lang/String;

    .line 343
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->sendEmptyGetRequest(I)I

    move-result v3

    goto/16 :goto_6

    .line 347
    :cond_2
    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "sendGetRequest: OpenId Process failed!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 349
    :try_start_2
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mCallback:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-interface {p1, v0, v3, v3}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;->onCanceled(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;II)V
    :try_end_2
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_6

    .line 315
    :cond_3
    :try_start_3
    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Receive 206 Partial"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 292
    :cond_4
    sget-object v5, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Receive 200 OK"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v6, v1}, Lcom/sec/internal/helper/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    .line 294
    invoke-virtual {v6, v1}, Lcom/sec/internal/helper/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 295
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v1}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    .line 296
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v1}, Lcom/sec/internal/helper/HttpRequest;->body()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 298
    iget v6, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mPhoneId:I

    invoke-static {v6, v1}, Lcom/sec/internal/ims/util/HttpAuthGenerator;->getEAPAkaChallengeResponse(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 300
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-object v5, v5, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mUrl:Ljava/lang/String;

    invoke-static {v5}, Lcom/sec/internal/helper/HttpRequest;->post(Ljava/lang/CharSequence;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    .line 301
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->setDefaultHeaders(I)V

    .line 303
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/HttpRequest;->contentType(Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;

    .line 304
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {p1, v1}, Lcom/sec/internal/helper/HttpRequest;->send(Ljava/lang/CharSequence;)Lcom/sec/internal/helper/HttpRequest;

    .line 305
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {p1}, Lcom/sec/internal/helper/HttpRequest;->code()I

    move-result v3

    goto/16 :goto_6

    .line 309
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EAP AKA authentication failed, code: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest;->code()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    .line 311
    :try_start_4
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mCallback:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-interface {p1, v0, v3, v3}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;->onCanceled(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;II)V
    :try_end_4
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_6

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_2

    :catch_3
    move-exception p1

    goto :goto_4

    :catch_4
    move-exception p1

    move v4, v3

    .line 373
    :goto_0
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 374
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mCallback:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;

    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-interface {p0, p1, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;->onCanceled(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;II)V

    goto :goto_3

    :catch_5
    move-exception p1

    move v4, v3

    .line 370
    :goto_1
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 371
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mCallback:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;

    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->DEVICE_UNREGISTERED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-interface {p0, p1, v3, v3}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;->onCanceled(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;II)V

    goto :goto_3

    :catch_6
    move-exception p1

    move v4, v3

    .line 367
    :goto_2
    invoke-virtual {p1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 368
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mCallback:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;

    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-interface {p0, p1, v3, v3}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;->onCanceled(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;II)V

    :cond_6
    :goto_3
    move v3, v4

    goto :goto_6

    :catch_7
    move-exception p1

    move v4, v3

    .line 357
    :goto_4
    invoke-virtual {p1}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 358
    invoke-virtual {p1}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 360
    :cond_7
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->isPermanentFailCause(Lcom/sec/internal/helper/HttpRequest$HttpRequestException;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 361
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mCallback:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const/16 v1, 0x1e

    invoke-interface {p0, v0, v1, v3}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;->onCanceled(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;II)V

    goto :goto_5

    .line 363
    :cond_8
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mCallback:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-interface {p0, v0, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;->onCanceled(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;II)V

    .line 365
    :goto_5
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " happened. Retry download Task."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :goto_6
    return v3
.end method

.method private setDefaultHeaders(I)V
    .locals 7

    .line 386
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mNetwork:Landroid/net/Network;

    const/4 v3, 0x0

    const/16 v4, 0x2710

    const v5, 0x1d4c0

    iget-object v6, v1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mUserAgent:Ljava/lang/String;

    move-object v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/helper/HttpRequest;->setParams(Landroid/net/Network;ZIILjava/lang/String;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v0

    .line 387
    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/HttpRequest;->bufferSize(I)Lcom/sec/internal/helper/HttpRequest;

    .line 389
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    const-string v0, "is_eap_supported"

    invoke-interface {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 390
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    const-string v0, "Accept"

    const-string v1, "application/vnd.gsma.eap-relay.v1.0+json"

    invoke-virtual {p1, v0, v1}, Lcom/sec/internal/helper/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;

    .line 393
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    const-string v0, "ft_with_gba"

    invoke-interface {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    const-string/jumbo v0, "use_useridentity_for_fthttp"

    invoke-interface {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 395
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object p1

    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getIsimImpuAtIndex(II)Ljava/lang/String;

    move-result-object p1

    .line 396
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 397
    iget p1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mPhoneId:I

    invoke-static {p1}, Lcom/sec/internal/ims/util/ImsUtil;->getPublicId(I)Ljava/lang/String;

    move-result-object p1

    .line 399
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "X-3GPP-Intended-Identity"

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/helper/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;

    .line 402
    :cond_2
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mTransferred:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_3

    .line 403
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    const-wide/16 v2, -0x1

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/sec/internal/helper/HttpRequest;->range(JJ)Lcom/sec/internal/helper/HttpRequest;

    .line 405
    :cond_3
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-boolean p1, p1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mTrustAllCerts:Z

    if-eqz p1, :cond_4

    .line 406
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->trustAllCerts()Lcom/sec/internal/helper/HttpRequest;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->trustAllHosts()Lcom/sec/internal/helper/HttpRequest;

    :cond_4
    return-void
.end method


# virtual methods
.method protected doInBackground()Ljava/lang/Long;
    .locals 14

    .line 94
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    .line 95
    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 97
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doInBackground: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-wide v2, v1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mTransferredBytes:J

    iput-wide v2, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mTransferred:J

    .line 100
    iget-wide v4, v1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mTotalBytes:J

    iput-wide v4, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mTotal:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 104
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->getFileLength()J

    move-result-wide v1

    .line 105
    iget-wide v6, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mTransferred:J

    cmp-long v3, v1, v6

    if-eqz v3, :cond_1

    .line 106
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adjust mTransferred to "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iput-wide v1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mTransferred:J

    .line 108
    iget-wide v6, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mTotal:J

    cmp-long v3, v1, v6

    if-ltz v3, :cond_1

    const-string v1, "Already the download was completed."

    .line 109
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mCallback:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;

    iget-wide v1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mTransferred:J

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;->onCompleted(J)V

    .line 111
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mTransferred:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_0
    move-wide v1, v4

    .line 116
    :cond_1
    iput-wide v1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mWritten:J

    .line 118
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-wide v1, v1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mTotalBytes:J

    const-wide/16 v6, 0x32

    div-long/2addr v1, v6

    const-wide/32 v6, 0xf000

    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    const-wide/32 v6, 0x7d000

    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 123
    :try_start_0
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->sendGetRequest(I)I

    move-result v6

    const/16 v7, 0xc8

    const/16 v8, 0xce

    if-eq v6, v7, :cond_3

    if-ne v6, v8, :cond_2

    .line 125
    iget-wide v9, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mTransferred:J

    cmp-long v7, v9, v4

    if-lez v7, :cond_2

    goto :goto_2

    .line 126
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Download failed, response: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->cancelRequest(Lcom/sec/internal/helper/HttpRequest;)V

    .line 128
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mTransferred:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadFileTaskException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    :try_start_1
    throw v2
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v1

    .line 199
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 201
    :goto_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    return-object v0

    .line 130
    :cond_3
    :goto_2
    :try_start_2
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-object v6, v6, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mFilePath:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x1

    const/4 v9, 0x0

    if-nez v6, :cond_5

    .line 131
    new-instance v6, Ljava/io/BufferedOutputStream;

    new-instance v10, Ljava/io/FileOutputStream;

    iget-object v11, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-object v11, v11, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mFilePath:Ljava/lang/String;

    iget-wide v12, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mTransferred:J

    cmp-long v12, v12, v4

    if-lez v12, :cond_4

    move v12, v7

    goto :goto_3

    :cond_4
    move v12, v9

    :goto_3
    invoke-direct {v10, v11, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v6, v10, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    :goto_4
    move-object v2, v6

    goto :goto_6

    .line 132
    :cond_5
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mContentUri:Landroid/net/Uri;

    if-eqz v1, :cond_7

    .line 133
    iget-wide v10, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mTransferred:J

    cmp-long v1, v10, v4

    if-lez v1, :cond_6

    const-string/jumbo v1, "wa"

    goto :goto_5

    :cond_6
    const-string/jumbo v1, "w"

    .line 134
    :goto_5
    new-instance v6, Ljava/io/BufferedOutputStream;

    iget-object v10, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-object v11, v11, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mContentUri:Landroid/net/Uri;

    invoke-virtual {v10, v11, v1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    goto :goto_4

    .line 137
    :cond_7
    :goto_6
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    new-instance v6, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$1;

    invoke-direct {v6, p0}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$1;-><init>(Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;)V

    invoke-virtual {v1, v6}, Lcom/sec/internal/helper/HttpRequest;->progress(Lcom/sec/internal/helper/HttpRequest$UploadProgress;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v1

    .line 159
    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/HttpRequest;->receive(Ljava/io/OutputStream;)Lcom/sec/internal/helper/HttpRequest;

    .line 161
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_c

    .line 165
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v1}, Lcom/sec/internal/helper/HttpRequest;->ok()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "Download success, handle response message."

    .line 166
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mCallback:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;

    iget-wide v6, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mTransferred:J

    iget-wide v8, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mWritten:J

    add-long/2addr v6, v8

    invoke-interface {v0, v6, v7}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;->onCompleted(J)V

    goto :goto_8

    .line 169
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Download failed, "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v6}, Lcom/sec/internal/helper/HttpRequest;->message()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mWritten:J

    iget-wide v10, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mTotal:J

    cmp-long v6, v0, v10

    if-eqz v6, :cond_a

    iget-wide v12, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mTransferred:J

    add-long/2addr v12, v0

    cmp-long v0, v12, v10

    if-nez v0, :cond_9

    goto :goto_7

    :cond_9
    move v7, v9

    .line 172
    :cond_a
    :goto_7
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest;->code()I

    move-result v0

    if-ne v0, v8, :cond_b

    if-eqz v7, :cond_b

    .line 173
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mCallback:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;

    iget-wide v6, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mTransferred:J

    iget-wide v8, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mWritten:J

    add-long/2addr v6, v8

    invoke-interface {v0, v6, v7}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;->onCompleted(J)V

    goto :goto_8

    .line 175
    :cond_b
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->cancelRequest(Lcom/sec/internal/helper/HttpRequest;)V
    :try_end_2
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadFileTaskException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 196
    :goto_8
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_9

    :catch_1
    move-exception v0

    .line 199
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 201
    :goto_9
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    .line 204
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mTransferred:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 162
    :cond_c
    :try_start_4
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadFileTaskException;

    const-string v1, "Download Task Failed. isCancelled() is called."

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadFileTaskException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadFileTaskException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_b

    :catch_2
    move-exception v0

    .line 191
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 192
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mCallback:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-interface {v0, v1, v3, v3}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;->onCanceled(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;II)V

    .line 193
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 196
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_1

    :catch_3
    move-exception v1

    goto/16 :goto_0

    :catch_4
    move-exception v0

    .line 188
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 189
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mTransferred:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 196
    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_1

    :catch_5
    move-exception v1

    goto/16 :goto_0

    :catch_6
    move-exception v0

    .line 179
    :try_start_9
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->isPermanentFailCause(Lcom/sec/internal/helper/HttpRequest$HttpRequestException;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 180
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 181
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mCallback:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const/16 v5, 0x1e

    invoke-interface {v1, v4, v5, v3}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;->onCanceled(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;II)V

    goto :goto_a

    .line 183
    :cond_d
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mCallback:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const/4 v5, 0x3

    invoke-interface {v1, v4, v5, v3}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;->onCanceled(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;II)V

    .line 185
    :goto_a
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " happened. Retry download Task."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mTransferred:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 196
    :try_start_a
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    goto/16 :goto_1

    :catch_7
    move-exception v1

    goto/16 :goto_0

    :goto_b
    :try_start_b
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_8
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    goto :goto_c

    :catch_8
    move-exception v1

    .line 199
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 201
    :goto_c
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    .line 202
    throw v0
.end method

.method protected bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 66
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->doInBackground()Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
