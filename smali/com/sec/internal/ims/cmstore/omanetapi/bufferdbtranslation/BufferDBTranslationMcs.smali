.class public Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;
.super Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;
.source "BufferDBTranslationMcs.java"


# instance fields
.field private LOG_TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
    .locals 1

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    .line 56
    const-class p2, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->LOG_TAG:Ljava/lang/String;

    .line 60
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private getAllToAddress(JZ)[Ljava/lang/String;
    .locals 6

    .line 489
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->queryGroupSMS(J)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 490
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p2

    if-eqz p2, :cond_1

    .line 491
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p2

    .line 492
    new-array v0, p2, [Ljava/lang/String;

    .line 494
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAllToAddress added address:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    .line 495
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "address"

    .line 496
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "KR"

    if-eqz p3, :cond_0

    add-int/lit8 v3, p2, 0x1

    .line 498
    :try_start_1
    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getE164FormatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p2

    :goto_1
    move p2, v3

    goto :goto_0

    :cond_0
    add-int/lit8 v3, p2, 0x1

    .line 500
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "tel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getE164FormatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 489
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    if-eqz p1, :cond_3

    .line 504
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v0
.end method

.method private getTelAddrFromParticipantTable(Ljava/lang/String;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 810
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 811
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->queryRCSParticipantDB(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 813
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const-string/jumbo v1, "uri"

    .line 816
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 815
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 817
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 820
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 822
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 811
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0

    :cond_2
    :goto_2
    if-eqz p1, :cond_3

    .line 825
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 826
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAddrFromParticipantTable : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private updatePayloadInfo(Lcom/sec/internal/omanetapi/nms/data/Object;Ljava/util/List;ILcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/omanetapi/nms/data/Object;",
            "Ljava/util/List<",
            "Lcom/sec/internal/omanetapi/common/data/FileUploadResponse;",
            ">;I",
            "Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;",
            ")V"
        }
    .end annotation

    .line 382
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "updatePayloadInfo "

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->LOG_TAG:Ljava/lang/String;

    const-string p1, "empty response data"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 389
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 393
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v1, v3, :cond_1

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 394
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/omanetapi/common/data/FileUploadResponse;

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 397
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_2

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 398
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lcom/sec/internal/omanetapi/common/data/FileUploadResponse;

    :cond_2
    if-lez p3, :cond_3

    const-string/jumbo p2, "render"

    goto :goto_1

    :cond_3
    const-string p2, "attachment"

    :goto_1
    if-eqz v1, :cond_4

    .line 403
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "updatePayloadInfo fullpart updation"

    invoke-static {v3, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    new-instance v3, Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;

    invoke-direct {v3}, Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;-><init>()V

    .line 406
    iget-object v5, v1, Lcom/sec/internal/omanetapi/common/data/FileUploadResponse;->contentType:Ljava/lang/String;

    iput-object v5, v3, Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;->contentType:Ljava/lang/String;

    .line 407
    iget-object v5, v1, Lcom/sec/internal/omanetapi/common/data/FileUploadResponse;->fileName:Ljava/lang/String;

    .line 408
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "attachment;filename="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;->contentDisposition:Ljava/lang/String;

    .line 409
    iput-object p2, v3, Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;->disposition:Ljava/lang/String;

    .line 410
    iput p3, v3, Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;->playingLength:I

    .line 411
    iget p3, v1, Lcom/sec/internal/omanetapi/common/data/FileUploadResponse;->size:I

    int-to-long v5, p3

    iput-wide v5, v3, Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;->size:J

    .line 413
    :try_start_0
    iget-object p3, v1, Lcom/sec/internal/omanetapi/common/data/FileUploadResponse;->href:Ljava/net/URL;

    iput-object p3, v3, Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;->href:Ljava/net/URL;

    .line 414
    new-instance p3, Ljava/net/URI;

    const-string v5, "cid:thumbnail_1"

    invoke-direct {p3, v5}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object p3, v3, Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;->fileIcon:Ljava/net/URI;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p3

    .line 416
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "File URL or URI exception, msg: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v5, p3}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    :goto_2
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    iget-object p3, v1, Lcom/sec/internal/omanetapi/common/data/FileUploadResponse;->contentType:Ljava/lang/String;

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setContentType([Ljava/lang/String;)V

    :cond_4
    if-eqz v2, :cond_5

    .line 423
    iget-object p3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p4, "updatePayloadInfo thumbPart updation"

    invoke-static {p3, p4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    new-instance p3, Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;

    invoke-direct {p3}, Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;-><init>()V

    .line 426
    iget-object p4, v2, Lcom/sec/internal/omanetapi/common/data/FileUploadResponse;->contentType:Ljava/lang/String;

    iput-object p4, p3, Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;->contentType:Ljava/lang/String;

    const-string p4, "icon"

    .line 427
    iput-object p4, p3, Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;->contentDisposition:Ljava/lang/String;

    .line 428
    iput-object p2, p3, Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;->disposition:Ljava/lang/String;

    const-string/jumbo p2, "thumbnail_1"

    .line 429
    iput-object p2, p3, Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;->contentId:Ljava/lang/String;

    .line 430
    iget p2, v2, Lcom/sec/internal/omanetapi/common/data/FileUploadResponse;->size:I

    int-to-long v5, p2

    iput-wide v5, p3, Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;->size:J

    .line 432
    :try_start_1
    iget-object p2, v2, Lcom/sec/internal/omanetapi/common/data/FileUploadResponse;->href:Ljava/net/URL;

    iput-object p2, p3, Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;->href:Ljava/net/URL;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p2

    .line 434
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->LOG_TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thumbs URL or URI exception, msg: "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    :goto_3
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 439
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;

    iput-object p0, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->payloadPart:[Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;

    .line 440
    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ge v4, p0, :cond_6

    .line 441
    iget-object p0, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->payloadPart:[Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;

    aput-object p2, p0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_6
    return-void
.end method


# virtual methods
.method public checkAndAddFlags(Landroid/database/Cursor;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p0, "locked"

    .line 999
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "\\Starred"

    .line 1000
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string/jumbo p0, "spam_type"

    .line 1002
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    if-ne p0, v0, :cond_1

    const-string p0, "\\Spam"

    .line 1003
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public getGroupSMSForSteadyUpload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/sec/internal/omanetapi/nms/data/Object;",
            "Lcom/sec/internal/helper/httpclient/HttpPostBody;",
            ">;"
        }
    .end annotation

    .line 967
    iget-wide v0, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->querySMSBufferDB(J)Landroid/database/Cursor;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 968
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 969
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Object;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Object;-><init>()V

    const-string v2, "group_id"

    .line 972
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    const-string v4, "hidden"

    .line 974
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 976
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getSmsObjectPairFromCursor hidden msg - shouldn\'t have been added for upload"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 994
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    .line 979
    :cond_0
    :try_start_1
    invoke-direct {p0, v2, v3, v5}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->getAllToAddress(JZ)[Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v0

    .line 983
    :goto_0
    new-instance v3, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-direct {v3, p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 985
    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setTo([Ljava/lang/String;)V

    const-string p0, "body"

    .line 987
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 988
    invoke-virtual {v3, p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setTextContent(Ljava/lang/String;)V

    .line 990
    invoke-virtual {v3}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->getAttributeList()Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    move-result-object p0

    .line 991
    iput-object p0, v1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    .line 992
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, p0

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 967
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0

    :cond_2
    :goto_2
    if-eqz p1, :cond_3

    .line 994
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v0
.end method

.method public getImdnResUrl(J)Ljava/lang/String;
    .locals 2

    .line 933
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->queryRCSMessageDBUsingRowId(J)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 934
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_1

    const-string/jumbo p2, "res_url"

    .line 936
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    .line 935
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 937
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getImdnResUrl resUrl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    .line 939
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/imdns"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 943
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2

    :catchall_0
    move-exception p0

    .line 933
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0

    :cond_1
    if-eqz p1, :cond_2

    .line 943
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLocalFileData(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Lcom/sec/internal/omanetapi/file/FileData;
    .locals 8

    .line 103
    new-instance v0, Lcom/sec/internal/omanetapi/file/FileData;

    invoke-direct {v0}, Lcom/sec/internal/omanetapi/file/FileData;-><init>()V

    .line 104
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->LOG_TAG:Ljava/lang/String;

    const-string v2, "getLocalFileData  "

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget v1, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    const/16 v2, 0xc

    const/4 v3, 0x0

    if-ne v1, v2, :cond_4

    .line 106
    iget-wide v1, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->queryrcsMessageBufferDB(J)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 108
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "imdn_message_id"

    .line 110
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 109
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 111
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 112
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->LOG_TAG:Ljava/lang/String;

    const-string v0, "getLocalFileData CorrelationId is empty! Do not upload"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v3

    .line 115
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->mTeleDBHelper:Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;->getFtRowFromTelephony(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v2, v4, v6

    if-nez v2, :cond_1

    .line 117
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid rowId received for imdn id: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v3

    .line 120
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "row id : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " for imdn id:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "content://im/ft_original/"

    .line 122
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 123
    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "file_name"

    .line 125
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 126
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->mContext:Landroid/content/Context;

    invoke-static {p0, v2, v1}, Lcom/sec/internal/helper/FileUtils;->copyFileToCacheFromUri(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "form-data; name=\"file-part\"; filename=\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "content_type"

    .line 129
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 130
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string p0, "file_path"

    .line 132
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p0

    .line 131
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 134
    :cond_2
    iput-object v2, v0, Lcom/sec/internal/omanetapi/file/FileData;->fileName:Ljava/lang/String;

    .line 135
    iput-object p0, v0, Lcom/sec/internal/omanetapi/file/FileData;->filePath:Ljava/lang/String;

    .line 136
    iput-object v3, v0, Lcom/sec/internal/omanetapi/file/FileData;->contentType:Ljava/lang/String;

    .line 137
    iput-object v1, v0, Lcom/sec/internal/omanetapi/file/FileData;->contentDisposition:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 141
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception p0

    .line 106
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0

    :cond_3
    if-eqz p1, :cond_4

    .line 141
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v3
.end method

.method protected getLocalFilePathForFtthumb(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "imdn_message_id"

    .line 872
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 871
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 873
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 874
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->LOG_TAG:Ljava/lang/String;

    const-string p1, "getLocalFilePathForFtthumb CorrelationId is empty! Do not upload"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 877
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->mTeleDBHelper:Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;->getFtRowFromTelephony(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 879
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getLocalFilePathForFtthumb Invalid rowId received for imdn id: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 882
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "row id : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " for imdn id:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "content://im/ft_thumbnail/"

    .line 884
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 885
    invoke-static {p1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 887
    invoke-static {p2}, Lcom/sec/internal/helper/FileUtils;->getFileNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 889
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->mContext:Landroid/content/Context;

    invoke-static {p0, p2, p1}, Lcom/sec/internal/helper/FileUtils;->copyFileToCacheFromUri(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getMcsThumbBody(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/internal/helper/httpclient/HttpPostBody;",
            ">;"
        }
    .end annotation

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    invoke-virtual {p0, p1, p3}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->getLocalFilePathForFtthumb(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 68
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo p3, "thumbnail_path"

    .line 69
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 71
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 72
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 74
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMcsThumbBody filePath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " localThumbPath: "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " thumbfile:"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_4

    .line 77
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 78
    invoke-static {p3}, Lcom/sec/internal/helper/FileUtils;->getFileNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 79
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p2, "jpg"

    .line 80
    invoke-static {p2}, Lcom/sec/internal/ims/cmstore/utils/Util;->getRandomFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 82
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "form-data; name=\"file\"; filename=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\""

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 84
    invoke-static {p1}, Lcom/sec/internal/helper/FileUtils;->getContentType(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    .line 85
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p1, "image/jpeg"

    .line 88
    :cond_3
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;->None:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;

    invoke-virtual {p0, p3, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getFileContentInBytes(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;)[B

    move-result-object v1

    if-eqz v1, :cond_4

    .line 89
    array-length v2, v1

    if-eqz v2, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 90
    new-instance v2, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    invoke-direct {v2, p2, p1, v1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_4
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, " ThumbnailFile payload size: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_5

    const-string p0, "content:"

    .line 95
    invoke-virtual {p3, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_5

    .line 96
    invoke-static {p3}, Lcom/sec/internal/helper/FileUtils;->removeFile(Ljava/lang/String;)Z

    :cond_5
    return-object v0
.end method

.method protected getMmsObjectFromPduAndAddress(Landroid/database/Cursor;)Lcom/sec/internal/omanetapi/nms/data/Object;
    .locals 12

    .line 612
    new-instance v0, Lcom/sec/internal/omanetapi/nms/data/Object;

    invoke-direct {v0}, Lcom/sec/internal/omanetapi/nms/data/Object;-><init>()V

    if-eqz p1, :cond_10

    .line 616
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 617
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/FlagList;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/FlagList;-><init>()V

    iput-object v1, v0, Lcom/sec/internal/omanetapi/nms/data/Object;->flags:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    .line 618
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v2, "read"

    .line 620
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 619
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string v3, "msg_box"

    .line 622
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 621
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const-wide/16 v5, 0x2

    const/4 v7, 0x1

    if-eq v2, v7, :cond_0

    cmp-long v2, v3, v5

    if-nez v2, :cond_1

    :cond_0
    const-string v2, "\\Seen"

    .line 625
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 627
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->checkAndAddFlags(Landroid/database/Cursor;Ljava/util/ArrayList;)V

    .line 628
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 629
    iget-object v2, v0, Lcom/sec/internal/omanetapi/nms/data/Object;->flags:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v2, Lcom/sec/internal/omanetapi/nms/data/FlagList;->flag:[Ljava/lang/String;

    :cond_2
    const-string/jumbo v1, "tr_id"

    .line 633
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 632
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 636
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isTrIdCorrelationId()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    .line 637
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v8, 0x2

    if-le v2, v8, :cond_3

    .line 638
    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/omanetapi/nms/data/Object;->correlationId:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v1, "m_id"

    .line 641
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 640
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/omanetapi/nms/data/Object;->correlationId:Ljava/lang/String;

    .line 644
    :goto_0
    new-instance v1, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 646
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->sFormatOfName:Ljava/text/SimpleDateFormat;

    new-instance v8, Ljava/util/Date;

    const-string v9, "date"

    .line 647
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 646
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-direct {v8, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 648
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setDate([Ljava/lang/String;)V

    const-string/jumbo v2, "sub"

    .line 650
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 651
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 652
    new-instance v8, Ljava/lang/String;

    sget-object v9, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v8, v2, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 653
    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setSubject([Ljava/lang/String;)V

    :cond_4
    const-string v2, "_bufferdbid"

    .line 656
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 657
    invoke-virtual {p0, v8, v9}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getAddrFromPduId(J)Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation$MmsParticipant;

    move-result-object v2

    const-wide/16 v10, 0x1

    cmp-long v10, v3, v10

    const-string v11, "KR"

    if-nez v10, :cond_6

    const-string v3, "IN"

    .line 660
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setDirection([Ljava/lang/String;)V

    .line 661
    iget-object v3, v2, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation$MmsParticipant;->mFrom:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string/jumbo v2, "unknown_address"

    .line 662
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setFrom([Ljava/lang/String;)V

    goto :goto_1

    .line 664
    :cond_5
    iget-object v2, v2, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation$MmsParticipant;->mFrom:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 665
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "tel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setFrom([Ljava/lang/String;)V

    .line 667
    :goto_1
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserCtn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v11}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getTelE164FormatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setTo([Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    cmp-long v3, v3, v5

    if-nez v3, :cond_9

    const-string v3, "OUT"

    .line 669
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setDirection([Ljava/lang/String;)V

    .line 671
    iget-object v3, v2, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation$MmsParticipant;->mTo:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-eqz v3, :cond_8

    .line 672
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 673
    iget-object v2, v2, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation$MmsParticipant;->mTo:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 674
    invoke-virtual {p0, v4, v11}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getTelE164FormatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 676
    :cond_7
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setTo([Ljava/lang/String;)V

    .line 678
    :cond_8
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserCtn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v11}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getTelE164FormatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setFrom([Ljava/lang/String;)V

    :cond_9
    :goto_3
    const-string v2, "multimedia-message"

    .line 680
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setMessageContext([Ljava/lang/String;)V

    const-string/jumbo v2, "text_only"

    .line 682
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 683
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 684
    invoke-virtual {p0, v8, v9}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->queryPartsBufferDBUsingPduBufferId(J)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 686
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_c

    :cond_a
    const-string v4, "ct"

    .line 688
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "text/plain"

    .line 689
    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string/jumbo v4, "text"

    .line 690
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 692
    :cond_b
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_a

    goto :goto_5

    :catchall_0
    move-exception p0

    .line 684
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0

    :cond_c
    :goto_5
    if-eqz v3, :cond_d

    .line 695
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 696
    :cond_d
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 697
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 698
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setTextContent(Ljava/lang/String;)V

    :cond_e
    const-string/jumbo v2, "safe_message"

    .line 701
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    if-ne p1, v7, :cond_f

    const-string/jumbo p1, "true"

    .line 703
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setSafetyMessage([Ljava/lang/String;)V

    .line 706
    :cond_f
    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->getAttributeList()Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    move-result-object p1

    .line 707
    iput-object p1, v0, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    .line 711
    :cond_10
    iget-object p1, v0, Lcom/sec/internal/omanetapi/nms/data/Object;->correlationId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 712
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->LOG_TAG:Ljava/lang/String;

    const-string p1, "getMmsObjectFromPduAndAddress: correlation id is empty!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_11
    return-object v0
.end method

.method public getMmsObjectPairFromCursor(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/sec/internal/omanetapi/nms/data/Object;",
            "Lcom/sec/internal/helper/httpclient/HttpPostBody;",
            ">;"
        }
    .end annotation

    .line 727
    iget-wide v0, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->querymmsPduBufferDB(J)Landroid/database/Cursor;

    move-result-object v0

    .line 728
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->getMmsObjectFromPduAndAddress(Landroid/database/Cursor;)Lcom/sec/internal/omanetapi/nms/data/Object;

    move-result-object v1

    const-string/jumbo v2, "text_only"

    .line 730
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    .line 732
    iget-wide v2, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    invoke-virtual {p0, v2, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->queryPartsBufferDBUsingPduBufferId(J)Landroid/database/Cursor;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->getMmsPartHttpPayloadFromCursor(Landroid/database/Cursor;)Lcom/sec/internal/helper/httpclient/HttpPostBody;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 734
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 735
    new-instance p1, Landroid/util/Pair;

    invoke-direct {p1, v1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_0

    .line 727
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p0
.end method

.method protected getMmsPartHttpPayloadFromCursor(Landroid/database/Cursor;)Lcom/sec/internal/helper/httpclient/HttpPostBody;
    .locals 9

    const-string v0, "."

    .line 742
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    if-eqz p1, :cond_c

    .line 746
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_0
    const-string v3, "_id"

    .line 751
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 750
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ct"

    .line 753
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 752
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 754
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-static {v4}, Lcom/sec/internal/helper/translate/FileExtensionTranslator;->isTranslationDefined(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    goto/16 :goto_3

    :cond_1
    const-string v5, "cl"

    .line 759
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 758
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 760
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v5, "name"

    .line 761
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 762
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 763
    invoke-static {v4}, Lcom/sec/internal/helper/translate/FileExtensionTranslator;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/internal/ims/cmstore/utils/Util;->getRandomFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 766
    :cond_2
    new-instance v6, Ljava/lang/String;

    sget-object v7, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v5, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object v5, v6

    .line 768
    :cond_3
    :goto_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v5, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_4

    .line 769
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/sec/internal/helper/translate/FileExtensionTranslator;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 772
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "attachment;filename=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "cid"

    .line 773
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 774
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 775
    new-instance v7, Ljava/lang/String;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v7, v6, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object v6, v7

    :cond_5
    const-string v7, "application/smil"

    .line 779
    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    const-string/jumbo v7, "text/plain"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_1

    .line 783
    :cond_6
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {p0, v7, v8}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getDataFromPartFile(J)[B

    move-result-object v3

    if-nez v3, :cond_7

    goto :goto_3

    .line 787
    :cond_7
    new-instance v7, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    invoke-direct {v7, v5, v4, v3, v6}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V

    const-string v3, "binary"

    .line 788
    invoke-virtual {v7, v3}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->setContentTransferEncoding(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    :goto_1
    const-string/jumbo v3, "text"

    .line 780
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 781
    new-instance v7, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    invoke-direct {v7, v5, v4, v3, v6}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    :goto_2
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 793
    :cond_9
    :goto_3
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 795
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_a

    .line 804
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v2

    .line 799
    :cond_a
    :try_start_1
    new-instance p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    const-string v0, "form-data;name=\"attachments\""

    const-string v2, "multipart/mixed"

    invoke-direct {p0, v0, v2, v1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 804
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p0

    :cond_b
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :catchall_0
    move-exception p0

    .line 745
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0

    :cond_c
    :goto_5
    return-object v2
.end method

.method protected getObjectPairFromCursor(Landroid/database/Cursor;Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/sec/internal/omanetapi/nms/data/Object;",
            "Lcom/sec/internal/helper/httpclient/HttpPostBody;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 177
    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->getObjectPairFromCursor(Landroid/database/Cursor;Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;Ljava/util/List;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method protected getObjectPairFromCursor(Landroid/database/Cursor;Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;Ljava/util/List;)Landroid/util/Pair;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;",
            "Ljava/util/List<",
            "Lcom/sec/internal/omanetapi/common/data/FileUploadResponse;",
            ">;)",
            "Landroid/util/Pair<",
            "Lcom/sec/internal/omanetapi/nms/data/Object;",
            "Lcom/sec/internal/helper/httpclient/HttpPostBody;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    const-string/jumbo v3, "status"

    const-string/jumbo v4, "timestamp"

    .line 182
    iget-object v5, v1, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getObjectPairFromCursor type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    if-nez v2, :cond_0

    return-object v5

    .line 188
    :cond_0
    new-instance v6, Lcom/sec/internal/omanetapi/nms/data/Object;

    invoke-direct {v6}, Lcom/sec/internal/omanetapi/nms/data/Object;-><init>()V

    .line 191
    new-instance v7, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;

    iget-object v8, v1, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-direct {v7, v8}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    const-wide/16 v8, 0x0

    .line 199
    :try_start_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_18

    if-nez v14, :cond_1

    .line 310
    :try_start_1
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v5

    :catch_0
    move-exception v0

    move-object/from16 v24, v3

    move-object/from16 v25, v4

    move-object v4, v5

    move-object v13, v4

    move-wide v14, v8

    move-wide/from16 v16, v14

    const-wide/16 v8, -0x1

    :goto_0
    const/4 v10, 0x1

    const/4 v12, 0x0

    goto/16 :goto_18

    :cond_1
    :try_start_2
    const-string v14, "delivered_timestamp"

    .line 202
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_18

    cmp-long v16, v14, v8

    if-nez v16, :cond_2

    :try_start_3
    const-string/jumbo v12, "sent_timestamp"

    .line 204
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object/from16 v24, v3

    move-object/from16 v25, v4

    move-object v4, v5

    move-object v13, v4

    move-wide/from16 v16, v8

    const-wide/16 v8, -0x1

    const/4 v10, 0x1

    const/4 v12, 0x0

    move-object v3, v0

    goto/16 :goto_16

    :cond_2
    :goto_1
    :try_start_4
    const-string v12, "chat_id"

    .line 207
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 206
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "res_url"

    .line 210
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 209
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_17

    :try_start_5
    const-string v8, "direction"

    .line 212
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 211
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_16

    int-to-long v8, v8

    :try_start_6
    const-string v10, "lastmodseq"

    .line 214
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 213
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_15

    move-object/from16 v20, v12

    int-to-long v11, v10

    .line 216
    :try_start_7
    new-instance v10, Lcom/sec/internal/omanetapi/nms/data/FlagList;

    invoke-direct {v10}, Lcom/sec/internal/omanetapi/nms/data/FlagList;-><init>()V

    iput-object v10, v6, Lcom/sec/internal/omanetapi/nms/data/Object;->flags:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    .line 217
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 218
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_14

    move-wide/from16 v16, v11

    :try_start_8
    const-string v11, "ft_status"

    .line 219
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 221
    iget-object v12, v1, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->LOG_TAG:Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_13

    move-object/from16 v21, v13

    :try_start_9
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_12

    move-wide/from16 v22, v14

    :try_start_a
    const-string v14, " status: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " direction: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, " readFt: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    sget-object v12, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->CANCELLATION:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {v12}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->getId()I

    move-result v13
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_11

    const-string v14, "\\Seen"

    const-string v15, "\\Canceled"

    if-ne v5, v13, :cond_3

    :try_start_b
    sget-object v13, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-virtual {v13}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result v13
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move-object/from16 v24, v3

    move-object/from16 v25, v4

    int-to-long v3, v13

    cmp-long v3, v8, v3

    if-nez v3, :cond_4

    .line 223
    :try_start_c
    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object/from16 v24, v3

    move-object/from16 v25, v4

    :goto_2
    move-object v3, v0

    move-object/from16 v13, v21

    move-wide/from16 v14, v22

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_3
    const/4 v10, 0x1

    :goto_4
    const/4 v12, 0x0

    goto/16 :goto_16

    :cond_3
    move-object/from16 v24, v3

    move-object/from16 v25, v4

    .line 225
    :cond_4
    :try_start_d
    invoke-virtual {v12}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->getId()I

    move-result v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_10

    if-eq v5, v3, :cond_7

    :try_start_e
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->CANCELLATION_UNREAD:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->getId()I

    move-result v3

    if-ne v5, v3, :cond_5

    goto :goto_5

    .line 227
    :cond_5
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->READ:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->getId()I

    move-result v4

    if-eq v5, v4, :cond_6

    .line 228
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->getId()I

    move-result v3

    if-eq v11, v3, :cond_6

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 229
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result v3

    int-to-long v3, v3

    cmp-long v3, v8, v3

    if-nez v3, :cond_8

    .line 230
    :cond_6
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_2

    .line 226
    :cond_7
    :goto_5
    :try_start_f
    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    :cond_8
    :goto_6
    invoke-virtual {v1, v2, v10}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->checkAndAddFlags(Landroid/database/Cursor;Ljava/util/ArrayList;)V

    .line 234
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_10

    if-nez v3, :cond_9

    .line 235
    :try_start_10
    iget-object v3, v6, Lcom/sec/internal/omanetapi/nms/data/Object;->flags:Lcom/sec/internal/omanetapi/nms/data/FlagList;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    const/4 v4, 0x0

    :try_start_11
    new-array v5, v4, [Ljava/lang/String;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    :try_start_12
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    iput-object v4, v3, Lcom/sec/internal/omanetapi/nms/data/FlagList;->flag:[Ljava/lang/String;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    goto :goto_8

    :catchall_3
    move-exception v0

    move-object v3, v0

    move v12, v4

    move-object/from16 v13, v21

    move-wide/from16 v14, v22

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_7
    const/4 v10, 0x1

    goto/16 :goto_16

    .line 238
    :cond_9
    :goto_8
    :try_start_13
    iget-object v3, v1, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->sFormatOfName:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    const-string v5, "inserted_timestamp"

    .line 239
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 238
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-direct {v4, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 240
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setDate([Ljava/lang/String;)V

    .line 241
    iget-object v4, v1, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getObjectPairFromCursor :: direction : "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " messagetype : "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " date : "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "content_type"

    .line 243
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, v20

    .line 244
    invoke-direct {v1, v4}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->getTelAddrFromParticipantTable(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v5
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_10

    .line 245
    :try_start_14
    invoke-virtual {v1, v7, v5, v0, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->setCpmTransMessage(Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;Ljava/util/Set;Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;Ljava/lang/String;)Z

    .line 246
    invoke-virtual {v1, v7, v4, v8, v9}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->setInformationFromSession(Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;Ljava/lang/String;J)Z

    move-result v4

    .line 248
    sget-object v10, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-virtual {v10}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result v10
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_f

    int-to-long v10, v10

    cmp-long v10, v8, v10

    if-nez v10, :cond_b

    :try_start_15
    const-string/jumbo v4, "remote_uri"

    .line 250
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 249
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_a

    .line 251
    sget-object v10, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;->MESSAGE_CHAT:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    if-ne v0, v10, :cond_a

    .line 310
    :try_start_16
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_1

    const/4 v1, 0x0

    return-object v1

    :catch_1
    move-exception v0

    move-object/from16 v13, v21

    move-wide/from16 v14, v22

    const/4 v4, 0x0

    goto/16 :goto_0

    .line 254
    :cond_a
    :try_start_17
    invoke-virtual {v1, v7, v4}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->setTransToFrom(Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    goto :goto_9

    :catchall_4
    move-exception v0

    move-object v3, v0

    move-object/from16 v13, v21

    move-wide/from16 v14, v22

    const/4 v4, 0x0

    goto/16 :goto_3

    .line 255
    :cond_b
    :try_start_18
    sget-object v10, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-virtual {v10}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result v10
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_f

    int-to-long v10, v10

    cmp-long v10, v8, v10

    if-nez v10, :cond_15

    const/4 v10, 0x1

    :try_start_19
    new-array v11, v10, [Ljava/lang/String;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_e

    :try_start_1a
    const-string v10, "Out"
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_f

    const/4 v12, 0x0

    :try_start_1b
    aput-object v10, v11, v12
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_d

    .line 256
    :try_start_1c
    invoke-virtual {v7, v11}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setDirection([Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_f

    if-nez v4, :cond_c

    .line 258
    :try_start_1d
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v5, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-virtual {v7, v4}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setTo([Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_4

    :cond_c
    const/4 v4, 0x1

    :try_start_1e
    new-array v10, v4, [Ljava/lang/String;
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_c

    .line 260
    :try_start_1f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "tel:"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v11}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserCtn()Ljava/lang/String;

    move-result-object v11

    const-string v12, "KR"

    invoke-virtual {v1, v11, v12}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getE164FormatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_f

    const/4 v11, 0x0

    :try_start_20
    aput-object v4, v10, v11
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_b

    :try_start_21
    invoke-virtual {v7, v10}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setFrom([Ljava/lang/String;)V

    :goto_9
    const-string/jumbo v4, "reference_type"

    .line 264
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 265
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_f

    if-nez v10, :cond_d

    :try_start_22
    const-string v10, "0"

    invoke-static {v4, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_d

    .line 266
    new-instance v10, Lcom/sec/internal/omanetapi/nms/data/ExtendedRCS;

    invoke-direct {v10}, Lcom/sec/internal/omanetapi/nms/data/ExtendedRCS;-><init>()V

    .line 267
    new-instance v11, Lcom/google/gson/Gson;

    invoke-direct {v11}, Lcom/google/gson/Gson;-><init>()V

    const-string/jumbo v12, "reference_id"

    .line 268
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v10, Lcom/sec/internal/omanetapi/nms/data/ExtendedRCS;->mReferenceId:Ljava/lang/String;

    .line 269
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v10, Lcom/sec/internal/omanetapi/nms/data/ExtendedRCS;->mReferenceType:I

    const-string/jumbo v4, "reference_value"

    .line 270
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v10, Lcom/sec/internal/omanetapi/nms/data/ExtendedRCS;->mReferenceValue:Ljava/lang/String;

    .line 272
    invoke-virtual {v11, v10}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 273
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setExtendedRCS([Ljava/lang/String;)V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_4

    :cond_d
    :try_start_23
    const-string/jumbo v4, "suggestion"

    .line 275
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 276
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_f

    if-nez v10, :cond_e

    .line 277
    :try_start_24
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setChipList([Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_4

    :cond_e
    :try_start_25
    const-string v4, "maap_traffic_type"

    .line 279
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 280
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_f

    if-nez v10, :cond_f

    .line 281
    :try_start_26
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setTrafficType([Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_4

    :cond_f
    :try_start_27
    const-string v4, "imdn_message_id"

    .line 284
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 283
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_f

    .line 286
    :try_start_28
    iput-object v4, v6, Lcom/sec/internal/omanetapi/nms/data/Object;->correlationId:Ljava/lang/String;

    .line 288
    sget-object v10, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;->MESSAGE_FT:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_a

    if-ne v0, v10, :cond_11

    :try_start_29
    const-string/jumbo v0, "playing_length"

    .line 289
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    move-object/from16 v3, p3

    .line 290
    invoke-direct {v1, v6, v3, v0, v7}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->updatePayloadInfo(Lcom/sec/internal/omanetapi/nms/data/Object;Ljava/util/List;ILcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;)V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_5

    :cond_10
    :goto_a
    const/4 v10, 0x1

    const/4 v12, 0x0

    goto/16 :goto_c

    :catchall_5
    move-exception v0

    move-object v3, v0

    move-object/from16 v13, v21

    move-wide/from16 v14, v22

    goto/16 :goto_3

    :cond_11
    :try_start_2a
    const-string v0, "body"

    .line 292
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 294
    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/utils/Util;->isLocationPushContentType(Ljava/lang/String;)Z

    move-result v10
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_a

    if-eqz v10, :cond_12

    const/4 v10, 0x1

    :try_start_2b
    new-array v3, v10, [Ljava/lang/String;
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_7

    :try_start_2c
    const-string v10, "application/vnd.gsma.rcspushlocation+xml"
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_5

    const/4 v11, 0x0

    :try_start_2d
    aput-object v10, v3, v11
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_6

    .line 295
    :try_start_2e
    invoke-virtual {v7, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setContentType([Ljava/lang/String;)V

    .line 296
    new-instance v3, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;

    invoke-direct {v3}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;-><init>()V

    .line 298
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_10

    .line 299
    invoke-virtual {v3, v0}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->getGeoJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 300
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setMessageBody([Ljava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_5

    goto :goto_a

    :catchall_6
    move-exception v0

    move-object v3, v0

    move v12, v11

    move-object/from16 v13, v21

    move-wide/from16 v14, v22

    goto/16 :goto_7

    :catchall_7
    move-exception v0

    move-object v3, v0

    move-object/from16 v13, v21

    move-wide/from16 v14, v22

    goto/16 :goto_4

    .line 302
    :cond_12
    :try_start_2f
    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/utils/Util;->isBotMessageContentType(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_14

    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/utils/Util;->isBotResponseMessageContentType(Ljava/lang/String;)Z

    move-result v10
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_a

    if-eqz v10, :cond_13

    goto :goto_b

    :cond_13
    const/4 v10, 0x1

    :try_start_30
    new-array v3, v10, [Ljava/lang/String;

    const-string/jumbo v11, "text/plain"
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_8

    const/4 v12, 0x0

    :try_start_31
    aput-object v11, v3, v12

    .line 306
    invoke-virtual {v7, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setContentType([Ljava/lang/String;)V

    .line 307
    invoke-virtual {v7, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setTextContent(Ljava/lang/String;)V

    goto :goto_c

    :catchall_8
    move-exception v0

    goto :goto_d

    :cond_14
    :goto_b
    const/4 v10, 0x1

    const/4 v12, 0x0

    .line 303
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setContentType([Ljava/lang/String;)V

    .line 304
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setMessageBody([Ljava/lang/String;)V
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_9

    .line 310
    :goto_c
    :try_start_32
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_32} :catch_2

    move-wide/from16 v2, v16

    move-object/from16 v13, v21

    move-wide/from16 v14, v22

    goto/16 :goto_19

    :catch_2
    move-exception v0

    move-object/from16 v13, v21

    move-wide/from16 v14, v22

    goto/16 :goto_18

    :catchall_9
    move-exception v0

    goto :goto_e

    :catchall_a
    move-exception v0

    const/4 v10, 0x1

    :goto_d
    const/4 v12, 0x0

    :goto_e
    move-object v3, v0

    move-object/from16 v13, v21

    move-wide/from16 v14, v22

    goto/16 :goto_16

    :catchall_b
    move-exception v0

    move v12, v11

    goto :goto_f

    :catchall_c
    move-exception v0

    move v10, v4

    goto :goto_10

    :catchall_d
    move-exception v0

    :goto_f
    const/4 v10, 0x1

    goto :goto_11

    :catchall_e
    move-exception v0

    goto :goto_10

    :cond_15
    const/4 v10, 0x1

    const/4 v12, 0x0

    :try_start_33
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_33} :catch_3

    const/4 v1, 0x0

    return-object v1

    :catch_3
    move-exception v0

    move-object/from16 v13, v21

    move-wide/from16 v14, v22

    const/4 v4, 0x0

    goto/16 :goto_18

    :catchall_f
    move-exception v0

    const/4 v10, 0x1

    :goto_10
    const/4 v12, 0x0

    :goto_11
    move-object v3, v0

    move-object/from16 v13, v21

    move-wide/from16 v14, v22

    const/4 v4, 0x0

    goto/16 :goto_16

    :catchall_10
    move-exception v0

    goto :goto_12

    :catchall_11
    move-exception v0

    move-object/from16 v24, v3

    move-object/from16 v25, v4

    :goto_12
    const/4 v10, 0x1

    const/4 v12, 0x0

    move-object v3, v0

    move-object/from16 v13, v21

    move-wide/from16 v14, v22

    goto :goto_14

    :catchall_12
    move-exception v0

    move-object/from16 v24, v3

    move-object/from16 v25, v4

    move-wide/from16 v22, v14

    const/4 v10, 0x1

    const/4 v12, 0x0

    move-object v3, v0

    move-object/from16 v13, v21

    goto :goto_14

    :catchall_13
    move-exception v0

    move-object/from16 v24, v3

    move-object/from16 v25, v4

    goto :goto_13

    :catchall_14
    move-exception v0

    move-object/from16 v24, v3

    move-object/from16 v25, v4

    move-wide/from16 v16, v11

    :goto_13
    move-object/from16 v21, v13

    move-wide/from16 v22, v14

    const/4 v10, 0x1

    const/4 v12, 0x0

    move-object v3, v0

    :goto_14
    const/4 v4, 0x0

    const/4 v5, 0x0

    goto :goto_16

    :catchall_15
    move-exception v0

    move-object/from16 v24, v3

    move-object/from16 v25, v4

    move-object/from16 v21, v13

    move-wide/from16 v22, v14

    const/4 v10, 0x1

    const/4 v12, 0x0

    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    goto :goto_15

    :catchall_16
    move-exception v0

    move-object/from16 v24, v3

    move-object/from16 v25, v4

    move-object/from16 v21, v13

    move-wide/from16 v22, v14

    const/4 v10, 0x1

    const/4 v12, 0x0

    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v8, -0x1

    goto :goto_15

    :catchall_17
    move-exception v0

    move-object/from16 v24, v3

    move-object/from16 v25, v4

    move-wide/from16 v22, v14

    const/4 v10, 0x1

    const/4 v12, 0x0

    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v8, -0x1

    const/4 v13, 0x0

    goto :goto_15

    :catchall_18
    move-exception v0

    move-object/from16 v24, v3

    move-object/from16 v25, v4

    const/4 v10, 0x1

    const/4 v12, 0x0

    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v8, -0x1

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    :goto_15
    const-wide/16 v16, 0x0

    .line 198
    :goto_16
    :try_start_34
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_19

    goto :goto_17

    :catchall_19
    move-exception v0

    move-object v2, v0

    :try_start_35
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_17
    throw v3
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_35} :catch_4

    :catch_4
    move-exception v0

    .line 311
    :goto_18
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-wide/from16 v2, v16

    :goto_19
    if-eqz v5, :cond_20

    .line 315
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result v0

    int-to-long v10, v0

    cmp-long v0, v8, v10

    if-nez v0, :cond_20

    .line 316
    new-instance v0, Lcom/sec/internal/omanetapi/nms/data/ImdnList;

    invoke-direct {v0}, Lcom/sec/internal/omanetapi/nms/data/ImdnList;-><init>()V

    .line 318
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v8

    .line 319
    new-array v9, v8, [Ljava/lang/String;

    invoke-interface {v5, v9}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 320
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move v10, v12

    :goto_1a
    if-ge v10, v8, :cond_1c

    .line 323
    aget-object v11, v5, v10

    invoke-virtual {v1, v4, v11}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->queryRCSNotificationDBUsingImdnAndTelUri(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    if-eqz v11, :cond_19

    .line 324
    :try_start_36
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v16

    if-eqz v16, :cond_19

    .line 325
    new-instance v12, Lcom/sec/internal/omanetapi/nms/data/ImdnObject;

    invoke-direct {v12}, Lcom/sec/internal/omanetapi/nms/data/ImdnObject;-><init>()V

    move-object/from16 v16, v4

    .line 326
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v17, v7

    move/from16 p1, v8

    move-object/from16 v8, v25

    .line 328
    invoke-interface {v11, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 327
    invoke-interface {v11, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    const-wide/16 v18, 0x0

    cmp-long v7, v21, v18

    if-eqz v7, :cond_17

    move-object/from16 v20, v6

    move-object/from16 v7, v24

    .line 331
    invoke-interface {v11, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 330
    invoke-interface {v11, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v24, v7

    .line 332
    iget-object v7, v1, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->sFormatOfName:Ljava/text/SimpleDateFormat;

    move-wide/from16 p2, v2

    .line 333
    invoke-interface {v11, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 332
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 334
    new-instance v3, Lcom/sec/internal/omanetapi/nms/data/ImdnInfo;

    invoke-direct {v3}, Lcom/sec/internal/omanetapi/nms/data/ImdnInfo;-><init>()V

    .line 335
    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {v7}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result v7
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_1a

    move-object/from16 v25, v8

    const-string v8, "delivered"

    if-ne v7, v6, :cond_16

    .line 336
    :try_start_37
    iput-object v2, v3, Lcom/sec/internal/omanetapi/nms/data/ImdnInfo;->date:Ljava/lang/String;

    .line 337
    iput-object v8, v3, Lcom/sec/internal/omanetapi/nms/data/ImdnInfo;->type:Ljava/lang/String;

    .line 338
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1b
    const/4 v2, 0x1

    goto :goto_1c

    .line 340
    :cond_16
    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {v7}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result v7

    if-ne v7, v6, :cond_18

    .line 341
    iget-object v6, v1, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->sFormatOfName:Ljava/text/SimpleDateFormat;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/sec/internal/omanetapi/nms/data/ImdnInfo;->date:Ljava/lang/String;

    .line 342
    iput-object v8, v3, Lcom/sec/internal/omanetapi/nms/data/ImdnInfo;->type:Ljava/lang/String;

    .line 343
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    new-instance v3, Lcom/sec/internal/omanetapi/nms/data/ImdnInfo;

    invoke-direct {v3}, Lcom/sec/internal/omanetapi/nms/data/ImdnInfo;-><init>()V

    .line 346
    iput-object v2, v3, Lcom/sec/internal/omanetapi/nms/data/ImdnInfo;->date:Ljava/lang/String;

    const-string v2, "displayed"

    .line 347
    iput-object v2, v3, Lcom/sec/internal/omanetapi/nms/data/ImdnInfo;->type:Ljava/lang/String;

    .line 348
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_17
    move-wide/from16 p2, v2

    move-object/from16 v20, v6

    move-object/from16 v25, v8

    :cond_18
    const/4 v2, 0x0

    :goto_1c
    if-lez v2, :cond_1a

    .line 353
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/sec/internal/omanetapi/nms/data/ImdnInfo;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/sec/internal/omanetapi/nms/data/ImdnInfo;

    iput-object v2, v12, Lcom/sec/internal/omanetapi/nms/data/ImdnObject;->imdnInfo:[Lcom/sec/internal/omanetapi/nms/data/ImdnInfo;

    .line 354
    aget-object v2, v5, v10

    iput-object v2, v12, Lcom/sec/internal/omanetapi/nms/data/ImdnObject;->originalTo:Ljava/lang/String;

    .line 355
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_1a

    goto :goto_1e

    :catchall_1a
    move-exception v0

    move-object v1, v0

    .line 323
    :try_start_38
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_1b

    goto :goto_1d

    :catchall_1b
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1d
    throw v1

    :cond_19
    move-wide/from16 p2, v2

    move-object/from16 v16, v4

    move-object/from16 v20, v6

    move-object/from16 v17, v7

    move/from16 p1, v8

    :cond_1a
    :goto_1e
    if-eqz v11, :cond_1b

    .line 358
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_1b
    add-int/lit8 v10, v10, 0x1

    move/from16 v8, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, v16

    move-object/from16 v7, v17

    move-object/from16 v6, v20

    const/4 v12, 0x0

    goto/16 :goto_1a

    :cond_1c
    move-wide/from16 p2, v2

    move-object/from16 v20, v6

    move-object/from16 v17, v7

    .line 360
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1f

    .line 361
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 362
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/imdns"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 363
    iput-object v1, v0, Lcom/sec/internal/omanetapi/nms/data/ImdnList;->resourceURL:Ljava/lang/String;

    :cond_1d
    move-wide/from16 v1, p2

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_1e

    .line 367
    iput-wide v1, v0, Lcom/sec/internal/omanetapi/nms/data/ImdnList;->lastModSeq:J

    .line 369
    :cond_1e
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/sec/internal/omanetapi/nms/data/ImdnObject;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/sec/internal/omanetapi/nms/data/ImdnObject;

    iput-object v1, v0, Lcom/sec/internal/omanetapi/nms/data/ImdnList;->imdn:[Lcom/sec/internal/omanetapi/nms/data/ImdnObject;

    move-object/from16 v2, v20

    .line 370
    iput-object v0, v2, Lcom/sec/internal/omanetapi/nms/data/Object;->imdns:Lcom/sec/internal/omanetapi/nms/data/ImdnList;

    goto :goto_1f

    :cond_1f
    move-object/from16 v2, v20

    .line 372
    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getObjectPairFromCursor ImdnObjectList.isEmpty() and not added to object"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    :cond_20
    move-object v2, v6

    move-object/from16 v17, v7

    .line 375
    :goto_1f
    invoke-virtual/range {v17 .. v17}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->getAttributeList()Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    move-result-object v0

    .line 376
    iput-object v0, v2, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    .line 377
    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getRCSObjectPairFromCursor(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Ljava/util/List;)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;",
            "Ljava/util/List<",
            "Lcom/sec/internal/omanetapi/common/data/FileUploadResponse;",
            ">;)",
            "Landroid/util/Pair<",
            "Lcom/sec/internal/omanetapi/nms/data/Object;",
            "Lcom/sec/internal/helper/httpclient/HttpPostBody;",
            ">;"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getRCSObjectPairFromCursor ::"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget v0, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const/16 v3, 0xc

    if-ne v0, v3, :cond_3

    .line 156
    :cond_0
    iget-wide v3, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    invoke-virtual {p0, v3, v4}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->queryrcsMessageBufferDB(J)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 158
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "is_filetransfer"

    .line 159
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 160
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRCSObjectPairFromCursor :: isFt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v0, v2, :cond_1

    .line 163
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getFtObjectPairFromCursor(Landroid/database/Cursor;Ljava/util/List;)Landroid/util/Pair;

    move-result-object p0

    goto :goto_0

    .line 166
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getChatObjectPairFromCursor(Landroid/database/Cursor;)Landroid/util/Pair;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    move-object v1, p0

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 156
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0

    :cond_2
    :goto_2
    if-eqz p1, :cond_3

    .line 170
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v1
.end method

.method public getSmsObjectPairFromCursor(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Landroid/util/Pair;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/sec/internal/omanetapi/nms/data/Object;",
            "Lcom/sec/internal/helper/httpclient/HttpPostBody;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "KR"

    const-string/jumbo v2, "tel:"

    move-object/from16 v3, p1

    .line 514
    iget-wide v3, v3, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    invoke-virtual {v0, v3, v4}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->querySMSBufferDB(J)Landroid/database/Cursor;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_a

    .line 516
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 517
    new-instance v5, Lcom/sec/internal/omanetapi/nms/data/Object;

    invoke-direct {v5}, Lcom/sec/internal/omanetapi/nms/data/Object;-><init>()V

    const-string v6, "correlation_tag"

    .line 520
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/sec/internal/omanetapi/nms/data/Object;->correlationTag:Ljava/lang/String;

    .line 521
    new-instance v6, Lcom/sec/internal/omanetapi/nms/data/FlagList;

    invoke-direct {v6}, Lcom/sec/internal/omanetapi/nms/data/FlagList;-><init>()V

    iput-object v6, v5, Lcom/sec/internal/omanetapi/nms/data/Object;->flags:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    .line 522
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v7, "read"

    .line 525
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 524
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const-string/jumbo v8, "type"

    .line 527
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 526
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const-wide/16 v10, 0x2

    const/4 v12, 0x1

    if-eq v7, v12, :cond_0

    cmp-long v7, v8, v10

    if-nez v7, :cond_1

    :cond_0
    const-string v7, "\\Seen"

    .line 530
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 532
    :cond_1
    invoke-virtual {v0, v3, v6}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->checkAndAddFlags(Landroid/database/Cursor;Ljava/util/ArrayList;)V

    .line 533
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    const/4 v13, 0x0

    if-nez v7, :cond_2

    .line 534
    iget-object v7, v5, Lcom/sec/internal/omanetapi/nms/data/Object;->flags:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    new-array v14, v13, [Ljava/lang/String;

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    iput-object v6, v7, Lcom/sec/internal/omanetapi/nms/data/FlagList;->flag:[Ljava/lang/String;

    :cond_2
    const-string v6, "address"

    .line 537
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v12, [Ljava/lang/String;

    .line 538
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getE164FormatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v7, v13

    const-string v14, "@"

    .line 539
    invoke-virtual {v6, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 540
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v7

    :cond_3
    const-string v14, "group_id"

    .line 543
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v3, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    if-eqz v14, :cond_5

    const-string v7, "hidden"

    .line 545
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-ne v7, v12, :cond_4

    .line 547
    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getSmsObjectPairFromCursor hidden msg - shouldn\'t have been added for upload"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 605
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    return-object v4

    :cond_4
    int-to-long v14, v14

    .line 550
    :try_start_1
    invoke-direct {v0, v14, v15, v13}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->getAllToAddress(JZ)[Ljava/lang/String;

    move-result-object v7

    .line 554
    :cond_5
    new-instance v14, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;

    iget-object v15, v0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-direct {v14, v15}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 556
    iget-object v15, v0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->sFormatOfName:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    const-string v10, "date"

    .line 557
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 556
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-direct {v4, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v15, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 558
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setDate([Ljava/lang/String;)V

    const-wide/16 v10, 0x1

    cmp-long v4, v8, v10

    if-nez v4, :cond_7

    new-array v4, v12, [Ljava/lang/String;

    const-string v8, "In"

    aput-object v8, v4, v13

    .line 563
    invoke-virtual {v14, v4}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setDirection([Ljava/lang/String;)V

    .line 566
    array-length v4, v7

    if-ne v4, v12, :cond_6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    new-array v4, v12, [Ljava/lang/String;

    const-string/jumbo v6, "unknown_address"

    aput-object v6, v4, v13

    .line 567
    invoke-virtual {v14, v4}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setFrom([Ljava/lang/String;)V

    goto :goto_0

    .line 569
    :cond_6
    invoke-virtual {v14, v7}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setFrom([Ljava/lang/String;)V

    :goto_0
    new-array v4, v12, [Ljava/lang/String;

    .line 572
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 573
    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserCtn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getE164FormatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v13

    .line 572
    invoke-virtual {v14, v4}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setTo([Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    const-wide/16 v10, 0x2

    cmp-long v4, v8, v10

    if-nez v4, :cond_8

    new-array v4, v12, [Ljava/lang/String;

    const-string v6, "Out"

    aput-object v6, v4, v13

    .line 576
    invoke-virtual {v14, v4}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setDirection([Ljava/lang/String;)V

    .line 579
    invoke-virtual {v14, v7}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setTo([Ljava/lang/String;)V

    new-array v4, v12, [Ljava/lang/String;

    .line 581
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 583
    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserCtn()Ljava/lang/String;

    move-result-object v2

    .line 582
    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getE164FormatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v13

    .line 581
    invoke-virtual {v14, v4}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setFrom([Ljava/lang/String;)V

    :cond_8
    :goto_1
    new-array v0, v12, [Ljava/lang/String;

    const-string/jumbo v1, "pager-message"

    aput-object v1, v0, v13

    .line 587
    invoke-virtual {v14, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setMessageContext([Ljava/lang/String;)V

    new-array v0, v12, [Ljava/lang/String;

    const-string/jumbo v1, "text/plain"

    aput-object v1, v0, v13

    .line 588
    invoke-virtual {v14, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setContentType([Ljava/lang/String;)V

    const-string v0, "body"

    .line 590
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 591
    invoke-virtual {v14, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setTextContent(Ljava/lang/String;)V

    const-string/jumbo v0, "safe_message"

    .line 593
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v12, :cond_9

    new-array v0, v12, [Ljava/lang/String;

    const-string/jumbo v1, "true"

    aput-object v1, v0, v13

    .line 595
    invoke-virtual {v14, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setSafetyMessage([Ljava/lang/String;)V

    .line 598
    :cond_9
    invoke-virtual {v14}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->getAttributeList()Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    move-result-object v0

    .line 599
    iput-object v0, v5, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    .line 601
    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x0

    invoke-direct {v0, v5, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 514
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v1

    :cond_a
    move-object v1, v4

    move-object v4, v1

    :goto_3
    if-eqz v3, :cond_b

    .line 605
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_b
    return-object v4
.end method

.method public getThumbnailPart(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Lcom/sec/internal/ims/cmstore/params/ParamObjectUpload;
    .locals 7

    .line 832
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getThumbNailPart "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 834
    iget v1, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    const/16 v2, 0xc

    const/4 v3, 0x0

    if-ne v1, v2, :cond_4

    .line 835
    iget-wide v1, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->queryrcsMessageBufferDB(J)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 837
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_0

    .line 838
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->LOG_TAG:Ljava/lang/String;

    const-string p1, "getAllParts cursor is null, shouldn\'t occur"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 862
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v3

    :cond_0
    :try_start_1
    const-string v2, "imdn_message_id"

    .line 842
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 843
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 844
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->LOG_TAG:Ljava/lang/String;

    const-string p1, "getThumbNailPart CorrelationId Empty, do not process"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 862
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v3

    .line 847
    :cond_1
    :try_start_2
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->mTeleDBHelper:Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;

    const-string v5, "file_path"

    invoke-virtual {v4, v2, v5}, Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;->getFtFileDataFromTelephony(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 848
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->mTeleDBHelper:Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;

    const-string/jumbo v6, "thumbnail_path"

    invoke-virtual {v5, v2, v6}, Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;->getFtFileDataFromTelephony(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 850
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 851
    invoke-virtual {p0, v1, v4, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->getMcsThumbBody(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 854
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 855
    new-instance v2, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    invoke-direct {v2, v0}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>(Ljava/util/List;)V

    .line 856
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 857
    new-instance v2, Lcom/sec/internal/ims/cmstore/params/ParamObjectUpload;

    invoke-direct {v2, v0, p1}, Lcom/sec/internal/ims/cmstore/params/ParamObjectUpload;-><init>(Landroid/util/Pair;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V

    .line 858
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "thumb body is added!!!!"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 862
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v2

    :catchall_0
    move-exception p0

    .line 835
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0

    :cond_3
    if-eqz v1, :cond_4

    .line 862
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v3
.end method

.method public isMessageStatusCancelledorDeleted(J)Z
    .locals 3

    .line 949
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->queryRCSMessageDBUsingRowId(J)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 950
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_1

    const-string/jumbo p2, "status"

    .line 951
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    const-string/jumbo v0, "syncaction"

    .line 953
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 952
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 954
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMessageStatus resUrl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " syncAction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->CANCELLATION:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->getId()I

    move-result p0

    if-eq p2, p0, :cond_0

    sget-object p0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Deleted:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 956
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p0, :cond_1

    .line 960
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    .line 949
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0

    :cond_1
    if-eqz p1, :cond_2

    .line 960
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public needToSkipDownloadLargeFileAndUpdateDB(JIILjava/lang/String;Z)Z
    .locals 14

    move-object v0, p0

    .line 895
    invoke-virtual/range {p0 .. p2}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->queryrcsMessageBufferDB(J)Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    .line 896
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "is_filetransfer"

    .line 897
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-nez v3, :cond_1

    .line 899
    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->LOG_TAG:Ljava/lang/String;

    const-string v3, "needToSkipDownloadLargeFileAndUpdateDB isFt false"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 927
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return v2

    :cond_1
    :try_start_1
    const-string/jumbo v3, "status"

    .line 902
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string/jumbo v5, "syncaction"

    .line 903
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    sget-object v6, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Deleted:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 904
    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v6

    if-ne v5, v6, :cond_2

    move v5, v4

    goto :goto_1

    :cond_2
    move v5, v2

    :goto_1
    const-string v6, "file_size"

    .line 905
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-string v8, "direction"

    .line 906
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 907
    invoke-static/range {p5 .. p5}, Lcom/sec/internal/ims/cmstore/utils/Util;->isPayloadExpired(Ljava/lang/String;)Z

    move-result v9

    const-string/jumbo v10, "payloadpartThumb"

    .line 909
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 908
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    .line 910
    iget-object v11, v0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "needToSkipDownloadLargeFileAndUpdateDB fileSize: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, ", isExpired: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ", isThumbnailNotPresent: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ", msgStatus = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " deleted: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v5, :cond_7

    .line 913
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->CANCELLATION:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->getId()I

    move-result v5

    if-ne v3, v5, :cond_3

    goto :goto_2

    :cond_3
    if-eqz v9, :cond_4

    .line 916
    invoke-virtual/range {p0 .. p4}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->updateRcsMessageBufferDB(JII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 927
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return v4

    :cond_4
    if-eqz p6, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return v2

    .line 920
    :cond_5
    :try_start_2
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result v3

    if-ne v8, v3, :cond_8

    iget-object v3, v0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-static {v3, v6, v7}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->isLargeSizeFile(Lcom/sec/internal/ims/cmstore/MessageStoreClient;J)Z

    move-result v3

    if-eqz v3, :cond_8

    if-eqz v10, :cond_6

    .line 922
    invoke-virtual/range {p0 .. p4}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->updateRcsMessageBufferDB(JII)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 927
    :cond_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return v4

    :cond_7
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return v4

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 895
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v1, v0

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v2

    :cond_8
    if-eqz v1, :cond_9

    .line 927
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_9
    return v2
.end method

.method protected setInformationFromSession(Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;Ljava/lang/String;J)Z
    .locals 7

    .line 454
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 455
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->queryRCSSessionDB(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 457
    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "is_group_chat"

    .line 459
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 458
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v3, "conversation_id"

    .line 461
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 460
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 462
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getObjectPairFromCursor :: conversationId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setConversationId([Ljava/lang/String;)V

    if-eqz v0, :cond_2

    const-string/jumbo v3, "session_uri"

    .line 467
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 466
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 468
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setGroupSessionURItoTO :: session_uri : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result p0

    int-to-long v4, p0

    cmp-long p0, p3, v4

    if-nez p0, :cond_1

    .line 471
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setTo([Ljava/lang/String;)V

    :cond_1
    new-array p0, v2, [Ljava/lang/String;

    const-string/jumbo p3, "urn:urn-7:3gpp-service.ims.icsi.oma.cpm.session.group"

    aput-object p3, p0, v1

    .line 475
    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setPAssertedService([Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-array p0, v2, [Ljava/lang/String;

    const-string/jumbo p3, "urn:urn-7:3gpp-service.ims.icsi.oma.cpm.session"

    aput-object p3, p0, v1

    .line 477
    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setPAssertedService([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    move v1, v0

    goto :goto_3

    :catchall_0
    move-exception p0

    .line 455
    :try_start_1
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0

    :cond_3
    :goto_3
    if-eqz p2, :cond_4

    .line 481
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_4
    return v1
.end method

.method protected setTransToFrom(Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;Ljava/lang/String;)V
    .locals 1

    const-string v0, "In"

    .line 447
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setDirection([Ljava/lang/String;)V

    .line 448
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setFrom([Ljava/lang/String;)V

    .line 449
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTelCtn()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setTo([Ljava/lang/String;)V

    return-void
.end method
