.class public Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;
.super Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;
.source "RcsScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler$RcsDbSessionObserver;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private mRcsDbSessionObserver:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler$RcsDbSessionObserver;

.field private final mSessionQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;Landroid/os/Looper;)V
    .locals 0

    .line 81
    invoke-direct/range {p0 .. p8}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;Landroid/os/Looper;)V

    .line 71
    const-class p2, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    const/4 p2, 0x0

    .line 72
    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mRcsDbSessionObserver:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler$RcsDbSessionObserver;

    .line 73
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mSessionQueue:Ljava/util/Queue;

    .line 83
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "["

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    .line 84
    invoke-direct {p0, p8}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->registerRcsDbSessionObserver(Landroid/os/Looper;)V

    .line 85
    invoke-interface {p2}, Ljava/util/Queue;->clear()V

    return-void
.end method

.method private crossObjectSearchLegacy(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Ljava/lang/String;Z)I
    .locals 1

    .line 1184
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationTag:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TEXT_CONTENT:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1185
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->updateCorrelationTagObject(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;)V

    .line 1187
    :cond_0
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationTag:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->handleCrossSearchObj(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x3

    return p0

    .line 1191
    :cond_1
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationTag:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationId:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TEXT_CONTENT:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1192
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    .line 1193
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->handleCrossSearchObj(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method private getSessionStatus(Ljava/lang/String;)Z
    .locals 3

    .line 222
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->ACTIVE:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->getId()I

    move-result v0

    .line 223
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->querySessionByChatId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 224
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "status"

    .line 225
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 226
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleNormalSyncObjectRcsMessageDownload getSessionStatus status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 223
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
    :goto_1
    if-eqz p1, :cond_1

    .line 228
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 229
    :cond_1
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->INACTIVE:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private handleExistingBufferForDeviceIMDNUpdate(Landroid/database/Cursor;Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;)V
    .locals 0

    .line 0
    return-void
.end method

.method private handleExistingBufferForSessionAccpetUpdate(Landroid/database/Cursor;Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 9

    .line 680
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleExistingBufferForSessionAccpetUpdate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mChatId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "linenum"

    .line 681
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v0, "_bufferdbid"

    .line 682
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    if-eqz p3, :cond_0

    .line 685
    iget-object p1, p3, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    new-instance p3, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    iget v2, p2, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mTableindex:I

    const/4 v5, 0x0

    iget-object v7, p2, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mUpdateType:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    iget-object v8, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v1, p3

    invoke-direct/range {v1 .. v8}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private handleNonExistingBufferForDeviceIMDNUpdate(Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;)V
    .locals 0

    .line 0
    return-void
.end method

.method private handleObjectDownloadCrossSearch(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Ljava/lang/String;Z)I
    .locals 3

    .line 234
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleObjectDownloadCrossSearch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->requiresInterworkingCrossSearch()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 236
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->crossObjectSearchLegacy(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Ljava/lang/String;Z)I

    move-result p2

    if-eq p2, v1, :cond_0

    .line 239
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mSummaryDB:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->insertSummaryDbUsingObjectIfNonExist(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;I)J

    return p2

    :cond_0
    return v1
.end method

.method private onUpdateFromDeviceIMFT(Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;ZLcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 4

    .line 604
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUpdateFromDeviceIMFT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    iget v0, p1, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mTableindex:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x0

    .line 609
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler$1;->$SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$MsgOperationFlag:[I

    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mOperation:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 643
    :pswitch_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-wide v2, p1, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mRowId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->searchIMFTBufferUsingRowId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    return-void

    .line 629
    :pswitch_2
    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mChatId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 630
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->searchIMFTBufferUsingChatId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 631
    :cond_0
    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mImdnId:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 632
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-object v3, p1, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mLine:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->searchIMFTBufferUsingImdn(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 634
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-wide v2, p1, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mRowId:J

    .line 635
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 634
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->searchIMFTBufferUsingRowId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 620
    :pswitch_3
    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mImdnId:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 621
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-object v3, p1, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mLine:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->searchIMFTBufferUsingImdn(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 623
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-wide v2, p1, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mRowId:J

    .line 624
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 623
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->searchIMFTBufferUsingRowId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 612
    :pswitch_4
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mImdnId:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mLine:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->searchIMFTBufferUsingImdn(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_4

    .line 648
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 650
    :cond_3
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->handleExistingBufferForDeviceRCSUpdate(Landroid/database/Cursor;Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;ZLcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    .line 651
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    .line 652
    :cond_4
    iget-wide p2, p1, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mRowId:J

    const-wide/16 v1, 0x0

    cmp-long p2, p2, v1

    if-lez p2, :cond_5

    .line 653
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->handleNonExistingBufferForDeviceRCSUpdate(Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    :goto_1
    if-eqz v0, :cond_d

    .line 657
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_6

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 659
    :cond_6
    throw p0

    :cond_7
    const/16 p2, 0xd

    if-ne v0, p2, :cond_a

    .line 661
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-object p3, p1, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mImdnId:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->searchBufferNotificationUsingImdn(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 662
    :try_start_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p3

    if-eqz p3, :cond_8

    .line 663
    invoke-direct {p0, p2, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->handleExistingBufferForDeviceIMDNUpdate(Landroid/database/Cursor;Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;)V

    goto :goto_2

    .line 665
    :cond_8
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->handleNonExistingBufferForDeviceIMDNUpdate(Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_2
    if-eqz p2, :cond_d

    .line 667
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    goto :goto_6

    :catchall_1
    move-exception p0

    if-eqz p2, :cond_9

    .line 661
    :try_start_2
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9
    :goto_3
    throw p0

    :cond_a
    const/16 p2, 0xa

    if-ne v0, p2, :cond_d

    .line 669
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mChatId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->queryBufferDBSessionByChatId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_b

    .line 670
    :try_start_3
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 671
    invoke-direct {p0, p2, p1, p3}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->handleExistingBufferForSessionAccpetUpdate(Landroid/database/Cursor;Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto :goto_4

    .line 673
    :cond_b
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid ChatId for accept the session: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mChatId:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :goto_4
    if-eqz p2, :cond_d

    .line 675
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    goto :goto_6

    :catchall_3
    move-exception p0

    if-eqz p2, :cond_c

    .line 669
    :try_start_4
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_5

    :catchall_4
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_c
    :goto_5
    throw p0

    :cond_d
    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private registerRcsDbSessionObserver(Landroid/os/Looper;)V
    .locals 2

    .line 1308
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mRcsDbSessionObserver:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler$RcsDbSessionObserver;

    if-eqz p1, :cond_0

    return-void

    .line 1311
    :cond_0
    new-instance p1, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler$RcsDbSessionObserver;

    invoke-direct {p1, p0, p0}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler$RcsDbSessionObserver;-><init>(Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mRcsDbSessionObserver:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler$RcsDbSessionObserver;

    const-string p1, "content://com.samsung.rcs.cmstore/chat/"

    .line 1312
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 1313
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mRcsDbSessionObserver:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler$RcsDbSessionObserver;

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private updateSyncDirection(Landroid/content/ContentValues;Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 106
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    const-string/jumbo v0, "syncaction"

    const-string/jumbo v1, "syncdirection"

    if-eqz p4, :cond_0

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    const/4 p4, 0x1

    invoke-static {p3, p0, p4}, Lcom/sec/internal/ims/cmstore/utils/Util;->isDownloadObject(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 107
    sget-object p0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->Downloading:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 108
    sget-object p0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->DownLoad:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 109
    :cond_0
    iget-boolean p0, p2, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mIsChanged:Z

    if-eqz p0, :cond_1

    .line 110
    iget-object p0, p2, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 111
    iget-object p0, p2, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateSyncFlag(IZLjava/lang/String;JLcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;Landroid/content/ContentValues;Z)V
    .locals 10

    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p6

    if-lez v1, :cond_4

    .line 91
    iget-object v3, v2, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v2, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 92
    invoke-virtual {v3, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 93
    :cond_0
    iget-object v3, v2, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v2, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Cancel:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 94
    invoke-virtual {v3, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 96
    :cond_1
    iget-object v3, v2, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Delete:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 97
    iget-object v3, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v3, p1}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->deleteRCSMessageDb(I)I

    goto :goto_1

    .line 95
    :cond_2
    :goto_0
    iget-object v3, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    move-object/from16 v4, p7

    invoke-virtual {v3, p1, v4}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->updateRCSMessageDb(ILandroid/content/ContentValues;)I

    :cond_3
    :goto_1
    const/4 v4, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object/from16 v1, p6

    move-wide v2, p4

    move/from16 v5, p8

    move v6, p2

    move-object v7, p3

    .line 100
    invoke-virtual/range {v0 .. v9}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->handleOutPutParamSyncFlagSet(Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;JIZZLjava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Z)V

    :cond_4
    return-void
.end method


# virtual methods
.method public handleCloudNotifyConferenceInfo(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Lcom/sec/internal/omanetapi/nms/data/Object;Z)V
    .locals 37

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    .line 751
    iget-object v3, v1, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleCloudNotifyConferenceInfo, objt is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 760
    iget-object v4, v1, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v4}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTelCtn()Ljava/lang/String;

    move-result-object v4

    .line 761
    iget-object v0, v0, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v5, v0, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    array-length v6, v5

    const/4 v0, 0x0

    const/4 v8, -0x1

    move v9, v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v8, v0

    :goto_0
    if-ge v10, v6, :cond_35

    aget-object v12, v5, v10

    .line 762
    iget-object v13, v12, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    array-length v14, v13

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v14, :cond_0

    aget-object v7, v13, v15

    move-object/from16 v16, v0

    .line 763
    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    move-object/from16 v17, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v6

    const-string v6, "Attribute key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v12, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, v16

    move-object/from16 v5, v17

    move/from16 v6, v18

    goto :goto_1

    :cond_0
    move-object/from16 v16, v0

    move-object/from16 v17, v5

    move/from16 v18, v6

    const-string v0, "MessageBody"

    .line 765
    iget-object v5, v12, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 766
    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-object v5, v2, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CONVERSATION_ID:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->querySessionByConversationId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 767
    :try_start_0
    iget-object v0, v12, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v0, v0, v6

    const-class v6, Lcom/sec/internal/omanetapi/nms/data/ConferenceInfo;

    invoke-virtual {v3, v0, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/sec/internal/omanetapi/nms/data/ConferenceInfo;

    .line 768
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 769
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    const-string v13, "contribution_id"

    const-string v15, "chat_type"

    const-string v14, "created_by"

    move-object/from16 v19, v3

    const-string v3, "invited_by"

    const-string v0, "icon_path"

    move-object/from16 v20, v8

    const-string v8, "conversation_id"

    move/from16 v21, v9

    const-string v9, "_id"

    move/from16 v22, v11

    const-string/jumbo v11, "own_sim_imsi"

    move/from16 v23, v10

    const-string v10, "inserted_time_stamp"

    move-object/from16 v24, v7

    const-string/jumbo v7, "subject"

    move-object/from16 v25, v11

    const-string/jumbo v11, "session_uri"

    move-object/from16 v26, v13

    const-string v13, "chat_id"

    move-object/from16 v27, v8

    const-string/jumbo v8, "status"

    if-eqz v5, :cond_23

    .line 770
    :try_start_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v28
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    if-eqz v28, :cond_23

    .line 771
    :try_start_2
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v29, v13

    .line 772
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v5, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v30, v15

    const-string v15, "_bufferdbid"

    .line 773
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v5, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 775
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_1

    .line 776
    invoke-static {v13}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Long;->longValue()J

    move-result-wide v31

    goto :goto_2

    :cond_1
    const-wide/16 v31, 0x0

    .line 778
    :goto_2
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    iget-object v13, v6, Lcom/sec/internal/omanetapi/nms/data/ConferenceInfo;->mTimestamp:Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v33

    cmp-long v13, v31, v33

    if-gez v13, :cond_2

    goto :goto_3

    :cond_2
    move-object/from16 v8, p1

    move-object/from16 v35, v4

    move-object v4, v12

    move/from16 v31, v15

    move-object/from16 v0, v16

    move-object/from16 v15, v24

    move-object/from16 v14, v27

    move-object/from16 v12, v29

    move-object/from16 v24, v2

    goto/16 :goto_12

    .line 779
    :cond_3
    :goto_3
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v5, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move/from16 v31, v15

    .line 780
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 781
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v32

    if-eqz v32, :cond_4

    .line 782
    iget-object v13, v1, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    move-object/from16 v32, v12

    const-string/jumbo v12, "subject init"

    invoke-static {v13, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    iget-object v12, v6, Lcom/sec/internal/omanetapi/nms/data/ConferenceInfo;->mConferenceDescription:Lcom/sec/internal/omanetapi/nms/data/ConferenceDescription;

    iget-object v12, v12, Lcom/sec/internal/omanetapi/nms/data/ConferenceDescription;->mSubject:Ljava/lang/String;

    invoke-virtual {v15, v7, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    move-object/from16 v32, v12

    .line 784
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_5

    iget-object v12, v6, Lcom/sec/internal/omanetapi/nms/data/ConferenceInfo;->mConferenceDescription:Lcom/sec/internal/omanetapi/nms/data/ConferenceDescription;

    iget-object v12, v12, Lcom/sec/internal/omanetapi/nms/data/ConferenceDescription;->mSubject:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_5

    iget-object v12, v6, Lcom/sec/internal/omanetapi/nms/data/ConferenceInfo;->mConferenceDescription:Lcom/sec/internal/omanetapi/nms/data/ConferenceDescription;

    iget-object v12, v12, Lcom/sec/internal/omanetapi/nms/data/ConferenceDescription;->mSubject:Ljava/lang/String;

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 785
    iget-object v12, v1, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "subject has been changed, update it"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    iget-object v12, v6, Lcom/sec/internal/omanetapi/nms/data/ConferenceInfo;->mConferenceDescription:Lcom/sec/internal/omanetapi/nms/data/ConferenceDescription;

    iget-object v12, v12, Lcom/sec/internal/omanetapi/nms/data/ConferenceDescription;->mSubject:Ljava/lang/String;

    invoke-virtual {v15, v7, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    :cond_5
    :goto_4
    iget-object v7, v6, Lcom/sec/internal/omanetapi/nms/data/ConferenceInfo;->mTimestamp:Ljava/lang/String;

    invoke-virtual {v15, v10, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    iget-object v7, v6, Lcom/sec/internal/omanetapi/nms/data/ConferenceInfo;->mCreatedBy:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 791
    iget-object v7, v6, Lcom/sec/internal/omanetapi/nms/data/ConferenceInfo;->mCreatedBy:Ljava/lang/String;

    invoke-virtual {v15, v14, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    :cond_6
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 794
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    iget-object v10, v6, Lcom/sec/internal/omanetapi/nms/data/ConferenceInfo;->mEntity:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 795
    :cond_7
    iget-object v7, v6, Lcom/sec/internal/omanetapi/nms/data/ConferenceInfo;->mEntity:Ljava/lang/String;

    invoke-virtual {v15, v11, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    :cond_8
    iget-object v7, v6, Lcom/sec/internal/omanetapi/nms/data/ConferenceInfo;->mConferenceState:Lcom/sec/internal/omanetapi/nms/data/ConferenceState;

    iget-boolean v7, v7, Lcom/sec/internal/omanetapi/nms/data/ConferenceState;->mActivation:Z

    if-eqz v7, :cond_9

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->ACTIVE:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    :goto_5
    invoke-virtual {v7}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->getId()I

    move-result v7

    goto :goto_6

    :cond_9
    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    goto :goto_5

    :goto_6
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v15, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 798
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 799
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 800
    iget-object v7, v6, Lcom/sec/internal/omanetapi/nms/data/ConferenceInfo;->mConferenceDescription:Lcom/sec/internal/omanetapi/nms/data/ConferenceDescription;

    iget-object v7, v7, Lcom/sec/internal/omanetapi/nms/data/ConferenceDescription;->mIcon:Lcom/sec/internal/omanetapi/nms/data/ConferenceDescription$Icon;

    if-eqz v7, :cond_a

    iget-object v7, v7, Lcom/sec/internal/omanetapi/nms/data/ConferenceDescription$Icon;->mFileInfo:Lcom/sec/internal/omanetapi/nms/data/ConferenceDescription$Icon$FileInfo;

    if-eqz v7, :cond_a

    .line 801
    iget-object v10, v7, Lcom/sec/internal/omanetapi/nms/data/ConferenceDescription$Icon$FileInfo;->mContentType:Ljava/lang/String;

    .line 802
    iget-object v7, v7, Lcom/sec/internal/omanetapi/nms/data/ConferenceDescription$Icon$FileInfo;->mData:Ljava/lang/String;

    if-eqz v7, :cond_a

    const/4 v12, 0x0

    .line 803
    invoke-static {v7, v12}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v7

    .line 804
    invoke-static {v10}, Lcom/sec/internal/helper/translate/FileExtensionTranslator;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/internal/ims/cmstore/utils/Util;->getRandomFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 807
    :try_start_3
    iget-object v12, v1, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mContext:Landroid/content/Context;

    iget-object v13, v1, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v13}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v13

    const/4 v14, 0x0

    invoke-static {v12, v10, v14, v13}, Lcom/sec/internal/ims/cmstore/utils/Util;->generateUniqueFilePath(Landroid/content/Context;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v12

    .line 808
    invoke-static {v7, v12}, Lcom/sec/internal/ims/cmstore/utils/Util;->saveFiletoPath([BLjava/lang/String;)V

    .line 809
    invoke-virtual {v15, v0, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    goto :goto_7

    :catch_0
    move-exception v0

    .line 811
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_7
    move-object v0, v7

    move-object/from16 v20, v10

    goto :goto_8

    :cond_a
    move-object/from16 v0, v16

    .line 818
    :goto_8
    iget-object v7, v6, Lcom/sec/internal/omanetapi/nms/data/ConferenceInfo;->mConferenceState:Lcom/sec/internal/omanetapi/nms/data/ConferenceState;

    iget-boolean v10, v7, Lcom/sec/internal/omanetapi/nms/data/ConferenceState;->mActivation:Z

    if-nez v10, :cond_b

    const/16 v21, 0x0

    goto :goto_9

    .line 820
    :cond_b
    iget v7, v7, Lcom/sec/internal/omanetapi/nms/data/ConferenceState;->mUserCount:I

    const/4 v10, 0x1

    if-ne v7, v10, :cond_c

    const/16 v21, 0x1

    .line 824
    :cond_c
    :goto_9
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 825
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 826
    iget-object v12, v6, Lcom/sec/internal/omanetapi/nms/data/ConferenceInfo;->mUsers:Lcom/sec/internal/omanetapi/nms/data/Users;

    iget-object v12, v12, Lcom/sec/internal/omanetapi/nms/data/Users;->mUser:[Lcom/sec/internal/omanetapi/nms/data/Users$User;

    array-length v13, v12

    const/4 v14, 0x0

    :goto_a
    if-ge v14, v13, :cond_13

    move-object/from16 v16, v0

    aget-object v0, v12, v14

    move-object/from16 v33, v12

    .line 827
    iget-object v12, v0, Lcom/sec/internal/omanetapi/nms/data/Users$User;->mEntity:Ljava/lang/String;

    invoke-virtual {v12, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move/from16 v34, v13

    const-string v13, "connected"

    if-eqz v12, :cond_11

    .line 828
    :try_start_5
    iget-object v12, v0, Lcom/sec/internal/omanetapi/nms/data/Users$User;->mEndpoint:[Lcom/sec/internal/omanetapi/nms/data/Users$User$Endpoint;

    if-eqz v12, :cond_d

    move-object/from16 v35, v4

    const-string v4, "disconnected"

    const/16 v36, 0x0

    aget-object v12, v12, v36

    iget-object v12, v12, Lcom/sec/internal/omanetapi/nms/data/Users$User$Endpoint;->mStatus:Ljava/lang/String;

    invoke-virtual {v4, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 829
    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_b

    :cond_d
    move-object/from16 v35, v4

    .line 830
    :cond_e
    iget-object v4, v0, Lcom/sec/internal/omanetapi/nms/data/Users$User;->mEndpoint:[Lcom/sec/internal/omanetapi/nms/data/Users$User$Endpoint;

    if-eqz v4, :cond_f

    const/4 v12, 0x0

    aget-object v4, v4, v12

    iget-object v4, v4, Lcom/sec/internal/omanetapi/nms/data/Users$User$Endpoint;->mStatus:Ljava/lang/String;

    invoke-virtual {v13, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    .line 831
    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->getId()I

    move-result v4

    if-ne v7, v4, :cond_f

    .line 832
    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->ACTIVE:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 835
    :cond_f
    :goto_b
    iget-boolean v4, v0, Lcom/sec/internal/omanetapi/nms/data/Users$User;->mOwn:Z

    if-eqz v4, :cond_12

    iget-object v0, v0, Lcom/sec/internal/omanetapi/nms/data/Users$User;->mEndpoint:[Lcom/sec/internal/omanetapi/nms/data/Users$User$Endpoint;

    if-eqz v0, :cond_12

    const/4 v4, 0x0

    .line 836
    aget-object v0, v0, v4

    .line 837
    iget-object v4, v0, Lcom/sec/internal/omanetapi/nms/data/Users$User$Endpoint;->mJoingingInfo:Lcom/sec/internal/omanetapi/nms/data/Users$User$Endpoint$JoiningInfo;

    if-eqz v4, :cond_10

    iget-object v4, v4, Lcom/sec/internal/omanetapi/nms/data/Users$User$Endpoint$JoiningInfo;->mBy:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 838
    iget-object v4, v0, Lcom/sec/internal/omanetapi/nms/data/Users$User$Endpoint;->mJoingingInfo:Lcom/sec/internal/omanetapi/nms/data/Users$User$Endpoint$JoiningInfo;

    iget-object v4, v4, Lcom/sec/internal/omanetapi/nms/data/Users$User$Endpoint$JoiningInfo;->mBy:Ljava/lang/String;

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    :cond_10
    iget-object v4, v0, Lcom/sec/internal/omanetapi/nms/data/Users$User$Endpoint;->mDisconnectionInfo:Lcom/sec/internal/omanetapi/nms/data/Users$User$Endpoint$DisconnectionInfo;

    if-eqz v4, :cond_12

    .line 841
    iget-object v4, v4, Lcom/sec/internal/omanetapi/nms/data/Users$User$Endpoint$DisconnectionInfo;->mReason:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_12

    const-string/jumbo v4, "rejected"

    iget-object v0, v0, Lcom/sec/internal/omanetapi/nms/data/Users$User$Endpoint;->mDisconnectionInfo:Lcom/sec/internal/omanetapi/nms/data/Users$User$Endpoint$DisconnectionInfo;

    iget-object v0, v0, Lcom/sec/internal/omanetapi/nms/data/Users$User$Endpoint$DisconnectionInfo;->mReason:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v21, 0x3

    goto :goto_c

    :cond_11
    move-object/from16 v35, v4

    .line 848
    iget-object v4, v0, Lcom/sec/internal/omanetapi/nms/data/Users$User;->mEndpoint:[Lcom/sec/internal/omanetapi/nms/data/Users$User$Endpoint;

    if-eqz v4, :cond_12

    const/4 v12, 0x0

    aget-object v4, v4, v12

    iget-object v4, v4, Lcom/sec/internal/omanetapi/nms/data/Users$User$Endpoint;->mStatus:Ljava/lang/String;

    invoke-virtual {v13, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 849
    iget-object v0, v0, Lcom/sec/internal/omanetapi/nms/data/Users$User;->mEntity:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_12
    :goto_c
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, v16

    move-object/from16 v12, v33

    move/from16 v13, v34

    move-object/from16 v4, v35

    goto/16 :goto_a

    :cond_13
    move-object/from16 v16, v0

    move-object/from16 v35, v4

    if-nez p3, :cond_17

    .line 853
    invoke-virtual {v15, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 854
    invoke-virtual {v15, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->getId()I

    move-result v4

    if-ne v0, v4, :cond_14

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->CLOSED_VOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->getId()I

    move-result v0

    if-eq v7, v0, :cond_16

    .line 855
    :cond_14
    invoke-virtual {v15, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->ACTIVE:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->getId()I

    move-result v4

    if-ne v0, v4, :cond_15

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->getId()I

    move-result v0

    if-eq v7, v0, :cond_16

    .line 856
    :cond_15
    invoke-virtual {v15, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->getId()I

    move-result v4

    if-ne v0, v4, :cond_17

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->getId()I

    move-result v0

    if-ne v7, v0, :cond_17

    .line 857
    :cond_16
    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "rejoin or duplicate event with PD left skip"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 1036
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    return-void

    .line 861
    :cond_17
    :try_start_6
    invoke-virtual {v15}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-lez v0, :cond_18

    .line 862
    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v0, v2, v15}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->updateSessionBufferDb(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 863
    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v0, v2, v15}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->updateRCSSessionDb(Ljava/lang/String;Landroid/content/ContentValues;)I

    const/16 v22, 0x1

    .line 867
    :cond_18
    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->queryParticipantsUsingChatId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-eqz v3, :cond_1c

    .line 869
    :goto_d
    :try_start_7
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string/jumbo v0, "uri"

    .line 870
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 871
    iget-object v4, v1, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mContext:Landroid/content/Context;

    iget-object v7, v1, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 872
    invoke-interface {v7}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v7

    invoke-static {v4, v7}, Lcom/sec/internal/ims/cmstore/utils/Util;->getSimCountryCode(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 871
    invoke-static {v0, v4}, Lcom/sec/internal/ims/cmstore/utils/Util;->getNormalizedTelUri(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    .line 873
    iget-object v7, v1, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "participant = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", telUri = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_19

    goto :goto_d

    .line 878
    :cond_19
    invoke-interface {v10, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 879
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->ACCEPTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    invoke-virtual {v7}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->getId()I

    move-result v12

    if-eq v0, v12, :cond_1a

    .line 880
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 881
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 882
    invoke-virtual {v7}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v12, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 883
    iget-object v7, v1, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    int-to-long v13, v0

    invoke-virtual {v7, v13, v14, v12}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->updateRCSParticipantsDb(JLandroid/content/ContentValues;)I

    .line 885
    :cond_1a
    invoke-interface {v10, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-object/from16 v4, v32

    goto :goto_e

    .line 887
    :cond_1b
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 888
    iget-object v4, v1, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v4, v0, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->deleteParticipantsFromBufferDb(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    iget-object v4, v1, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v4, v12, v13}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->deleteParticipantsUsingRowId(J)I

    move-object/from16 v4, v32

    .line 890
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v22, 0x1

    :goto_e
    move-object/from16 v32, v4

    goto/16 :goto_d

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto/16 :goto_13

    :cond_1c
    move-object/from16 v4, v32

    .line 896
    invoke-interface {v10}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_20

    .line 897
    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v0, v10, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->insertNewParticipantToBufferDB(Ljava/util/Set;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 899
    iget-object v7, v1, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v7, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->querySessionUsingChatId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 900
    :try_start_8
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-nez v8, :cond_1e

    const/4 v8, 0x1

    .line 901
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v13, v30

    invoke-virtual {v15, v13, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v12, "sim_imsi"

    .line 902
    iget-object v13, v1, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v13}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCurrentIMSI()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v15, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move v12, v8

    move-object/from16 v8, p1

    .line 903
    iget-object v13, v8, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CONVERSATION_ID:Ljava/lang/String;

    move-object/from16 v14, v27

    invoke-virtual {v15, v14, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    iget-object v13, v8, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CONVERSATION_ID:Ljava/lang/String;

    move-object/from16 v12, v26

    invoke-virtual {v15, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    iget-object v12, v6, Lcom/sec/internal/omanetapi/nms/data/ConferenceInfo;->mEntity:Ljava/lang/String;

    invoke-virtual {v15, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    iget-object v12, v1, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v12}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserCtn()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v13, v25

    invoke-virtual {v15, v13, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v12, v29

    .line 907
    invoke-virtual {v15, v12, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    iget-object v13, v1, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v13, v15, v0}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->insertSessionFromBufferDbToRCSDb(Landroid/content/ContentValues;Ljava/util/ArrayList;)I

    move-result v15

    .line 909
    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v0, v2, v15}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->updateBufferDbChatIdFromRcsDb(Ljava/lang/String;I)Ljava/lang/String;

    .line 910
    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->updateParticipantsIdFromRcsDb(Ljava/lang/String;)V

    .line 911
    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    const-string v13, "Make new session for RCSIMFT DB"

    invoke-static {v0, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_1d

    .line 913
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->updateMessageReceivedBeforeConfInfo(Ljava/lang/String;)V

    :cond_1d
    move/from16 v31, v15

    move-object/from16 v15, v24

    goto :goto_f

    :cond_1e
    move-object/from16 v8, p1

    move-object/from16 v14, v27

    move-object/from16 v12, v29

    .line 916
    invoke-interface {v10}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v13

    new-instance v15, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler$$ExternalSyntheticLambda0;

    invoke-direct {v15}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v13, v15}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v13

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v15

    invoke-interface {v13, v15}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Collection;

    move-object/from16 v15, v24

    invoke-interface {v15, v13}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 917
    iget-object v13, v1, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v13, v0}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->insertRCSParticipantsDb(Ljava/util/ArrayList;)V

    .line 919
    :goto_f
    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v24, v2

    const-string/jumbo v2, "participants = "

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " are added into DB"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 921
    :try_start_9
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    const/16 v22, 0x1

    goto :goto_11

    :catchall_1
    move-exception v0

    move-object v1, v0

    if-eqz v7, :cond_1f

    .line 899
    :try_start_a
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_10

    :catchall_2
    move-exception v0

    move-object v2, v0

    :try_start_b
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1f
    :goto_10
    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_20
    move-object/from16 v8, p1

    move-object/from16 v15, v24

    move-object/from16 v14, v27

    move-object/from16 v12, v29

    move-object/from16 v24, v2

    :goto_11
    if-eqz v3, :cond_21

    .line 923
    :try_start_c
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :cond_21
    move-object/from16 v0, v16

    :goto_12
    move-object/from16 v32, v4

    move-object v2, v8

    move-object/from16 v25, v9

    move-object v13, v11

    move-object v4, v12

    move-object v12, v14

    move-object/from16 v8, v20

    move/from16 v9, v21

    move/from16 v7, v22

    move-object/from16 v3, v24

    const/4 v11, 0x1

    move-object/from16 v24, v5

    move-object/from16 v22, v15

    move-object/from16 v5, v35

    goto/16 :goto_1b

    :goto_13
    if-eqz v3, :cond_22

    .line 867
    :try_start_d
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    goto :goto_14

    :catchall_3
    move-exception v0

    move-object v2, v0

    :try_start_e
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_22
    :goto_14
    throw v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :catchall_4
    move-exception v0

    move-object v1, v0

    move-object/from16 v24, v5

    goto/16 :goto_20

    :cond_23
    move-object/from16 v2, p1

    move-object/from16 v35, v4

    move-object/from16 v32, v12

    move-object v4, v13

    move-object v13, v15

    move-object/from16 v22, v24

    move-object/from16 v15, v25

    move-object/from16 v12, v26

    move-object/from16 v24, v5

    move-object/from16 v5, v27

    move-object/from16 v25, v9

    .line 926
    :try_start_f
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    move-object/from16 v26, v14

    .line 927
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v27, v10

    .line 928
    iget-object v10, v6, Lcom/sec/internal/omanetapi/nms/data/ConferenceInfo;->mUsers:Lcom/sec/internal/omanetapi/nms/data/Users;

    iget-object v10, v10, Lcom/sec/internal/omanetapi/nms/data/Users;->mUser:[Lcom/sec/internal/omanetapi/nms/data/Users$User;

    move-object/from16 v29, v11

    array-length v11, v10

    move-object/from16 v30, v12

    const/4 v12, 0x0

    :goto_15
    if-ge v12, v11, :cond_26

    move/from16 v31, v11

    aget-object v11, v10, v12

    move-object/from16 v33, v10

    .line 929
    iget-object v10, v11, Lcom/sec/internal/omanetapi/nms/data/Users$User;->mEntity:Ljava/lang/String;

    move-object/from16 v34, v5

    move-object/from16 v5, v35

    invoke-virtual {v10, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_24

    .line 930
    iget-boolean v10, v11, Lcom/sec/internal/omanetapi/nms/data/Users$User;->mOwn:Z

    if-eqz v10, :cond_25

    iget-object v10, v11, Lcom/sec/internal/omanetapi/nms/data/Users$User;->mEndpoint:[Lcom/sec/internal/omanetapi/nms/data/Users$User$Endpoint;

    if-eqz v10, :cond_25

    const/4 v11, 0x0

    .line 931
    aget-object v10, v10, v11

    .line 932
    iget-object v11, v10, Lcom/sec/internal/omanetapi/nms/data/Users$User$Endpoint;->mJoingingInfo:Lcom/sec/internal/omanetapi/nms/data/Users$User$Endpoint$JoiningInfo;

    if-eqz v11, :cond_25

    iget-object v11, v11, Lcom/sec/internal/omanetapi/nms/data/Users$User$Endpoint$JoiningInfo;->mBy:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_25

    .line 933
    iget-object v10, v10, Lcom/sec/internal/omanetapi/nms/data/Users$User$Endpoint;->mJoingingInfo:Lcom/sec/internal/omanetapi/nms/data/Users$User$Endpoint$JoiningInfo;

    iget-object v10, v10, Lcom/sec/internal/omanetapi/nms/data/Users$User$Endpoint$JoiningInfo;->mBy:Ljava/lang/String;

    invoke-virtual {v9, v3, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    .line 938
    :cond_24
    iget-object v10, v11, Lcom/sec/internal/omanetapi/nms/data/Users$User;->mEntity:Ljava/lang/String;

    invoke-static {v10}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v10

    invoke-interface {v14, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_25
    :goto_16
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v35, v5

    move/from16 v11, v31

    move-object/from16 v10, v33

    move-object/from16 v5, v34

    goto :goto_15

    :cond_26
    move-object/from16 v34, v5

    move-object/from16 v5, v35

    .line 940
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->OFF:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->getId()I

    move-result v3

    const/4 v10, 0x1

    invoke-static {v14, v10, v3}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateChatId(Ljava/util/Set;ZI)Ljava/lang/String;

    move-result-object v3

    .line 941
    invoke-virtual {v9, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    iget-object v10, v1, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 943
    invoke-interface {v10}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserCtn()Ljava/lang/String;

    move-result-object v10

    .line 942
    invoke-virtual {v9, v15, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "is_group_chat"

    const/4 v11, 0x1

    .line 944
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v10, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 945
    iget-object v10, v6, Lcom/sec/internal/omanetapi/nms/data/ConferenceInfo;->mConferenceState:Lcom/sec/internal/omanetapi/nms/data/ConferenceState;

    iget-boolean v10, v10, Lcom/sec/internal/omanetapi/nms/data/ConferenceState;->mActivation:Z

    if-eqz v10, :cond_27

    sget-object v10, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->ACTIVE:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    :goto_17
    invoke-virtual {v10}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->getId()I

    move-result v10

    goto :goto_18

    :cond_27
    sget-object v10, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    goto :goto_17

    :goto_18
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 946
    iget-object v8, v6, Lcom/sec/internal/omanetapi/nms/data/ConferenceInfo;->mConferenceDescription:Lcom/sec/internal/omanetapi/nms/data/ConferenceDescription;

    iget-object v8, v8, Lcom/sec/internal/omanetapi/nms/data/ConferenceDescription;->mSubject:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_28

    .line 947
    iget-object v8, v6, Lcom/sec/internal/omanetapi/nms/data/ConferenceInfo;->mConferenceDescription:Lcom/sec/internal/omanetapi/nms/data/ConferenceDescription;

    iget-object v8, v8, Lcom/sec/internal/omanetapi/nms/data/ConferenceDescription;->mSubject:Ljava/lang/String;

    invoke-virtual {v9, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    :cond_28
    iget-object v7, v6, Lcom/sec/internal/omanetapi/nms/data/ConferenceInfo;->mConferenceDescription:Lcom/sec/internal/omanetapi/nms/data/ConferenceDescription;

    iget-object v7, v7, Lcom/sec/internal/omanetapi/nms/data/ConferenceDescription;->mIcon:Lcom/sec/internal/omanetapi/nms/data/ConferenceDescription$Icon;

    if-eqz v7, :cond_29

    iget-object v7, v7, Lcom/sec/internal/omanetapi/nms/data/ConferenceDescription$Icon;->mFileInfo:Lcom/sec/internal/omanetapi/nms/data/ConferenceDescription$Icon$FileInfo;

    if-eqz v7, :cond_29

    .line 950
    iget-object v8, v7, Lcom/sec/internal/omanetapi/nms/data/ConferenceDescription$Icon$FileInfo;->mContentType:Ljava/lang/String;

    .line 951
    iget-object v7, v7, Lcom/sec/internal/omanetapi/nms/data/ConferenceDescription$Icon$FileInfo;->mData:Ljava/lang/String;

    if-eqz v7, :cond_29

    const/4 v10, 0x0

    .line 952
    invoke-static {v7, v10}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v7

    .line 953
    invoke-static {v8}, Lcom/sec/internal/helper/translate/FileExtensionTranslator;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/internal/ims/cmstore/utils/Util;->getRandomFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 956
    :try_start_10
    iget-object v10, v1, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mContext:Landroid/content/Context;

    iget-object v11, v1, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v11}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v11

    const/4 v12, 0x0

    invoke-static {v10, v8, v12, v11}, Lcom/sec/internal/ims/cmstore/utils/Util;->generateUniqueFilePath(Landroid/content/Context;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v10

    .line 957
    invoke-static {v7, v10}, Lcom/sec/internal/ims/cmstore/utils/Util;->saveFiletoPath([BLjava/lang/String;)V

    .line 958
    invoke-virtual {v9, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    goto :goto_19

    :catch_1
    move-exception v0

    .line 960
    :try_start_11
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_19
    move-object v0, v7

    goto :goto_1a

    :cond_29
    move-object/from16 v0, v16

    move-object/from16 v8, v20

    :goto_1a
    const/4 v7, 0x1

    .line 964
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v13, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "is_muted"

    const/4 v10, 0x0

    .line 965
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v7, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "max_participants_count"

    .line 966
    iget-object v11, v6, Lcom/sec/internal/omanetapi/nms/data/ConferenceInfo;->mConferenceDescription:Lcom/sec/internal/omanetapi/nms/data/ConferenceDescription;

    iget v11, v11, Lcom/sec/internal/omanetapi/nms/data/ConferenceDescription;->mMaxCount:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v7, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "imdn_notifications_availability"

    const/4 v11, 0x1

    .line 967
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v7, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "direction"

    .line 968
    sget-object v12, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-virtual {v12}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v7, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 969
    iget-object v7, v2, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CONVERSATION_ID:Ljava/lang/String;

    move-object/from16 v12, v34

    invoke-virtual {v9, v12, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    iget-object v7, v2, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CONVERSATION_ID:Ljava/lang/String;

    move-object/from16 v13, v30

    invoke-virtual {v9, v13, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    iget-object v7, v6, Lcom/sec/internal/omanetapi/nms/data/ConferenceInfo;->mEntity:Ljava/lang/String;

    move-object/from16 v13, v29

    invoke-virtual {v9, v13, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    iget-object v7, v6, Lcom/sec/internal/omanetapi/nms/data/ConferenceInfo;->mTimestamp:Ljava/lang/String;

    move-object/from16 v10, v27

    invoke-virtual {v9, v10, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "linenum"

    .line 973
    iget-object v10, v1, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v10}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTelCtn()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "sim_imsi"

    .line 974
    iget-object v10, v1, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v10}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCurrentIMSI()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    iget-object v7, v1, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v7}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserCtn()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v15, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "syncaction"

    .line 976
    sget-object v10, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Insert:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v10}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v7, "syncdirection"

    .line 977
    sget-object v10, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v10}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 978
    iget-object v7, v6, Lcom/sec/internal/omanetapi/nms/data/ConferenceInfo;->mCreatedBy:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2a

    .line 979
    iget-object v7, v6, Lcom/sec/internal/omanetapi/nms/data/ConferenceInfo;->mCreatedBy:Ljava/lang/String;

    move-object/from16 v10, v26

    invoke-virtual {v9, v10, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    :cond_2a
    iget-object v7, v1, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    const/16 v10, 0xa

    invoke-virtual {v7, v10, v9}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->insertTable(ILandroid/content/ContentValues;)J

    .line 982
    iget-object v7, v1, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v7, v14, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->insertRCSParticipantToBufferDBUsingObject(Ljava/util/Set;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 983
    iget-object v10, v1, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v10, v9, v7}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->insertSessionFromBufferDbToRCSDb(Landroid/content/ContentValues;Ljava/util/ArrayList;)I

    move-result v7

    .line 984
    iget-object v9, v1, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v9, v3, v7}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->updateBufferDbChatIdFromRcsDb(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 985
    iget-object v9, v1, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v9, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->updateParticipantsIdFromRcsDb(Ljava/lang/String;)V

    move/from16 v31, v7

    move v7, v11

    move/from16 v9, v21

    :goto_1b
    if-eqz v7, :cond_31

    .line 989
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 990
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v15, v25

    invoke-virtual {v10, v15, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 991
    invoke-virtual {v10, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    iget-object v6, v6, Lcom/sec/internal/omanetapi/nms/data/ConferenceInfo;->mEntity:Ljava/lang/String;

    invoke-virtual {v10, v13, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    iget-object v6, v2, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CONVERSATION_ID:Ljava/lang/String;

    invoke-virtual {v10, v12, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2b

    const-string v6, "icon_name"

    .line 995
    invoke-virtual {v10, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "icon_data"

    .line 996
    invoke-virtual {v10, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 999
    :cond_2b
    invoke-interface/range {v32 .. v32}, Ljava/util/Set;->isEmpty()Z

    move-result v6
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    const-string v12, ","

    if-nez v6, :cond_2c

    :try_start_12
    const-string/jumbo v6, "participants_del"

    move-object/from16 v13, v32

    .line 1000
    invoke-static {v12, v13}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v6, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v11

    goto :goto_1c

    :cond_2c
    move-object/from16 v13, v32

    const/4 v6, 0x0

    .line 1004
    :goto_1c
    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_2d

    const-string/jumbo v6, "participants_add"

    move-object/from16 v14, v22

    .line 1005
    invoke-static {v12, v14}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v6, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v11

    goto :goto_1d

    :cond_2d
    move-object/from16 v14, v22

    :goto_1d
    if-ltz v9, :cond_2e

    const-string v11, "closed_reason"

    .line 1010
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2e
    if-eqz p3, :cond_2f

    .line 1014
    iget-object v3, v1, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mSessionQueue:Ljava/util/Queue;

    invoke-interface {v3, v10}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :cond_2f
    const/16 v11, 0xa

    .line 1016
    invoke-virtual {v1, v10, v11}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->notifyMsgAppFetchBuffer(Landroid/content/ContentValues;I)V

    if-eqz v6, :cond_31

    .line 1019
    invoke-interface {v13}, Ljava/util/Set;->isEmpty()Z

    move-result v6
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    const-string/jumbo v10, "type"

    const-string v11, ";"

    const-string/jumbo v12, "participants"

    if-nez v6, :cond_30

    .line 1020
    :try_start_13
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1021
    invoke-virtual {v6, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    invoke-static {v11, v13}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    sget-object v13, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->SYSTEM_USER_LEFT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    invoke-virtual {v13}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->getId()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v6, v10, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1024
    iget-object v13, v1, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v13, v6}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->makeNewSystemUserMessageToRcsDb(Landroid/content/ContentValues;)V

    .line 1026
    :cond_30
    invoke-interface {v14}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_31

    .line 1027
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1028
    invoke-virtual {v6, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    invoke-static {v11, v14}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v12, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->SYSTEM_USER_JOINED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v10, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1031
    iget-object v3, v1, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v3, v6}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->makeNewSystemUserMessageToRcsDb(Landroid/content/ContentValues;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    :cond_31
    :goto_1e
    if-eqz v24, :cond_32

    .line 1036
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    :cond_32
    move v11, v7

    goto :goto_22

    :catchall_5
    move-exception v0

    goto :goto_1f

    :catchall_6
    move-exception v0

    move-object/from16 v24, v5

    :goto_1f
    move-object v1, v0

    :goto_20
    if-eqz v24, :cond_33

    .line 766
    :try_start_14
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    goto :goto_21

    :catchall_7
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_33
    :goto_21
    throw v1

    :cond_34
    move-object/from16 v19, v3

    move-object v5, v4

    move-object/from16 v20, v8

    move/from16 v21, v9

    move/from16 v23, v10

    move/from16 v22, v11

    move-object/from16 v0, v16

    :goto_22
    add-int/lit8 v10, v23, 0x1

    move-object v4, v5

    move-object/from16 v5, v17

    move/from16 v6, v18

    move-object/from16 v3, v19

    goto/16 :goto_0

    :cond_35
    return-void
.end method

.method public handleCloudNotifyGSOChangedObj(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Lcom/sec/internal/omanetapi/nms/data/Object;)V
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1044
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleCloudNotifyGSOChangedObj(), objt is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    iget-object v1, v1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v1, v1, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    array-length v2, v1

    const/4 v4, 0x0

    move v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v2, :cond_15

    aget-object v7, v1, v5

    .line 1047
    iget-object v8, v7, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    array-length v9, v8

    move v10, v4

    :goto_1
    if-ge v10, v9, :cond_0

    aget-object v11, v8, v10

    .line 1048
    iget-object v12, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Attribute key: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v7, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", value: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1050
    :cond_0
    iget-object v8, v7, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    const-string/jumbo v9, "subject"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1051
    iget-object v6, v7, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object v6, v6, v4

    :cond_1
    const-string v8, "TextContent"

    .line 1053
    iget-object v10, v7, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 1055
    iget-object v7, v7, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    array-length v8, v7

    move v10, v4

    :goto_2
    if-ge v10, v8, :cond_14

    aget-object v11, v7, v10

    .line 1056
    invoke-static {v11}, Lcom/sec/internal/omanetapi/nms/XmlParser;->parseGroupState(Ljava/lang/String;)Lcom/sec/internal/omanetapi/nms/data/GroupState;

    move-result-object v11

    .line 1057
    iget-object v12, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "GroupState after xmlParser: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/sec/internal/omanetapi/nms/data/GroupState;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    iput-object v6, v11, Lcom/sec/internal/omanetapi/nms/data/GroupState;->subject:Ljava/lang/String;

    .line 1060
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v13, "open"

    .line 1061
    iget-object v14, v11, Lcom/sec/internal/omanetapi/nms/data/GroupState;->group_type:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    const/4 v14, 0x2

    const-string v15, "chat_type"

    const/16 v16, 0x1

    if-eqz v13, :cond_2

    .line 1062
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v15, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_3

    .line 1064
    :cond_2
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v15, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1066
    :goto_3
    iget-object v13, v11, Lcom/sec/internal/omanetapi/nms/data/GroupState;->subject:Ljava/lang/String;

    invoke-virtual {v12, v9, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    iget-object v13, v11, Lcom/sec/internal/omanetapi/nms/data/GroupState;->lastfocussessionid:Ljava/lang/String;

    const-string/jumbo v15, "session_uri"

    invoke-virtual {v12, v15, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    iget-object v13, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v13}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->queryAllSession()Landroid/database/Cursor;

    move-result-object v13

    if-nez v13, :cond_4

    if-eqz v13, :cond_3

    .line 1093
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object/from16 v17, v1

    move/from16 v18, v2

    move/from16 v24, v5

    move-object/from16 v19, v6

    :goto_4
    move-object/from16 v20, v7

    move/from16 v21, v8

    move-object/from16 v22, v9

    move/from16 v23, v10

    goto/16 :goto_11

    .line 1076
    :cond_4
    :try_start_0
    iget-object v3, v11, Lcom/sec/internal/omanetapi/nms/data/GroupState;->lastfocussessionid:Ljava/lang/String;

    if-eqz v3, :cond_5

    const-string v14, "@"

    .line 1077
    invoke-virtual {v3, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    goto :goto_5

    :cond_5
    const/4 v3, -0x1

    :goto_5
    if-lez v3, :cond_12

    .line 1081
    iget-object v14, v11, Lcom/sec/internal/omanetapi/nms/data/GroupState;->lastfocussessionid:Ljava/lang/String;

    invoke-virtual {v14, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1085
    :goto_6
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-string v4, "chat_id"

    if-eqz v14, :cond_7

    .line 1086
    :try_start_1
    invoke-interface {v13, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v17, v1

    .line 1087
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    move/from16 v18, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v6

    const-string/jumbo v6, "session uri: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v14, :cond_6

    .line 1088
    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1089
    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_7

    :cond_6
    move-object/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v6, v19

    const/4 v4, 0x0

    goto :goto_6

    :cond_7
    move-object/from16 v17, v1

    move/from16 v18, v2

    move-object/from16 v19, v6

    const/4 v1, 0x0

    .line 1093
    :goto_7
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 1094
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "chat id: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_11

    .line 1098
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v2, v1, v12}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->updateSessionBufferDb(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 1099
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v2, v1, v12}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->updateRCSSessionDb(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 1100
    invoke-virtual {v12, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xa

    .line 1101
    invoke-virtual {v0, v12, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->notifyMsgAppFetchBuffer(Landroid/content/ContentValues;I)V

    .line 1106
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->queryParticipantsUsingChatId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    const-string/jumbo v3, "uri"

    const-string v6, "Administrator"

    const-string v12, "alias"

    const-string/jumbo v13, "type"

    if-eqz v2, :cond_e

    .line 1108
    :goto_8
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_e

    .line 1109
    new-instance v14, Lcom/sec/internal/omanetapi/nms/data/Part;

    invoke-direct {v14}, Lcom/sec/internal/omanetapi/nms/data/Part;-><init>()V

    .line 1110
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v2, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lcom/sec/internal/omanetapi/nms/data/Part;->name:Ljava/lang/String;

    .line 1111
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v2, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lcom/sec/internal/omanetapi/nms/data/Part;->comm_addr:Ljava/lang/String;

    .line 1112
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v2, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lcom/sec/internal/omanetapi/nms/data/Part;->role:Ljava/lang/String;

    .line 1113
    iget-object v15, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mContext:Landroid/content/Context;

    move-object/from16 v20, v7

    iget-object v7, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v7}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v7

    invoke-static {v15, v7}, Lcom/sec/internal/ims/cmstore/utils/Util;->getSimCountryCode(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    .line 1114
    iget-object v15, v14, Lcom/sec/internal/omanetapi/nms/data/Part;->comm_addr:Ljava/lang/String;

    invoke-static {v15, v7}, Lcom/sec/internal/ims/cmstore/utils/Util;->getTelUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move/from16 v21, v8

    .line 1115
    invoke-static {v15, v7}, Lcom/sec/internal/ims/cmstore/utils/Util;->getMsisdn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v22, v9

    .line 1119
    iget-object v9, v11, Lcom/sec/internal/omanetapi/nms/data/GroupState;->participantList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v23
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move/from16 v24, v5

    const-string v5, "_id"

    if-eqz v23, :cond_9

    :try_start_3
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v25, v9

    move-object/from16 v9, v23

    check-cast v9, Lcom/sec/internal/omanetapi/nms/data/Part;

    move/from16 v23, v10

    .line 1120
    iget-object v10, v9, Lcom/sec/internal/omanetapi/nms/data/Part;->comm_addr:Ljava/lang/String;

    invoke-static {v10, v7}, Lcom/sec/internal/ims/cmstore/utils/Util;->getTelUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1121
    invoke-virtual {v10, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 1123
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    .line 1125
    iget-object v7, v11, Lcom/sec/internal/omanetapi/nms/data/GroupState;->participantList:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move/from16 v10, v16

    goto :goto_a

    :cond_8
    move/from16 v10, v23

    move/from16 v5, v24

    move-object/from16 v9, v25

    goto :goto_9

    :cond_9
    move/from16 v23, v10

    const-wide/16 v25, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_a
    move-wide/from16 v29, v25

    move-object/from16 v25, v3

    move-object/from16 v26, v4

    move-wide/from16 v3, v29

    .line 1130
    iget-object v7, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    move-object/from16 v27, v12

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v28, v11

    const-string v11, "Participant: "

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lcom/sec/internal/omanetapi/nms/data/Part;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", telLine = "

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v15}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", line = "

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1131
    invoke-static {v8}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "isExist: "

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", tempPart: "

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v9, :cond_a

    .line 1132
    invoke-virtual {v9}, Lcom/sec/internal/omanetapi/nms/data/Part;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_b

    :cond_a
    const-string v8, ""

    :goto_b
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1130
    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v10, :cond_b

    .line 1135
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 1136
    iget-object v5, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v5, v3, v4}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->deleteParticipantsUsingRowId(J)I

    .line 1138
    iget-object v3, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-object v4, v14, Lcom/sec/internal/omanetapi/nms/data/Part;->comm_addr:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->deleteParticipantsFromBufferDb(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :cond_b
    if-eqz v9, :cond_d

    .line 1142
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1143
    iget-object v7, v9, Lcom/sec/internal/omanetapi/nms/data/Part;->role:Ljava/lang/String;

    if-eqz v7, :cond_c

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    iget-object v7, v9, Lcom/sec/internal/omanetapi/nms/data/Part;->role:Ljava/lang/String;

    sget-object v8, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;->CHAIRMAN:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;

    .line 1144
    invoke-virtual {v8}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 1143
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 1145
    invoke-virtual {v8}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v13, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_c

    .line 1147
    :cond_c
    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;->REGULAR:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;

    invoke-virtual {v7}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v13, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1150
    :goto_c
    iget-object v7, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v7, v3, v4, v5}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->updateRCSParticipantsDb(JLandroid/content/ContentValues;)I

    .line 1152
    iget-object v3, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-object v4, v14, Lcom/sec/internal/omanetapi/nms/data/Part;->comm_addr:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->updateParticipantsBufferDb(Ljava/lang/String;Landroid/content/ContentValues;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_d
    :goto_d
    move-object/from16 v7, v20

    move/from16 v8, v21

    move-object/from16 v9, v22

    move/from16 v10, v23

    move/from16 v5, v24

    move-object/from16 v3, v25

    move-object/from16 v4, v26

    move-object/from16 v12, v27

    move-object/from16 v11, v28

    goto/16 :goto_8

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 1106
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_e

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_e
    throw v1

    :cond_e
    move-object/from16 v25, v3

    move-object/from16 v26, v4

    move/from16 v24, v5

    move-object/from16 v20, v7

    move/from16 v21, v8

    move-object/from16 v22, v9

    move/from16 v23, v10

    move-object/from16 v28, v11

    move-object/from16 v27, v12

    if-eqz v2, :cond_f

    .line 1157
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_f
    move-object/from16 v2, v28

    .line 1158
    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/GroupState;->participantList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/omanetapi/nms/data/Part;

    .line 1160
    iget-object v4, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Insert participant : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sec/internal/omanetapi/nms/data/Part;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1162
    iget-object v5, v3, Lcom/sec/internal/omanetapi/nms/data/Part;->role:Ljava/lang/String;

    const-string/jumbo v7, "status"

    if-eqz v5, :cond_10

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1163
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;->CHAIRMAN:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v13, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1164
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->INITIAL:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_10

    .line 1166
    :cond_10
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;->REGULAR:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v13, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1167
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->ACCEPTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1169
    :goto_10
    iget-object v5, v3, Lcom/sec/internal/omanetapi/nms/data/Part;->name:Ljava/lang/String;

    move-object/from16 v7, v27

    invoke-virtual {v4, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v5, v26

    .line 1170
    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1171
    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/Part;->comm_addr:Ljava/lang/String;

    iget-object v8, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mContext:Landroid/content/Context;

    iget-object v9, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v9}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v9

    invoke-static {v8, v9}, Lcom/sec/internal/ims/cmstore/utils/Util;->getSimCountryCode(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/sec/internal/ims/cmstore/utils/Util;->getTelUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v8, v25

    .line 1172
    invoke-virtual {v4, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    iget-object v3, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->insertRCSParticipantsDb(Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1175
    iget-object v3, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v3}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCurrentIMSI()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v9, "sim_imsi"

    invoke-virtual {v4, v9, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    iget-object v3, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    const/4 v9, 0x2

    invoke-virtual {v3, v9, v4}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->insertDeviceMsgToBuffer(ILandroid/content/ContentValues;)J

    goto/16 :goto_f

    :cond_11
    move/from16 v24, v5

    goto/16 :goto_4

    :cond_12
    move-object/from16 v17, v1

    move/from16 v18, v2

    move/from16 v24, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move/from16 v21, v8

    move-object/from16 v22, v9

    move/from16 v23, v10

    .line 1093
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_13
    :goto_11
    add-int/lit8 v10, v23, 0x1

    move-object/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    move/from16 v8, v21

    move-object/from16 v9, v22

    move/from16 v5, v24

    const/4 v4, 0x0

    goto/16 :goto_2

    :catchall_2
    move-exception v0

    move-object v1, v0

    .line 1071
    :try_start_5
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_12

    :catchall_3
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_12
    throw v1

    :cond_14
    move-object/from16 v17, v1

    move/from16 v18, v2

    move/from16 v24, v5

    move-object/from16 v19, v6

    add-int/lit8 v5, v24, 0x1

    move-object/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v6, v19

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_15
    return-void
.end method

.method public handleDownLoadMessageResponse(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V
    .locals 2

    if-nez p2, :cond_0

    .line 597
    sget-object p2, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->OBJECT_NOT_FOUND:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getActionType()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 598
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object p2

    iget p2, p2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object p1

    iget-wide v0, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    invoke-virtual {p0, p2, v0, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->setMsgDeleted(IJ)V

    :cond_0
    return-void
.end method

.method public handleExistingBufferForDeviceRCSUpdate(Landroid/database/Cursor;Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;ZLcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 505
    iget-object v3, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleExistingBufferForDeviceRCSUpdate: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v4, "syncaction"

    .line 507
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-result-object v11

    const-string/jumbo v5, "syncdirection"

    .line 508
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    move-result-object v10

    const-string v6, "linenum"

    .line 509
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v6, "_bufferdbid"

    .line 510
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 511
    iget-object v6, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mScheduleRule:Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;

    iget v7, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mDbTableContractIndex:I

    iget-object v12, v2, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mOperation:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    move-wide v8, v14

    invoke-virtual/range {v6 .. v12}, Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;->getSetFlagsForMsgOperation(IJLcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;)Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    move-result-object v6

    const-string/jumbo v7, "status"

    .line 512
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 514
    iget-boolean v9, v6, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mIsChanged:Z

    if-eqz v9, :cond_0

    .line 515
    iget-object v9, v6, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v9}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 516
    iget-object v5, v6, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 518
    :cond_0
    iget-wide v4, v2, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mRowId:J

    const-wide/16 v9, 0x0

    cmp-long v9, v4, v9

    if-lez v9, :cond_1

    const-string v9, "_id"

    .line 519
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_1
    const-string v4, "is_filetransfer"

    .line 521
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v9, 0x1

    if-ne v4, v9, :cond_2

    move v10, v9

    goto :goto_0

    :cond_2
    const/4 v10, 0x0

    .line 522
    :goto_0
    iget-object v4, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isFt: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " , action: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v2, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mUpdateType:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " currStatus:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "thumbnail_path"

    if-eqz v10, :cond_4

    .line 523
    sget-object v11, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Delete:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    iget-object v12, v2, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mUpdateType:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v11, v12}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const-string v11, "file_path"

    .line 524
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 525
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 526
    iget-object v12, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "filepath: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " , thumbpath: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 528
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 529
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 530
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 533
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 534
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 535
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 536
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 541
    :cond_4
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->Read:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    iget-object v5, v2, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mOperation:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    invoke-virtual {v1, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v5, "ft_status"

    if-eqz v1, :cond_6

    .line 542
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->CANCELLATION_UNREAD:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->getId()I

    move-result v1

    if-ne v8, v1, :cond_5

    .line 543
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->CANCELLATION:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 544
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 545
    :cond_5
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->CANCELLATION:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->getId()I

    move-result v1

    if-eq v8, v1, :cond_7

    .line 546
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->READ:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 547
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 549
    :cond_6
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->Cancel:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    iget-object v8, v2, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mOperation:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    invoke-virtual {v1, v8}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 550
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->CANCELLATION:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 551
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 554
    :cond_7
    :goto_1
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->Starred:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    iget-object v5, v2, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mOperation:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    invoke-virtual {v1, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v5, "locked"

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    .line 555
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    .line 556
    :cond_8
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->UnStarred:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    iget-object v7, v2, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mOperation:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    invoke-virtual {v1, v7}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    .line 557
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 560
    :cond_9
    :goto_2
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->Spam:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    iget-object v5, v2, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mOperation:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    invoke-virtual {v1, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string/jumbo v1, "spam_type"

    const/4 v5, 0x1

    .line 561
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 563
    :cond_a
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isSupportExpiredRule()Z

    move-result v1

    if-eqz v1, :cond_c

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->Received:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    iget-object v5, v2, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mOperation:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    .line 564
    invoke-virtual {v1, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    if-eqz v10, :cond_c

    .line 566
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-wide v7, v2, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mRowId:J

    invoke-virtual {v1, v7, v8}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->queryIMFTUsingRowId(J)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 567
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 568
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 566
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v1, v0

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v2

    :cond_b
    :goto_4
    if-eqz v1, :cond_c

    .line 570
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 573
    :cond_c
    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 574
    iget-object v4, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget v5, v2, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mTableindex:I

    const-string v7, "_bufferdbid=?"

    invoke-virtual {v4, v5, v3, v7, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 575
    iget-boolean v1, v6, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mIsChanged:Z

    if-eqz v1, :cond_d

    .line 576
    iget v5, v2, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mTableindex:I

    const/4 v11, 0x0

    move-object/from16 v1, p0

    move-object v2, v6

    move-wide v3, v14

    move v6, v10

    move/from16 v7, p3

    move-object v8, v13

    move-object/from16 v9, p4

    move v10, v11

    invoke-virtual/range {v1 .. v10}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->handleOutPutParamSyncFlagSet(Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;JIZZLjava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Z)V

    :cond_d
    return-void
.end method

.method public handleNonExistingBufferForDeviceRCSUpdate(Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;)V
    .locals 5

    .line 581
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleNonExistingBufferForDeviceRCSUpdate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-wide v1, p1, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mRowId:J

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->queryIMFTUsingRowId(J)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 583
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 584
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "syncdirection"

    .line 585
    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->Done:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "syncaction"

    .line 586
    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->None:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 587
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mLine:Ljava/lang/String;

    invoke-virtual {v2, v0, p1, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->insertToRCSMessagesBufferDB(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long p1, v1, v3

    if-gez p1, :cond_0

    .line 589
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    const-string p1, "handleNonExistingBufferForDeviceRCSUpdate: insert RCS Buffer DB error or meet blocked number!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 582
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0

    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 592
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void
.end method

.method public handleNormalSyncObjectRcsImdnDownload(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;)J
    .locals 9

    .line 247
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleNormalSyncObjectRcsImdnDownload: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DISPOSITION_ORIGINAL_TO:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/Util;->getPhoneNum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 250
    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/internal/ims/cmstore/utils/Util;->getSimCountryCode(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 249
    invoke-static {v0, v1}, Lcom/sec/internal/ims/cmstore/utils/Util;->getTelUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 251
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DISPOSITION_ORIGINAL_MESSAGEID:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->searchBufferNotificationUsingImdnAndTelUri(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 252
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "_bufferdbid"

    .line 253
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    const-string v3, "_bufferdbid=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    .line 255
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 256
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "lastmodseq"

    .line 257
    iget-object v7, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->lastModSeq:Ljava/lang/Long;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v6, "res_url"

    .line 258
    iget-object v7, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v7}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "parentfolder"

    .line 259
    iget-object v7, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->parentFolder:Ljava/net/URL;

    invoke-virtual {v7}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "path"

    .line 260
    iget-object v7, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->path:Ljava/lang/String;

    invoke-static {v7}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "imdn_id"

    .line 261
    iget-object v7, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DISPOSITION_ORIGINAL_MESSAGEID:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "syncaction"

    .line 262
    sget-object v7, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->None:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v7}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v6, "syncdirection"

    .line 263
    sget-object v7, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->Done:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v7}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v6, "timestamp"

    .line 264
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v6, "displayed"

    .line 265
    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DISPOSITION_STATUS:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v6, "status"

    if-eqz p1, :cond_0

    .line 266
    :try_start_1
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v5, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 268
    :cond_0
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v5, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 270
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    const/16 p1, 0xd

    invoke-virtual {p0, p1, v5, v3, v4}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 272
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->insertRCSimdnToBufferDBUsingObject(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v1, -0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 274
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-wide v1

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_3

    .line 251
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw p0
.end method

.method public handleNormalSyncObjectRcsMessageDownload(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Z)J
    .locals 24

    move-object/from16 v11, p0

    move-object/from16 v0, p1

    const-string/jumbo v1, "status"

    .line 117
    iget-object v2, v11, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleNormalSyncObjectRcsMessageDownload: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    new-instance v10, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->Done:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->None:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-direct {v10, v2, v3}, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;-><init>(Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;)V

    .line 121
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/utils/Util;->getLineTelUriFromObjUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 122
    :try_start_0
    iget-object v2, v11, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-object v3, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationId:Ljava/lang/String;

    invoke-virtual {v2, v3, v12}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->searchIMFTBufferUsingImdn(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :try_start_1
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->protocol:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v9, 0x1

    const/4 v8, 0x0

    if-nez v2, :cond_1

    const-string/jumbo v2, "standard"

    iget-object v3, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->protocol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v16, v8

    goto :goto_1

    :cond_1
    :goto_0
    move/from16 v16, v9

    :goto_1
    if-eqz v15, :cond_a

    .line 126
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 127
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TEXT_CONTENT:Ljava/lang/String;

    const-string v3, "_bufferdbid"

    .line 128
    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v5, v3

    const-string v3, "_id"

    .line 129
    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string/jumbo v4, "syncaction"

    .line 130
    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-result-object v4

    const-string/jumbo v7, "syncdirection"

    .line 131
    invoke-interface {v15, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v15, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    move-result-object v7

    const-string v13, "_bufferdbid=?"

    new-array v14, v9, [Ljava/lang/String;

    .line 133
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v14, v8

    .line 134
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    const-string v9, "lastmodseq"

    move-object/from16 v17, v2

    .line 135
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->lastModSeq:Ljava/lang/Long;

    invoke-virtual {v8, v9, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v2, "res_url"

    .line 136
    iget-object v9, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v9}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v2, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "parentfolder"

    .line 137
    iget-object v9, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->parentFolder:Ljava/net/URL;

    invoke-virtual {v9}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v2, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "path"

    .line 138
    iget-object v9, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->path:Ljava/lang/String;

    invoke-static {v9}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v2, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "content_type"

    .line 139
    iget-object v9, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CONTENT_TYPE:Ljava/lang/String;

    invoke-virtual {v8, v2, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 140
    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    sget-object v9, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->READ:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    move-object/from16 v18, v4

    .line 142
    invoke-virtual {v9}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->getId()I

    move-result v4

    if-eq v2, v4, :cond_3

    const-string v2, "ft_status"

    .line 143
    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 144
    invoke-virtual {v9}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->getId()I

    move-result v4

    if-ne v2, v4, :cond_2

    goto :goto_2

    :cond_2
    move-object/from16 v21, v7

    move-object/from16 v22, v18

    goto :goto_3

    .line 145
    :cond_3
    :goto_2
    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 146
    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingCloud:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    move-object/from16 v22, v2

    move-object/from16 v21, v4

    .line 148
    :goto_3
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CONTENT_TYPE:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 149
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CONTENT_TYPE:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/utils/Util;->isLocationPushContentType(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CONTENT_TYPE:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/utils/Util;->isBotMessageContentType(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CONTENT_TYPE:Ljava/lang/String;

    .line 150
    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/utils/Util;->isBotResponseMessageContentType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 151
    :cond_4
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->MESSAGEBODY:Ljava/lang/String;

    goto :goto_4

    :cond_5
    move-object/from16 v2, v17

    .line 154
    :goto_4
    iget-object v4, v11, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mScheduleRule:Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;

    iget v7, v11, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mDbTableContractIndex:I

    iget-object v9, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mFlag:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-object/from16 v17, v4

    move/from16 v18, v7

    move-wide/from16 v19, v5

    move-object/from16 v23, v9

    invoke-virtual/range {v17 .. v23}, Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;->getSetFlagsForCldOperation(IJLcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;)Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    move-result-object v7

    .line 156
    iget-object v4, v7, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    sget-object v9, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Cancel:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    if-ne v4, v9, :cond_6

    .line 157
    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->CANCELLATION:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v8, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 160
    :cond_6
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DATE:Ljava/lang/String;

    invoke-direct {v11, v8, v7, v1, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->updateSyncDirection(Landroid/content/ContentValues;Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v1, v11, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v1, v0, v8, v13, v14}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->updateRCSMessageInBufferDBUsingObject(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 162
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->payloadPart:[Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;

    if-eqz v1, :cond_7

    const/4 v9, 0x1

    goto :goto_5

    :cond_7
    const/4 v9, 0x0

    :goto_5
    move-object/from16 v1, p0

    move v2, v3

    move/from16 v3, p2

    move-object v4, v12

    move-wide v13, v5

    move-wide/from16 v17, v13

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-direct/range {v1 .. v9}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->updateSyncFlag(IZLjava/lang/String;JLcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;Landroid/content/ContentValues;Z)V

    .line 164
    iget-boolean v1, v11, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->isCmsEnabled:Z

    if-eqz v1, :cond_8

    .line 165
    invoke-virtual {v11, v0, v15}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->updateRCSImdnToBufferDBUsingObject(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Landroid/database/Cursor;)V

    .line 168
    :cond_8
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TEXT_CONTENT:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DATE:Ljava/lang/String;

    iget-object v2, v11, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-static {v1, v2, v14}, Lcom/sec/internal/ims/cmstore/utils/Util;->isDownloadObject(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 172
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->Downloading:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    iput-object v1, v10, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 173
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->DownLoad:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    iput-object v1, v10, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move v9, v14

    goto :goto_6

    :cond_9
    move v9, v13

    :goto_6
    move/from16 v7, p2

    move v8, v13

    goto :goto_7

    :cond_a
    move v13, v8

    move v14, v9

    move/from16 v7, p2

    .line 176
    invoke-direct {v11, v0, v12, v7}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->handleObjectDownloadCrossSearch(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Ljava/lang/String;Z)I

    move-result v1

    .line 177
    iget-object v2, v11, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleNormalSyncObjectRcsMessageDownload: RCS not foundcontractTypeFromLegacy: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v1, v14, :cond_c

    if-eqz v15, :cond_b

    .line 215
    :try_start_2
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_b
    const-wide/16 v1, -0x1

    return-wide v1

    .line 181
    :cond_c
    :try_start_3
    iget-object v1, v11, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->searchOrCreateSession(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;)Ljava/lang/String;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v1, :cond_e

    if-eqz v15, :cond_d

    .line 215
    :try_start_4
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_d
    const-wide/16 v1, -0x1

    return-wide v1

    .line 185
    :cond_e
    :try_start_5
    iget-object v2, v11, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v2, v0, v1, v13}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->insertRCSMessageToBufferDBUsingObject(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Ljava/lang/String;Z)Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    move-result-object v2

    .line 186
    iget-wide v3, v2, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mBufferId:J

    .line 187
    iget-object v5, v11, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mSummaryDB:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    invoke-virtual {v5, v0, v14}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->insertSummaryDbUsingObjectIfNonExist(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;I)J

    .line 188
    invoke-direct {v11, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->getSessionStatus(Ljava/lang/String;)Z

    move-result v8

    move-object v10, v2

    move-wide/from16 v17, v3

    move v9, v13

    .line 190
    :goto_7
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DATE:Ljava/lang/String;

    iget-object v2, v11, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-static {v1, v2, v14}, Lcom/sec/internal/ims/cmstore/utils/Util;->isDownloadObject(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;I)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 191
    iget v1, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mObjectType:I

    const/16 v2, 0xc

    if-eq v1, v2, :cond_11

    if-eqz v8, :cond_10

    if-eqz v16, :cond_10

    .line 193
    iget-object v0, v11, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    const-string v1, "handleNormalSyncObjectRcsMessageDownload status not active! Do not notify chat"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v15, :cond_f

    .line 215
    :try_start_6
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_0

    :cond_f
    const-wide/16 v1, -0x1

    return-wide v1

    .line 196
    :cond_10
    :try_start_7
    invoke-virtual {v11, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->getAppTypeString(I)Ljava/lang/String;

    move-result-object v2

    .line 197
    invoke-virtual {v11, v14, v13}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->getMessageTypeString(IZ)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v4, v17

    .line 196
    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->notifyMsgAppCldNotification(Ljava/lang/String;Ljava/lang/String;JZ)V

    goto :goto_8

    .line 199
    :cond_11
    new-instance v13, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v13}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    .line 200
    iget-object v14, v13, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    new-instance v6, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    const/4 v1, 0x1

    iget-object v5, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mLine:Ljava/lang/String;

    iget-object v4, v11, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v0, v6

    move-wide/from16 v2, v17

    move-object/from16 v19, v4

    move/from16 v4, p2

    move-object v7, v6

    move-object/from16 v6, v19

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    iget-object v0, v10, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->Downloading:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, v10, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->DownLoad:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    if-eqz v9, :cond_12

    .line 204
    iget-object v0, v11, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {v0, v13}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->sendDeviceNormalSyncDownload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto :goto_8

    :cond_12
    if-eqz v8, :cond_14

    if-eqz v16, :cond_14

    .line 207
    iget-object v0, v11, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    const-string v1, "handleNormalSyncObjectRcsMessageDownload status not active! Do not notify FT"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v15, :cond_13

    .line 215
    :try_start_8
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_0

    :cond_13
    const-wide/16 v1, -0x1

    return-wide v1

    :cond_14
    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v0, 0x0

    move-object/from16 v1, p0

    move-object v2, v10

    move-wide/from16 v3, v17

    move/from16 v7, p2

    move-object v8, v12

    move-object v9, v13

    move v10, v0

    .line 210
    :try_start_9
    invoke-virtual/range {v1 .. v10}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->handleOutPutParamSyncFlagSet(Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;JIZZLjava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Z)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_15
    :goto_8
    if-eqz v15, :cond_17

    .line 215
    :try_start_a
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_0

    goto :goto_a

    :catchall_0
    move-exception v0

    move-object v1, v0

    if-eqz v15, :cond_16

    .line 122
    :try_start_b
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_9

    :catchall_1
    move-exception v0

    move-object v2, v0

    :try_start_c
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_16
    :goto_9
    throw v1
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_c .. :try_end_c} :catch_0

    :catch_0
    move-exception v0

    .line 216
    iget-object v1, v11, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nullpointer or ArrayIndexOutOfBounds Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    :goto_a
    const-wide/16 v1, -0x1

    return-wide v1
.end method

.method public handleNotifySessionToApp()V
    .locals 2

    .line 1205
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mSessionQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1206
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mSessionQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const/16 v1, 0xa

    .line 1207
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->notifyMsgAppFetchBuffer(Landroid/content/ContentValues;I)V

    .line 1208
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mSessionQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public handleObjectRCSIMDNCloudSearch(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;)J
    .locals 12

    .line 431
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleObjectRCSIMDNCloudSearch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/Util;->getLineTelUriFromObjUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 448
    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DISPOSITION_ORIGINAL_TO:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/utils/Util;->getPhoneNum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 449
    invoke-interface {v3}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v3

    invoke-static {v2, v3}, Lcom/sec/internal/ims/cmstore/utils/Util;->getSimCountryCode(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 448
    invoke-static {v1, v2}, Lcom/sec/internal/ims/cmstore/utils/Util;->getTelUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 450
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-object v3, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationId:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->searchBufferNotificationUsingImdnAndTelUri(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    const/16 v3, 0xd

    const-wide/16 v4, -0x1

    if-eqz v2, :cond_3

    .line 451
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "delivered"

    .line 452
    iget-object v7, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DISPOSITION_STATUS:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const-string/jumbo v7, "status"

    if-eqz v6, :cond_0

    .line 453
    :try_start_1
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    sget-object v8, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {v8}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result v8

    if-ne v6, v8, :cond_0

    .line 454
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    const-string p1, "delivered comes after displayed, shouldn\'t update"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 499
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-wide v4

    :cond_0
    :try_start_2
    const-string v4, "_bufferdbid"

    .line 457
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    const-string v6, "_bufferdbid=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    .line 459
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    .line 460
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    const-string v10, "lastmodseq"

    .line 461
    iget-object v11, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->lastModSeq:Ljava/lang/Long;

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v10, "res_url"

    .line 462
    iget-object v11, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v11}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v10, "parentfolder"

    .line 463
    iget-object v11, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->parentFolder:Ljava/net/URL;

    invoke-virtual {v11}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v10, "path"

    .line 464
    iget-object v11, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->path:Ljava/lang/String;

    invoke-static {v11}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v10, "syncaction"

    .line 465
    sget-object v11, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->None:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v11}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v10, "syncdirection"

    .line 466
    sget-object v11, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->Done:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v11}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 468
    iget-object v10, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v10}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v10

    invoke-interface {v10}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isStoreImdnEnabled()Z

    move-result v10

    if-eqz v10, :cond_2

    const-string v10, "displayed"

    .line 469
    iget-object v11, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DISPOSITION_STATUS:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 470
    sget-object v10, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {v10}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 472
    :cond_1
    sget-object v10, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {v10}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 474
    :goto_0
    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v7, v3, v9, v6, v8}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 475
    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-object v7, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DISPOSITION_ORIGINAL_MESSAGEID:Ljava/lang/String;

    invoke-virtual {v6, v7, v9, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->updateRCSNotificationUsingImdnId(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)I

    goto :goto_1

    .line 477
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v1, v3, v9, v6, v8}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 479
    :goto_1
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mSummaryDB:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    invoke-virtual {v1, p1, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->insertSummaryDbUsingObjectIfNonExist(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;I)J

    goto :goto_2

    .line 481
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->insertRCSimdnToBufferDBUsingObject(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;)J

    .line 482
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mSummaryDB:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    invoke-virtual {v1, p1, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->insertSummaryDbUsingObjectIfNonExist(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;I)J

    .line 484
    :goto_2
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-object v3, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DISPOSITION_ORIGINAL_MESSAGEID:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->searchIMFTBufferUsingImdn(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    if-eqz v0, :cond_4

    .line 485
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "not_displayed_counter"

    .line 486
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const-string v3, "disposition_notification_status"

    .line 487
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 488
    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-object v7, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DISPOSITION_ORIGINAL_MESSAGEID:Ljava/lang/String;

    iget-object v8, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DISPOSITION_STATUS:Ljava/lang/String;

    invoke-virtual {v6, v7, v1, v3, v8}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->updateRcsMessageBufferDbIfNewIMDNReceived(Ljava/lang/String;IILjava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p0

    .line 484
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    :try_start_5
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p0

    :cond_4
    :goto_4
    if-eqz v0, :cond_5

    .line 491
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 492
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isStoreImdnEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 493
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DISPOSITION_ORIGINAL_MESSAGEID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->queryRcsDBMessageUsingImdnId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz v0, :cond_6

    .line 494
    :try_start_6
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 495
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DISPOSITION_ORIGINAL_MESSAGEID:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->queryBufferDbandUpdateRcsMessageDb(Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception p0

    .line 493
    :try_start_7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception p1

    :try_start_8
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw p0

    :cond_6
    :goto_6
    if-eqz v0, :cond_7

    .line 497
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :cond_7
    if-eqz v2, :cond_8

    .line 499
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_8
    return-wide v4

    :catchall_4
    move-exception p0

    if-eqz v2, :cond_9

    .line 450
    :try_start_9
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_7

    :catchall_5
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9
    :goto_7
    throw p0
.end method

.method public handleObjectRCSMessageCloudSearch(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Z)J
    .locals 22

    move-object/from16 v11, p0

    move-object/from16 v0, p1

    const-string/jumbo v1, "status"

    const-string/jumbo v2, "syncdirection"

    const-string/jumbo v3, "syncaction"

    .line 280
    iget-object v4, v11, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleObjectRCSMessageCloudSearch: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v4, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/utils/Util;->getLineTelUriFromObjUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 311
    :try_start_0
    iget-object v4, v11, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-object v5, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationId:Ljava/lang/String;

    invoke-virtual {v4, v5, v8}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->searchIMFTBufferUsingImdn(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v14, :cond_7

    .line 312
    :try_start_1
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v7, "_bufferdbid"

    .line 313
    invoke-interface {v14, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v14, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    int-to-long v7, v7

    .line 314
    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v14, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-static {v9}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-result-object v20

    .line 315
    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v14, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-static {v9}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    move-result-object v19

    const-string v9, "_id"

    .line 316
    invoke-interface {v14, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v14, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const-string v10, "_bufferdbid=?"

    new-array v15, v6, [Ljava/lang/String;

    .line 318
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v5

    .line 319
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 320
    new-instance v13, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->Done:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    sget-object v6, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->None:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-direct {v13, v4, v6}, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;-><init>(Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;)V

    .line 321
    iput-boolean v5, v13, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mIsChanged:Z

    .line 322
    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Insert:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 324
    iget-object v6, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mFlag:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Delete:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v6, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 325
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    const/4 v6, 0x1

    invoke-virtual {v13, v6, v5, v1}, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->setIsChangedActionAndDirection(ZLcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;)V

    .line 326
    iget-object v1, v11, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v1, v9}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->deleteRCSMessageDb(I)I

    move-object/from16 p2, v4

    goto :goto_0

    .line 327
    :cond_0
    iget-object v6, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mFlag:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-object/from16 p2, v4

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v6, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 328
    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v14, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    sget-object v16, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->READ:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    move-object/from16 v17, v4

    invoke-virtual/range {v16 .. v16}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->getId()I

    move-result v4

    if-eq v6, v4, :cond_1

    .line 330
    invoke-virtual/range {v16 .. v16}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "disposition_notification_status"

    .line 331
    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 332
    iget-object v1, v11, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v1, v9, v12}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->updateRCSMessageDb(ILandroid/content/ContentValues;)I

    :cond_1
    move-object/from16 v21, v17

    goto :goto_1

    :cond_2
    :goto_0
    move-object/from16 v21, p2

    .line 342
    :goto_1
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mFlag:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v1, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 344
    iget-boolean v1, v11, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->isCmsEnabled:Z

    if-eqz v1, :cond_3

    .line 345
    invoke-virtual {v11, v0, v14}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->updateRCSImdnToBufferDBUsingObject(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Landroid/database/Cursor;)V

    .line 347
    :cond_3
    iget-object v1, v11, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mScheduleRule:Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;

    iget v4, v11, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mDbTableContractIndex:I

    move-object v5, v15

    move-object v15, v1

    move/from16 v16, v4

    move-wide/from16 v17, v7

    invoke-virtual/range {v15 .. v21}, Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;->getSetFlagsForCldOperation(IJLcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;)Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    move-result-object v1

    move-object v13, v1

    goto :goto_2

    :cond_4
    move-object v5, v15

    :goto_2
    const-string v1, "lastmodseq"

    .line 350
    iget-object v4, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->lastModSeq:Ljava/lang/Long;

    invoke-virtual {v12, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v1, "res_url"

    .line 351
    iget-object v4, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "parentfolder"

    .line 352
    iget-object v4, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->parentFolder:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "path"

    .line 353
    iget-object v4, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->path:Ljava/lang/String;

    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    iget-object v1, v11, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mSummaryDB:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v4}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->insertSummaryDbUsingObjectIfNonExist(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;I)J

    .line 356
    iget-boolean v1, v13, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mIsChanged:Z

    if-eqz v1, :cond_6

    .line 357
    iget-object v1, v13, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 358
    iget-object v1, v13, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 359
    iget-object v1, v11, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v12, v10, v5}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 360
    iget v1, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mObjectType:I

    const/16 v2, 0xc

    if-ne v1, v2, :cond_5

    const/4 v6, 0x1

    goto :goto_3

    :cond_5
    const/4 v6, 0x0

    :goto_3
    const/4 v5, 0x1

    .line 361
    iget-boolean v9, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mIsGoforwardSync:Z

    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mLine:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v1, p0

    move-object v2, v13

    move-wide v3, v7

    move v7, v9

    move-object v8, v0

    move-object v9, v10

    move v10, v12

    invoke-virtual/range {v1 .. v10}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->handleOutPutParamSyncFlagSet(Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;JIZZLjava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Z)V

    goto :goto_4

    .line 364
    :cond_6
    iget-object v0, v11, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    const-string v1, "flagsetresult.mIsChanged: false - don\'t update sync action or direction"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget-object v0, v11, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v12, v10, v5}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    const-wide/16 v12, -0x1

    goto/16 :goto_b

    :catchall_0
    move-exception v0

    move-object v1, v0

    const-wide/16 v12, -0x1

    goto/16 :goto_e

    :cond_7
    move/from16 v7, p2

    .line 369
    :try_start_2
    invoke-direct {v11, v0, v8, v7}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->handleObjectDownloadCrossSearch(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Ljava/lang/String;Z)I

    move-result v1

    .line 370
    iget-object v2, v11, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleObjectRCSCloudSearch: RCS not found: contractTypeFromLegacy: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    const/4 v2, 0x1

    if-eq v1, v2, :cond_9

    if-eqz v14, :cond_8

    .line 406
    :try_start_3
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    const-wide/16 v12, -0x1

    goto/16 :goto_10

    :cond_8
    :goto_5
    const-wide/16 v1, -0x1

    return-wide v1

    .line 374
    :cond_9
    :try_start_4
    iget-object v1, v11, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->searchOrCreateSession(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;)Ljava/lang/String;

    move-result-object v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    if-nez v12, :cond_b

    if-eqz v14, :cond_a

    .line 406
    :try_start_5
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_0

    :cond_a
    const-wide/16 v1, -0x1

    return-wide v1

    :cond_b
    const-wide/16 v1, -0x1

    .line 378
    :try_start_6
    iget-object v3, v11, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v12, v4}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->insertRCSMessageToBufferDBUsingObject(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Ljava/lang/String;Z)Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    move-result-object v3

    .line 379
    iget-object v4, v11, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-object v5, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mFlagList:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->getIfCancelUsingFlag(Lcom/sec/internal/omanetapi/nms/data/FlagList;)Z

    move-result v4

    .line 380
    iget-wide v9, v3, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mBufferId:J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 381
    :try_start_7
    iget-object v1, v11, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mSummaryDB:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->insertSummaryDbUsingObjectIfNonExist(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;I)J

    .line 382
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->FetchUri:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    iget-object v5, v3, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v1, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v13

    .line 383
    iget-object v1, v11, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "result:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " fetchuri:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v13, :cond_c

    goto :goto_6

    :cond_c
    const/4 v2, 0x0

    :goto_6
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " text:"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TEXT_CONTENT:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isCancelStatus:"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, 0x0

    cmp-long v1, v9, v1

    if-lez v1, :cond_10

    .line 386
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    iget-object v2, v3, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    if-nez v1, :cond_d

    :try_start_8
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    iget-object v2, v3, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v1, v0

    move-wide v12, v9

    goto/16 :goto_e

    :cond_d
    :goto_7
    if-eqz v13, :cond_e

    iget-object v1, v11, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 387
    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v11, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->isMcsSupported(Landroid/content/Context;I)Z

    move-result v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v1, :cond_10

    .line 388
    :cond_e
    :try_start_9
    iget v1, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mObjectType:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    const/16 v2, 0xc

    if-ne v1, v2, :cond_f

    if-nez v4, :cond_f

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v15, 0x0

    move-object/from16 v1, p0

    move-object v2, v3

    move-wide v3, v9

    move/from16 v7, p2

    move-wide/from16 v16, v9

    move-object v9, v15

    move v10, v13

    .line 389
    :try_start_a
    invoke-virtual/range {v1 .. v10}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->handleOutPutParamSyncFlagSet(Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;JIZZLjava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Z)V

    goto :goto_8

    :cond_f
    move-wide/from16 v16, v9

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v1, p0

    move-object v2, v3

    move-wide/from16 v3, v16

    move/from16 v7, p2

    .line 392
    invoke-virtual/range {v1 .. v10}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->handleOutPutParamSyncFlagSet(Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;JIZZLjava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Z)V

    goto :goto_8

    :cond_10
    move-wide/from16 v16, v9

    .line 396
    :goto_8
    iget-object v1, v11, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationId:Ljava/lang/String;

    invoke-virtual {v1, v2, v12}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->queryImdnBufferDBandUpdateRcsMessageBufferDb(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iget-object v1, v11, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isStoreImdnEnabled()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 399
    iget-object v1, v11, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->queryRcsDBMessageUsingImdnId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    if-eqz v1, :cond_11

    .line 400
    :try_start_b
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 401
    iget-object v2, v11, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->queryBufferDbandUpdateRcsMessageDb(Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_a

    :catchall_2
    move-exception v0

    move-object v2, v0

    .line 399
    :try_start_c
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto :goto_9

    :catchall_3
    move-exception v0

    move-object v1, v0

    :try_start_d
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_9
    throw v2

    :cond_11
    :goto_a
    if-eqz v1, :cond_12

    .line 403
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :cond_12
    move-wide/from16 v12, v16

    :goto_b
    if-eqz v14, :cond_14

    .line 406
    :try_start_e
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_e .. :try_end_e} :catch_1

    goto :goto_11

    :catchall_4
    move-exception v0

    goto :goto_c

    :catchall_5
    move-exception v0

    move-wide/from16 v16, v9

    :goto_c
    move-object v1, v0

    move-wide/from16 v12, v16

    goto :goto_e

    :catchall_6
    move-exception v0

    goto :goto_d

    :catchall_7
    move-exception v0

    const-wide/16 v1, -0x1

    :goto_d
    move-wide v12, v1

    move-object v1, v0

    :goto_e
    if-eqz v14, :cond_13

    .line 311
    :try_start_f
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    goto :goto_f

    :catchall_8
    move-exception v0

    move-object v2, v0

    :try_start_10
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_13
    :goto_f
    throw v1
    :try_end_10
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_10 .. :try_end_10} :catch_1

    :catch_1
    move-exception v0

    goto :goto_10

    :catch_2
    move-exception v0

    const-wide/16 v1, -0x1

    move-wide v12, v1

    .line 407
    :goto_10
    iget-object v1, v11, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nullpointer or ArrayIndexOutOfBoundsException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    :goto_11
    return-wide v12
.end method

.method public isEmptySession()Z
    .locals 0

    .line 1201
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mSessionQueue:Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Queue;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public onAppOperationReceived(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 10

    .line 699
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAppOperationReceived: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->None:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 701
    sget-object v1, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler$1;->$SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$MsgOperationFlag:[I

    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mOperation:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/16 v2, 0xe

    if-eq v1, v2, :cond_1

    const/16 v2, 0xf

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    :goto_0
    move-object v3, v0

    goto :goto_1

    .line 722
    :pswitch_0
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->UnStarred:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    goto :goto_0

    .line 713
    :pswitch_1
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Delete:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    goto :goto_0

    .line 731
    :pswitch_2
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Restore:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    goto :goto_0

    .line 728
    :pswitch_3
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Trash:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    goto :goto_0

    .line 725
    :pswitch_4
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Spam:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    goto :goto_0

    .line 719
    :pswitch_5
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Starred:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    goto :goto_0

    .line 703
    :pswitch_6
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Cancel:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    goto :goto_0

    .line 710
    :pswitch_7
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    goto :goto_0

    .line 707
    :pswitch_8
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Insert:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    goto :goto_0

    .line 734
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Accepted:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    goto :goto_0

    .line 716
    :cond_1
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->DownLoad:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    goto :goto_0

    .line 739
    :goto_1
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;

    iget v2, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mDataContractType:I

    iget-object v4, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mOperation:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    iget v1, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mRowId:I

    int-to-long v5, v1

    iget-object v7, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mChatId:Ljava/lang/String;

    iget-object v8, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mCorrelationId:Ljava/lang/String;

    iget-object v9, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mLine:Ljava/lang/String;

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;-><init>(ILcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->Download:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mOperation:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    invoke-virtual {v1, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 744
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->onDownloadRequestFromApp(Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;)V

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    .line 746
    invoke-direct {p0, v0, p1, p2}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->onUpdateFromDeviceIMFT(Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;ZLcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_8
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

.method public onUpdateCmsConfig()V
    .locals 0

    .line 1341
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->onUpdateCmsConfigInitSyncDataTtl()V

    return-void
.end method

.method public updateMessageReceivedBeforeConfInfo(Ljava/lang/String;)V
    .locals 9

    .line 1317
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateMessageReceivedBeforeConfInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->searchIMFTBufferUsingChatId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1319
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    const-string v1, "imdn_message_id"

    .line 1322
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 1321
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1323
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v2, v1, p1}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->queryImdnBufferDBandUpdateRcsMessageBufferDb(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "_bufferdbid"

    .line 1324
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-string v2, "direction"

    .line 1325
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string v3, "is_filetransfer"

    .line 1326
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 1327
    :goto_0
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->queryBufferDbandUpdateRcsMessageDb(Ljava/lang/String;)I

    .line 1328
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateMessageReceivedBeforeConfInfo bufferDbId: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", direction: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result v1

    if-ne v2, v1, :cond_3

    const-string v1, "MessageApp"

    if-eqz v4, :cond_2

    const-string v2, "RCS_IMDN_FT"

    goto :goto_1

    :cond_2
    const-string v2, "RCS_IMDN_CHAT"

    :goto_1
    move-object v5, v2

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, v1

    .line 1331
    invoke-virtual/range {v3 .. v8}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->notifyMsgAppCldNotification(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 1335
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_3

    :catchall_0
    move-exception p0

    .line 1318
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0

    :cond_4
    :goto_3
    if-eqz v0, :cond_5

    .line 1337
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    return-void
.end method

.method public updateRCSImdnToBufferDBUsingObject(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Landroid/database/Cursor;)V
    .locals 3

    .line 413
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateRCSImdnToBufferDBUsingObject:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mImdns:Lcom/sec/internal/omanetapi/nms/data/ImdnList;

    if-eqz v0, :cond_2

    const-string v0, "IN"

    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DIRECTION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 417
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 418
    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    .line 419
    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "res_url"

    .line 418
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->parentFolder:Ljava/net/URL;

    .line 421
    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "parentfolder"

    .line 420
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->path:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 423
    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->path:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "path"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    :cond_1
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->None:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "syncaction"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 426
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->Done:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "syncdirection"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 427
    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mImdns:Lcom/sec/internal/omanetapi/nms/data/ImdnList;

    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->updateRCSImdnToBufferDB(Lcom/sec/internal/omanetapi/nms/data/ImdnList;Landroid/content/ContentValues;Landroid/database/Cursor;)V

    :cond_2
    :goto_0
    return-void
.end method
