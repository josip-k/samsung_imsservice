.class public Lcom/sec/internal/omanetapi/nms/IndividualFolder;
.super Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;
.source "IndividualFolder.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAttrFilter:Ljava/lang/String;

.field private final mFolderId:Ljava/lang/String;

.field private final mFromCursor:Ljava/lang/String;

.field private final mListFilter:Ljava/lang/String;

.field private final mMaxEntries:I

.field private final mPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const-class v0, Lcom/sec/internal/omanetapi/nms/IndividualFolder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/omanetapi/nms/IndividualFolder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V
    .locals 7

    move-object v6, p0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p11

    .line 32
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    move-object v0, p5

    .line 33
    iput-object v0, v6, Lcom/sec/internal/omanetapi/nms/IndividualFolder;->mFolderId:Ljava/lang/String;

    move-object v0, p6

    .line 34
    iput-object v0, v6, Lcom/sec/internal/omanetapi/nms/IndividualFolder;->mFromCursor:Ljava/lang/String;

    move v0, p7

    .line 35
    iput v0, v6, Lcom/sec/internal/omanetapi/nms/IndividualFolder;->mMaxEntries:I

    move-object v0, p8

    .line 36
    iput-object v0, v6, Lcom/sec/internal/omanetapi/nms/IndividualFolder;->mListFilter:Ljava/lang/String;

    move-object/from16 v0, p9

    .line 37
    iput-object v0, v6, Lcom/sec/internal/omanetapi/nms/IndividualFolder;->mPath:Ljava/lang/String;

    move-object/from16 v0, p10

    .line 38
    iput-object v0, v6, Lcom/sec/internal/omanetapi/nms/IndividualFolder;->mAttrFilter:Ljava/lang/String;

    .line 40
    invoke-virtual {p0}, Lcom/sec/internal/omanetapi/nms/IndividualFolder;->buildAPISpecificURLFromBase()V

    return-void
.end method


# virtual methods
.method protected buildAPISpecificURLFromBase()V
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mBaseUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "folders"

    .line 46
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 48
    iget-object v1, p0, Lcom/sec/internal/omanetapi/nms/IndividualFolder;->mFolderId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 50
    iget-object v1, p0, Lcom/sec/internal/omanetapi/nms/IndividualFolder;->mFromCursor:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "fromCursor"

    .line 51
    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 54
    :cond_0
    iget v1, p0, Lcom/sec/internal/omanetapi/nms/IndividualFolder;->mMaxEntries:I

    if-lez v1, :cond_1

    const-string v2, "maxEntries"

    .line 55
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 58
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/omanetapi/nms/IndividualFolder;->mListFilter:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v2, "listFilter"

    .line 59
    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 62
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/omanetapi/nms/IndividualFolder;->mPath:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string/jumbo v2, "path"

    .line 63
    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 66
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/omanetapi/nms/IndividualFolder;->mAttrFilter:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v2, "attrFilter"

    .line 67
    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 70
    :cond_4
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mBaseUrl:Ljava/lang/String;

    .line 71
    sget-object p0, Lcom/sec/internal/omanetapi/nms/IndividualFolder;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
