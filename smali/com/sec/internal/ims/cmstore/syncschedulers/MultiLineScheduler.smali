.class public Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;
.super Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;
.source "MultiLineScheduler.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private final mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MultiLineStatusBuilder;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;Landroid/os/Looper;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p3

    .line 33
    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;Landroid/os/Looper;Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;)V

    .line 24
    const-class p2, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;->TAG:Ljava/lang/String;

    .line 34
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;->TAG:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "]"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;->TAG:Ljava/lang/String;

    .line 35
    new-instance p2, Lcom/sec/internal/ims/cmstore/querybuilders/MultiLineStatusBuilder;

    invoke-direct {p2, p1, p5}, Lcom/sec/internal/ims/cmstore/querybuilders/MultiLineStatusBuilder;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;)V

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MultiLineStatusBuilder;

    return-void
.end method


# virtual methods
.method public deleteLine(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MultiLineStatusBuilder;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/querybuilders/MultiLineStatusBuilder;->deleteLine(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    return-void
.end method

.method public getLineInitSyncStatus(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)I
    .locals 3

    .line 94
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 95
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MultiLineStatusBuilder;

    invoke-virtual {v1, p1, p2}, Lcom/sec/internal/ims/cmstore/querybuilders/MultiLineStatusBuilder;->queryUsingLineAndSyncMsgType(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 96
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "initsync_status"

    .line 97
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    .line 98
    invoke-static {p2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    move-result-object p2

    goto :goto_0

    .line 100
    :cond_0
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v1

    const-string v2, "getLineInitSyncStatus: NOT_FOUND"

    invoke-static {p2, v1, v2}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAddWoPhoneId(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p2, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 102
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 103
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLineInitSyncStatus(): "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_2

    .line 104
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p0

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p0

    :goto_1
    return p0

    :catchall_0
    move-exception p0

    if-eqz p1, :cond_3

    .line 95
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw p0
.end method

.method public getLineUploadStatus(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)I
    .locals 2

    .line 70
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 71
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MultiLineStatusBuilder;

    invoke-virtual {v1, p1, p2}, Lcom/sec/internal/ims/cmstore/querybuilders/MultiLineStatusBuilder;->queryUsingLineAndSyncMsgType(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 72
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "initupload_status"

    .line 73
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    .line 74
    invoke-static {p2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 71
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

    :cond_0
    move-object p2, v0

    :goto_1
    if-eqz p1, :cond_1

    .line 76
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 77
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLineUploadStatus(): "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_2

    .line 78
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p0

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p0

    :goto_2
    return p0
.end method

.method public getMulitLineStatusTable()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 109
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MultiLineStatusBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/querybuilders/MultiLineStatusBuilder;->queryMultilineStatus()Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_2

    .line 110
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const-string v2, "_bufferdbid"

    .line 112
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string v3, "linenum"

    .line 113
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "messagetype"

    .line 114
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    move-result-object v4

    const-string v5, "initsync_status"

    .line 115
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    move-result-object v5

    const-string v6, "initupload_status"

    .line 116
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    move-result-object v6

    const-string v7, "initsync_cusor"

    .line 117
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "sim_imsi"

    .line 118
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "syncmessage_status"

    .line 119
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-static {v9}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    move-result-object v9

    .line 120
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x4

    if-lt v10, v11, :cond_1

    .line 121
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "*"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    sub-int/2addr v12, v11

    invoke-virtual {v7, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 123
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "id: "

    .line 124
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " line: "

    .line 125
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " messagetype: "

    .line 126
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " cursor: "

    .line 127
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " initSyncStatus: "

    .line 128
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " initUploadStatus: "

    .line 129
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " simImsi: "

    .line 130
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " syncMessageStatus: "

    .line 131
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_0

    goto :goto_1

    :catchall_0
    move-exception v2

    .line 109
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_3
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 135
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 136
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-object v0
.end method

.method public insertNewLine(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V
    .locals 5

    .line 45
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MultiLineStatusBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/cmstore/querybuilders/MultiLineStatusBuilder;->queryUsingLineAndSyncMsgType(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 46
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 47
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MultiLineStatusBuilder;

    const-string v2, ""

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 48
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v4

    .line 47
    invoke-virtual {v1, p1, p2, v2, v4}, Lcom/sec/internal/ims/cmstore/querybuilders/MultiLineStatusBuilder;->updateLineInitsyncStatus(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Ljava/lang/String;I)I

    .line 49
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->isForceInitFullSync()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v2

    const-string v3, "insertNewLine : update forceAll"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAddWoPhoneId(Ljava/lang/String;ILjava/lang/String;)V

    .line 52
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MultiLineStatusBuilder;

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->SYNC_MESSAGE_FORCE_ALL_PENDING:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v2

    invoke-virtual {v1, p1, p2, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/MultiLineStatusBuilder;->updateSyncMessageStatus(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;I)I

    .line 53
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MultiLineStatusBuilder;

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->INITIAL_UPLOAD_PENDING:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v2

    invoke-virtual {v1, p1, p2, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/MultiLineStatusBuilder;->updateLineUploadStatus(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;I)I

    .line 54
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->setForceInitFullSync(Z)V

    goto :goto_0

    .line 56
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MultiLineStatusBuilder;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v2

    invoke-virtual {v1, p1, p2, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/MultiLineStatusBuilder;->updateLineUploadStatus(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;I)I

    .line 57
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MultiLineStatusBuilder;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    invoke-virtual {p0, p1, p2, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/MultiLineStatusBuilder;->updateSyncMessageStatus(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;I)I

    goto :goto_0

    .line 60
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MultiLineStatusBuilder;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/querybuilders/MultiLineStatusBuilder;->insertNewLine(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz v0, :cond_2

    .line 62
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_3

    .line 45
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw p0
.end method

.method public resetImsi()V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "resetImsi"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MultiLineStatusBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->resetImsi()V

    return-void
.end method

.method public updateLineInitsyncStatus(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Ljava/lang/String;I)V
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MultiLineStatusBuilder;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/cmstore/querybuilders/MultiLineStatusBuilder;->updateLineInitsyncStatus(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Ljava/lang/String;I)I

    return-void
.end method

.method public updateLineUploadStatus(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;I)V
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MultiLineStatusBuilder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/querybuilders/MultiLineStatusBuilder;->updateLineUploadStatus(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;I)I

    return-void
.end method

.method public updateSyncMessageStatus(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;I)V
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MultiLineStatusBuilder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/querybuilders/MultiLineStatusBuilder;->updateSyncMessageStatus(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;I)I

    return-void
.end method
