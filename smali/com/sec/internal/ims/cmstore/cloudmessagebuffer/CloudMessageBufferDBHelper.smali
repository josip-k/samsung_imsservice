.class public Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;
.super Landroid/os/Handler;
.source "CloudMessageBufferDBHelper.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field protected mBufferDBChangeNetAPI:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

.field protected mBufferDBloaded:Z

.field protected final mCallbackMsgApp:Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;

.field protected final mContext:Landroid/content/Context;

.field protected final mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

.field protected mIsCmsEnabled:Z

.field protected mIsGoforwardSync:Z

.field protected final mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

.field protected final mMultiLnScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;

.field protected mPhoneId:I

.field protected mProvisionSuccess:Z

.field protected mRCSDbReady:Z

.field protected final mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

.field protected final mScheduleRule:Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;

.field protected final mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

.field protected mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

.field protected final mSummaryQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

.field protected final mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v10, p4

    .line 85
    invoke-direct/range {p0 .. p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 63
    const-class v1, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    .line 75
    iput-object v1, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mBufferDBChangeNetAPI:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    const/4 v1, 0x0

    .line 76
    iput-boolean v1, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRCSDbReady:Z

    .line 77
    iput-boolean v1, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mProvisionSuccess:Z

    .line 78
    iput-boolean v1, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mBufferDBloaded:Z

    .line 79
    iput-boolean v1, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mIsGoforwardSync:Z

    .line 80
    iput-boolean v1, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mIsCmsEnabled:Z

    .line 81
    iput v1, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mPhoneId:I

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    const-string v2, "onCreate"

    .line 87
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v1, p2

    .line 88
    iput-object v1, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 89
    invoke-interface/range {p2 .. p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v2

    iput v2, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mPhoneId:I

    .line 90
    invoke-interface/range {p2 .. p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mContext:Landroid/content/Context;

    move/from16 v1, p5

    .line 91
    iput-boolean v1, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mIsCmsEnabled:Z

    .line 92
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getBufferDbLoaded()Z

    move-result v1

    iput-boolean v1, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mBufferDBloaded:Z

    .line 93
    new-instance v11, Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;

    invoke-direct {v11}, Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;-><init>()V

    iput-object v11, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mScheduleRule:Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;

    move-object/from16 v12, p3

    .line 94
    iput-object v12, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    .line 95
    iput-object v10, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mCallbackMsgApp:Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;

    .line 96
    new-instance v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v1}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    iput-object v1, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mBufferDBChangeNetAPI:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    .line 97
    new-instance v13, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-direct {v13, v1, v10}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;)V

    iput-object v13, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSummaryQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    .line 98
    new-instance v9, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;

    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v1, v9

    move-object v3, v11

    move-object v4, v13

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;Landroid/os/Looper;)V

    iput-object v9, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMultiLnScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;

    .line 100
    new-instance v14, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v1, v14

    move-object v5, v9

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p1

    invoke-direct/range {v1 .. v8}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;Landroid/os/Looper;)V

    iput-object v14, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    .line 102
    new-instance v15, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v1, v15

    invoke-direct/range {v1 .. v8}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;Landroid/os/Looper;)V

    iput-object v15, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    .line 104
    new-instance v9, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v1, v9

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object v7, v15

    move-object v8, v14

    move-object v14, v9

    move-object/from16 v9, p1

    invoke-direct/range {v1 .. v9}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;Landroid/os/Looper;)V

    iput-object v14, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    .line 106
    new-instance v8, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v1, v8

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;Landroid/os/Looper;)V

    iput-object v8, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    return-void
.end method

.method private addSessionMessagesToList(Landroid/database/Cursor;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Z)V
    .locals 8

    if-eqz p1, :cond_5

    .line 491
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    const-string v0, "chat_id"

    .line 493
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 494
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->queryRCSMessagesToUploadByMessageType(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const/4 v5, 0x1

    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, p2

    move-object v4, v1

    move v6, p3

    .line 495
    :try_start_0
    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->buildBufferList(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Landroid/database/Cursor;IZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v1, :cond_1

    .line 496
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 497
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->queryRCSFtMessagesToUpload(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v5, 0xc

    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, p2

    move-object v4, v0

    move v6, p3

    .line 498
    :try_start_1
    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->buildBufferList(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Landroid/database/Cursor;IZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 499
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 500
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_3

    .line 497
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw p0

    :catchall_2
    move-exception p0

    if-eqz v1, :cond_4

    .line 494
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw p0

    :cond_5
    :goto_2
    return-void
.end method

.method private getMessageType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)I
    .locals 0

    .line 430
    sget-object p0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->MESSAGE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {p0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    sget-object p0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {p0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 432
    :cond_0
    sget-object p0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {p0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x11

    goto :goto_1

    .line 434
    :cond_1
    sget-object p0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM_GREETINGS:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {p0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0x12

    goto :goto_1

    :cond_2
    const/4 p0, -0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private getTableIndex(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;)I
    .locals 8

    .line 1081
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/16 v0, 0x12

    const/16 v1, 0x11

    const/16 v2, 0xa

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    sparse-switch p1, :sswitch_data_0

    :goto_0
    move p0, v7

    goto/16 :goto_1

    :sswitch_0
    const-string p1, "MSG_ALL"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v0

    goto/16 :goto_1

    :sswitch_1
    const-string p1, "VVMDATA"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move p0, v1

    goto/16 :goto_1

    :sswitch_2
    const-string p1, "GREETING"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/16 p0, 0x10

    goto/16 :goto_1

    :sswitch_3
    const-string p1, "V2TLANGUAGE"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/16 p0, 0xf

    goto/16 :goto_1

    :sswitch_4
    const-string p1, "V2T_SMS"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/16 p0, 0xe

    goto/16 :goto_1

    :sswitch_5
    const-string p1, "V2T_EMAIL"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/16 p0, 0xd

    goto/16 :goto_1

    :sswitch_6
    const-string p1, "PROFILE"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    const/16 p0, 0xc

    goto/16 :goto_1

    :sswitch_7
    const-string p1, "VOICEMAILTOTEXT"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    const/16 p0, 0xb

    goto/16 :goto_1

    :sswitch_8
    const-string p1, "NUTON"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_0

    :cond_8
    move p0, v2

    goto/16 :goto_1

    :sswitch_9
    const-string p1, "CHAT"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_0

    :cond_9
    const/16 p0, 0x9

    goto/16 :goto_1

    :sswitch_a
    const-string p1, "SMS"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 p0, 0x8

    goto/16 :goto_1

    :sswitch_b
    const-string p1, "PIN"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/4 p0, 0x7

    goto :goto_1

    :sswitch_c
    const-string p1, "MMS"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/4 p0, 0x6

    goto :goto_1

    :sswitch_d
    const-string p1, "FT"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/4 p0, 0x5

    goto :goto_1

    :sswitch_e
    const-string p1, "ADHOCV2T"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto/16 :goto_0

    :cond_e
    move p0, v3

    goto :goto_1

    :sswitch_f
    const-string p1, "RCS_SESSION"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    goto/16 :goto_0

    :cond_f
    move p0, v4

    goto :goto_1

    :sswitch_10
    const-string p1, "ACTIVATE"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/4 p0, 0x2

    goto :goto_1

    :sswitch_11
    const-string p1, "DEACTIVATE"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    goto/16 :goto_0

    :cond_11
    move p0, v5

    goto :goto_1

    :sswitch_12
    const-string p1, "NUTOFF"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    goto/16 :goto_0

    :cond_12
    move p0, v6

    :goto_1
    packed-switch p0, :pswitch_data_0

    .line 1120
    sget-object p0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->StartFullSync:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    invoke-virtual {p0, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14

    sget-object p0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->StopSync:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    .line 1121
    invoke-virtual {p0, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14

    sget-object p0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->StartDeltaSync:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    .line 1122
    invoke-virtual {p0, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13

    goto :goto_2

    :cond_13
    move v0, v7

    goto :goto_3

    :cond_14
    :goto_2
    :pswitch_0
    move v0, v6

    goto :goto_3

    :pswitch_1
    move v0, v4

    goto :goto_3

    :pswitch_2
    const/16 v0, 0x13

    goto :goto_3

    :pswitch_3
    move v0, v3

    goto :goto_3

    :pswitch_4
    move v0, v5

    goto :goto_3

    :pswitch_5
    move v0, v1

    goto :goto_3

    :pswitch_6
    move v0, v2

    goto :goto_3

    :pswitch_7
    const/16 v0, 0x14

    :goto_3
    :pswitch_8
    return v0

    :sswitch_data_0
    .sparse-switch
        -0x7610d13e -> :sswitch_12
        -0x5a1a438c -> :sswitch_11
        -0x340e3b0d -> :sswitch_10
        -0x1faa7087 -> :sswitch_f
        -0x1355f281 -> :sswitch_e
        0x8ce -> :sswitch_d
        0x12ab3 -> :sswitch_c
        0x13575 -> :sswitch_b
        0x14139 -> :sswitch_a
        0x1f8b58 -> :sswitch_9
        0x473120c -> :sswitch_8
        0x12846531 -> :sswitch_7
        0x185a1589 -> :sswitch_6
        0x1a9035b5 -> :sswitch_5
        0x1f765db2 -> :sswitch_4
        0x30191490 -> :sswitch_3
        0x3ae47039 -> :sswitch_2
        0x5c75a6b7 -> :sswitch_1
        0x7af6bfa3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method private getVvmChangeParam(Ljava/lang/String;ILcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;)Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;
    .locals 4

    .line 1387
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVvmChangeParam: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " tableindex: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " VvmTypeChange: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    .line 1391
    :try_start_0
    const-class v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;

    invoke-virtual {p2, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;

    .line 1392
    iput-object p3, p1, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;->mVvmChange:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    .line 1393
    iget-object p2, p1, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;->mLine:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1394
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTelCtn()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;->mLine:Ljava/lang/String;

    .line 1396
    :cond_0
    iget-object p2, p1, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;->mLine:Ljava/lang/String;

    iget-object p3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 1397
    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v0

    invoke-static {p3, v0}, Lcom/sec/internal/ims/cmstore/utils/Util;->getSimCountryCode(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p3

    .line 1396
    invoke-static {p2, p3}, Lcom/sec/internal/ims/cmstore/utils/Util;->getTelUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;->mLine:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1400
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private getVvmParam(Lcom/google/gson/JsonElement;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;I)Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;
    .locals 1

    .line 1132
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p3

    const/4 v0, -0x1

    sparse-switch p3, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string p3, "GREETING"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v0, 0xb

    goto/16 :goto_0

    :sswitch_1
    const-string p3, "V2TLANGUAGE"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v0, 0xa

    goto/16 :goto_0

    :sswitch_2
    const-string p3, "V2T_SMS"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v0, 0x9

    goto/16 :goto_0

    :sswitch_3
    const-string p3, "V2T_EMAIL"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v0, 0x8

    goto/16 :goto_0

    :sswitch_4
    const-string p3, "PROFILE"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_5
    const-string p3, "VOICEMAILTOTEXT"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_6
    const-string p3, "NUTON"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_7
    const-string p3, "PIN"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    goto :goto_0

    :cond_7
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_8
    const-string p3, "ADHOCV2T"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    goto :goto_0

    :cond_8
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_9
    const-string p3, "ACTIVATE"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    goto :goto_0

    :cond_9
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_a
    const-string p3, "DEACTIVATE"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    goto :goto_0

    :cond_a
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_b
    const-string p3, "NUTOFF"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    goto :goto_0

    :cond_b
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    goto/16 :goto_1

    .line 1146
    :pswitch_0
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->GREETING:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    invoke-direct {p0, p1, p4, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->getVvmChangeParam(Ljava/lang/String;ILcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;)Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;

    move-result-object p0

    goto/16 :goto_1

    .line 1166
    :pswitch_1
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->V2TLANGUAGE:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    invoke-direct {p0, p1, p4, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->getVvmChangeParam(Ljava/lang/String;ILcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;)Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;

    move-result-object p0

    goto/16 :goto_1

    .line 1174
    :pswitch_2
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->V2T_SMS:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    invoke-direct {p0, p1, p4, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->getVvmChangeParam(Ljava/lang/String;ILcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;)Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;

    move-result-object p0

    goto :goto_1

    .line 1178
    :pswitch_3
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->V2T_EMAIL:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    invoke-direct {p0, p1, p4, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->getVvmChangeParam(Ljava/lang/String;ILcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;)Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;

    move-result-object p0

    goto :goto_1

    .line 1138
    :pswitch_4
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->FULLPROFILE:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    invoke-direct {p0, p1, p4, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->getVvmChangeParam(Ljava/lang/String;ILcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;)Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;

    move-result-object p0

    goto :goto_1

    .line 1142
    :pswitch_5
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->VOICEMAILTOTEXT:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    invoke-direct {p0, p1, p4, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->getVvmChangeParam(Ljava/lang/String;ILcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;)Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;

    move-result-object p0

    goto :goto_1

    .line 1162
    :pswitch_6
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->NUTON:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    invoke-direct {p0, p1, p4, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->getVvmChangeParam(Ljava/lang/String;ILcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;)Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;

    move-result-object p0

    goto :goto_1

    .line 1134
    :pswitch_7
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->PIN:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    invoke-direct {p0, p1, p4, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->getVvmChangeParam(Ljava/lang/String;ILcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;)Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;

    move-result-object p0

    goto :goto_1

    .line 1170
    :pswitch_8
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->ADHOC_V2T:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    invoke-direct {p0, p1, p4, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->getVvmChangeParam(Ljava/lang/String;ILcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;)Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;

    move-result-object p0

    goto :goto_1

    .line 1150
    :pswitch_9
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->ACTIVATE:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    invoke-direct {p0, p1, p4, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->getVvmChangeParam(Ljava/lang/String;ILcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;)Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;

    move-result-object p0

    goto :goto_1

    .line 1154
    :pswitch_a
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->DEACTIVATE:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    invoke-direct {p0, p1, p4, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->getVvmChangeParam(Ljava/lang/String;ILcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;)Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;

    move-result-object p0

    goto :goto_1

    .line 1158
    :pswitch_b
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->NUTOFF:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    invoke-direct {p0, p1, p4, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->getVvmChangeParam(Ljava/lang/String;ILcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;)Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;

    move-result-object p0

    :goto_1
    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x7610d13e -> :sswitch_b
        -0x5a1a438c -> :sswitch_a
        -0x340e3b0d -> :sswitch_9
        -0x1355f281 -> :sswitch_8
        0x13575 -> :sswitch_7
        0x473120c -> :sswitch_6
        0x12846531 -> :sswitch_5
        0x185a1589 -> :sswitch_4
        0x1a9035b5 -> :sswitch_3
        0x1f765db2 -> :sswitch_2
        0x30191490 -> :sswitch_1
        0x3ae47039 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
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

.method private isSpam(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;)Z
    .locals 2

    .line 1477
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSpam: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    if-eqz p1, :cond_2

    .line 1478
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;->mOperationList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 1482
    :cond_0
    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;

    .line 1483
    iget-boolean v0, v0, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mIsSpam:Z

    if-eqz v0, :cond_1

    return v1

    :cond_2
    :goto_0
    return p0
.end method

.method private isValidPreferredLineValue(Lcom/google/gson/JsonElement;)Z
    .locals 3

    .line 1376
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p0

    const-string/jumbo v0, "preferred_line"

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v2

    :goto_0
    if-eqz p0, :cond_1

    .line 1379
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    .line 1380
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result p1

    xor-int/2addr p1, v1

    goto :goto_1

    :cond_1
    move p1, v2

    :goto_1
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    return v1
.end method

.method private onNmsEventChangedObjSummaryDbAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Z)V
    .locals 3

    const-string v0, "messagetype"

    .line 603
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 602
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 604
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNmsEventChangedObjSummaryDbAvailableUsingUrl(), type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isgoforwardSync: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_7

    const/16 v1, 0xe

    if-eq p1, v1, :cond_7

    const/16 v1, 0x26

    if-eq p1, v1, :cond_5

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb

    if-eq p1, v0, :cond_7

    const/16 v0, 0xc

    if-eq p1, v0, :cond_7

    goto/16 :goto_8

    .line 619
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    iget-object v0, p2, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->resourceURL:Ljava/net/URL;

    .line 620
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    .line 619
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->queryMMSBufferDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 621
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 622
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->onNmsEventChangedObjBufferDbMmsAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 619
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
    :goto_1
    if-eqz p1, :cond_9

    .line 625
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_8

    .line 608
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    iget-object v0, p2, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->resourceURL:Ljava/net/URL;

    .line 609
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    .line 608
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->querySMSBufferDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 610
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 611
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->onNmsEventChangedObjBufferDbSmsAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Z)V

    goto :goto_2

    .line 614
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    const-string p2, "inconsistency between buffer or duplicated nms event"

    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_2
    if-eqz p1, :cond_9

    .line 616
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_8

    :catchall_2
    move-exception p0

    if-eqz p1, :cond_4

    .line 608
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    throw p0

    .line 640
    :cond_5
    iget-object p1, p2, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->parentFolder:Ljava/net/URL;

    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object p1

    const/16 p3, 0x2f

    .line 641
    invoke-virtual {p1, p3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p3

    add-int/2addr p3, v0

    invoke-virtual {p1, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 642
    iget-object p3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {p3, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->queryGroupSessionWithConversation(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 643
    :try_start_4
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p3

    if-eqz p3, :cond_6

    .line 644
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->onNmsEventChangedSessionObjBufferDb(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_5

    :catchall_4
    move-exception p0

    .line 642
    :try_start_5
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0

    :cond_6
    :goto_5
    if-eqz p1, :cond_9

    .line 646
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_8

    .line 631
    :cond_7
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    iget-object v0, p2, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->resourceURL:Ljava/net/URL;

    .line 632
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    .line 631
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->queryRCSBufferDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 633
    :try_start_6
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 634
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->onNmsEventChangedObjBufferDbRcsAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    goto :goto_7

    :catchall_6
    move-exception p0

    .line 631
    :try_start_7
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    goto :goto_6

    :catchall_7
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw p0

    :cond_8
    :goto_7
    if-eqz p1, :cond_9

    .line 637
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_9
    :goto_8
    return-void
.end method

.method private onNmsEventDeletedObjSummaryDbAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;Z)V
    .locals 3

    const-string v0, "messagetype"

    .line 765
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 764
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 766
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNmsEventDeletedObjSummaryDbAvailableUsingUrl(), type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/16 v0, 0xe

    if-eq p1, v0, :cond_5

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb

    if-eq p1, v0, :cond_5

    const/16 v0, 0xc

    if-eq p1, v0, :cond_5

    goto/16 :goto_6

    .line 780
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    iget-object v0, p2, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->resourceURL:Ljava/net/URL;

    .line 781
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    .line 780
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->queryMMSBufferDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 782
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 783
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->onNmsEventDeletedObjBufferDbMmsAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 780
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
    :goto_1
    if-eqz p1, :cond_7

    .line 786
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_6

    .line 769
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    iget-object v0, p2, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->resourceURL:Ljava/net/URL;

    .line 770
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    .line 769
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->querySMSBufferDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 771
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 772
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->onNmsEventDeletedObjBufferDbSmsAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;Z)V

    goto :goto_2

    .line 775
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    const-string p2, "inconsistency between buffer or duplicated nms event"

    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_2
    if-eqz p1, :cond_7

    .line 777
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_6

    :catchall_2
    move-exception p0

    if-eqz p1, :cond_4

    .line 769
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    throw p0

    .line 792
    :cond_5
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    iget-object v0, p2, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->resourceURL:Ljava/net/URL;

    .line 793
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    .line 792
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->queryRCSBufferDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 794
    :try_start_4
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 795
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->onNmsEventDeletedObjBufferDbRcsAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_5

    :catchall_4
    move-exception p0

    .line 792
    :try_start_5
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0

    :cond_6
    :goto_5
    if-eqz p1, :cond_7

    .line 798
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_7
    :goto_6
    return-void
.end method

.method private onNmsEventExpiredObjSummaryDbAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;)V
    .locals 3

    const-string v0, "messagetype"

    .line 1558
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 1557
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 1559
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNmsEventExpiredObjSummaryDbAvailableUsingUrl(), type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/16 v0, 0xe

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb

    if-eq p1, v0, :cond_2

    const/16 v0, 0xc

    if-eq p1, v0, :cond_2

    goto :goto_0

    .line 1565
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    iget-object p1, p2, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->deleteMMSBufferDBwithResUrl(Ljava/lang/String;)I

    goto :goto_0

    .line 1562
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    iget-object p1, p2, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->deleteSMSBufferDBwithResUrl(Ljava/lang/String;)I

    goto :goto_0

    .line 1571
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    iget-object p1, p2, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->deleteRCSBufferDBwithResUrl(Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private onUpdateBufferDBBulkUpdateSuccess(Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 10

    const-string/jumbo v0, "syncaction"

    .line 518
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 517
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const-string v1, "messagetype"

    .line 520
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 519
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 521
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUpdateBufferDBBulkUpdateSuccess,  status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " msgtype: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "linenum"

    const-string v0, "_bufferdbid"

    const/4 v1, 0x1

    const/4 v9, 0x0

    if-eq v3, v1, :cond_6

    const/16 v2, 0x11

    if-eq v3, v2, :cond_4

    const/4 v2, 0x3

    if-eq v3, v2, :cond_2

    const/4 v2, 0x4

    if-eq v3, v2, :cond_0

    goto/16 :goto_9

    .line 545
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v2, p2}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->queryMMSBufferDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 546
    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 548
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 547
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v4, v0

    .line 550
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    .line 549
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 551
    new-instance p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    new-instance v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    const/4 v6, 0x0

    iget-object v8, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 552
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setBufferDBChangeParam(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    .line 554
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object p1

    invoke-virtual {v0, p1, v9}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->onCloudUpdateFlagSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v9

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 545
    :try_start_1
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0

    :cond_1
    :goto_1
    if-eqz p2, :cond_8

    .line 558
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_8

    .line 529
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {v2, p2}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->querySMSBufferDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 530
    :try_start_2
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 532
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 531
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v4, v0

    .line 534
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    .line 533
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 535
    new-instance p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    new-instance v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    const/4 v6, 0x0

    iget-object v8, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 536
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setBufferDBChangeParam(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    .line 538
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object p1

    invoke-virtual {v0, p1, v9}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->onCloudUpdateFlagSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move v1, v9

    goto :goto_3

    :catchall_2
    move-exception p0

    .line 529
    :try_start_3
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0

    :cond_3
    :goto_3
    if-eqz p2, :cond_8

    .line 542
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_8

    .line 577
    :cond_4
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    invoke-virtual {v2, p2}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->queryVVMwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 578
    :try_start_4
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 580
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 579
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v4, v0

    .line 582
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    .line 581
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 583
    new-instance p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    new-instance v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    const/4 v6, 0x0

    iget-object v8, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 584
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setBufferDBChangeParam(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    .line 586
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object p1

    invoke-virtual {v0, p1, v9}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->onCloudUpdateFlagSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move v1, v9

    goto :goto_5

    :catchall_4
    move-exception p0

    .line 577
    :try_start_5
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0

    :cond_5
    :goto_5
    if-eqz p2, :cond_8

    .line 590
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    goto :goto_8

    .line 561
    :cond_6
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {v2, p2}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->queryRCSBufferDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 562
    :try_start_6
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 564
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 563
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v4, v0

    .line 566
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    .line 565
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 567
    new-instance p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    new-instance v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    const/4 v6, 0x0

    iget-object v8, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 568
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setBufferDBChangeParam(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    .line 570
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object p1

    invoke-virtual {v0, p1, v9}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->onCloudUpdateFlagSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    move v1, v9

    goto :goto_7

    :catchall_6
    move-exception p0

    .line 561
    :try_start_7
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    goto :goto_6

    :catchall_7
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw p0

    :cond_7
    :goto_7
    if-eqz p2, :cond_8

    .line 574
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_8
    :goto_8
    move v9, v1

    :goto_9
    if-eqz v9, :cond_9

    .line 596
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    const-string p1, "inconsistency between buffer or duplicated nms event"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method

.method private processParamAppJsonList(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;)V
    .locals 5

    .line 1491
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processParamAppJsonList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_5

    .line 1492
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;->mOperationList:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_1

    .line 1495
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    .line 1496
    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;

    .line 1497
    iget v3, v2, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mDataContractType:I

    if-eq v3, v1, :cond_3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 1512
    :pswitch_0
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    invoke-virtual {v3, v2, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->onAppOperationReceived(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto :goto_0

    .line 1499
    :cond_1
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v3, v2, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->onAppOperationReceived(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto :goto_0

    .line 1502
    :cond_2
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {v3, v2, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->onAppOperationReceived(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto :goto_0

    .line 1506
    :cond_3
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {v3, v2, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->onAppOperationReceived(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto :goto_0

    .line 1518
    :cond_4
    iget-object p1, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 1519
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->sendDeviceUpdate(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    :cond_5
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private processWipeOutList(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;)V
    .locals 6

    if-eqz p1, :cond_3

    .line 1529
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;->mOperationList:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto/16 :goto_1

    .line 1533
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processWipeOutList: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;

    .line 1535
    iget-object v2, v2, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mLine:Ljava/lang/String;

    .line 1536
    iget-object v3, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;->mOperationList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    .line 1537
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;

    iget-object v3, v3, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mDataType:Ljava/lang/String;

    const-string v5, "MSG_ALL"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1538
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->wipeOutData(ILjava/lang/String;)V

    .line 1539
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->wipeOutData(ILjava/lang/String;)V

    .line 1540
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {v3, v1, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->wipeOutData(ILjava/lang/String;)V

    goto :goto_0

    .line 1541
    :cond_2
    iget-object v3, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;->mOperationList:Ljava/util/ArrayList;

    .line 1542
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;

    iget-object v3, v3, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mDataType:Ljava/lang/String;

    const-string v5, "VVMDATA"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1543
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->onWipeOutResetSyncHandler()V

    .line 1544
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    const/16 v5, 0x11

    invoke-virtual {v3, v5, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->wipeOutData(ILjava/lang/String;)V

    .line 1545
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    const/16 v5, 0x12

    invoke-virtual {v3, v5, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->wipeOutData(ILjava/lang/String;)V

    .line 1546
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    const/16 v5, 0x13

    invoke-virtual {v3, v5, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->wipeOutData(ILjava/lang/String;)V

    .line 1547
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    const/16 v5, 0x14

    invoke-virtual {v3, v5, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->wipeOutData(ILjava/lang/String;)V

    .line 1548
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    const/16 v5, 0x24

    invoke-virtual {v3, v5, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->wipeOutData(ILjava/lang/String;)V

    .line 1549
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    const/16 v5, 0x17

    invoke-virtual {v3, v5, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->wipeOutData(ILjava/lang/String;)V

    .line 1550
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {v2, v4}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->setVVMSyncState(Z)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method protected appFetchingFailedMsg(Ljava/lang/String;)V
    .locals 3

    .line 1579
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->querySMSMessagesBySycnDirection(ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1581
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1582
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {v2, v0, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->notifyMsgAppFetchBuffer(Landroid/database/Cursor;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 1579
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

    .line 1585
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1586
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->queryMMSMessagesBySycnDirection(ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1588
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1589
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v2, v0, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->notifyMsgAppFetchBuffer(Landroid/database/Cursor;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p0

    .line 1586
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0

    :cond_2
    :goto_3
    if-eqz v0, :cond_3

    .line 1592
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1593
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->queryRCSMessagesBySycnDirection(ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1595
    :try_start_4
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1596
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {p0, p1, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->notifyMsgAppFetchBuffer(Landroid/database/Cursor;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_5

    :catchall_4
    move-exception p0

    .line 1593
    :try_start_5
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0

    :cond_4
    :goto_5
    if-eqz p1, :cond_5

    .line 1599
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_5
    return-void
.end method

.method protected buildBufferList(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Landroid/database/Cursor;IZZ)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "linenum"

    const-string v4, "_bufferdbid"

    if-eqz p5, :cond_2

    if-eqz v2, :cond_1

    .line 119
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 120
    iget-object v5, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bufferlist query count for isUpload : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_0
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 122
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 125
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 124
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 126
    iget-object v6, v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    new-instance v14, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    int-to-long v9, v5

    iget-object v13, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v7, v14

    move/from16 v8, p3

    move/from16 v11, p4

    invoke-direct/range {v7 .. v13}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_0

    :cond_1
    return-void

    :cond_2
    if-eqz v2, :cond_4

    .line 133
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 134
    iget-object v5, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bufferlist query count: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_3
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 136
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 139
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 138
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 140
    iget-object v6, v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    new-instance v14, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    int-to-long v9, v5

    iget-object v13, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v7, v14

    move/from16 v8, p3

    move/from16 v11, p4

    invoke-direct/range {v7 .. v13}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_3

    :cond_4
    return-void
.end method

.method protected checkRCSNotifyUriRequestToApp(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;I)V
    .locals 6

    .line 282
    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    .line 283
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkRCSNotifyUriRequestToApp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 288
    new-instance v1, Lcom/google/gson/JsonArray;

    invoke-direct {v1}, Lcom/google/gson/JsonArray;-><init>()V

    .line 289
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->FetchUri:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v1

    if-ne p2, v1, :cond_2

    const/4 p2, 0x0

    move v1, p2

    .line 293
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 294
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 295
    new-instance v3, Lcom/google/gson/JsonObject;

    invoke-direct {v3}, Lcom/google/gson/JsonObject;-><init>()V

    .line 296
    iget-wide v4, v2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const-string v5, "id"

    invoke-virtual {v3, v5, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget v2, v2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 299
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/JsonArray;

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 303
    :cond_1
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/gson/JsonArray;

    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 304
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mCallbackMsgApp:Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;

    .line 305
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/gson/JsonArray;

    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MessageApp"

    const-string v1, "FT"

    .line 304
    invoke-interface {p0, v0, v1, p1, p2}, Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;->notifyCloudMessageUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_2
    return-void
.end method

.method protected cleanAllBufferDB()V
    .locals 1

    .line 1006
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->cleanAllBufferDB()V

    .line 1007
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->cleanAllBufferDB()V

    .line 1008
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->cleanAllBufferDB()V

    const/4 v0, 0x0

    .line 1009
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->setBufferDBLoaded(Z)V

    return-void
.end method

.method public cleanAllBufferDB(Ljava/lang/String;)V
    .locals 1

    .line 1013
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->cleanAllBufferDB(Ljava/lang/String;)V

    .line 1014
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->cleanAllBufferDB(Ljava/lang/String;)V

    .line 1015
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->cleanAllBufferDB(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1016
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->setBufferDBLoaded(Z)V

    return-void
.end method

.method protected decodeJson(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;)Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;
    .locals 41

    move-object/from16 v1, p0

    const-string v0, "group_sms_body"

    const-string v2, "group_sms_from"

    const-string/jumbo v3, "trash_bin"

    const-string v4, "group_sms_recipients"

    const-string v5, "is_spam"

    const-string v6, "is_group_sms"

    const-string v7, "imdn_message_id"

    const-string v8, "correlationId"

    const-string v9, "correlationTag"

    const-string v10, "chatid"

    const-string v11, "id"

    const-string/jumbo v12, "type"

    const-string v13, "islocalonly"

    .line 1189
    new-instance v14, Lcom/google/gson/JsonParser;

    invoke-direct {v14}, Lcom/google/gson/JsonParser;-><init>()V

    .line 1190
    new-instance v15, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;

    invoke-direct {v15}, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;-><init>()V

    const/16 v16, 0x0

    move-object/from16 v17, v15

    move-object/from16 v15, p2

    .line 1193
    :try_start_0
    invoke-virtual {v14, v15}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v14

    .line 1194
    invoke-virtual {v14}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v15

    if-eqz v15, :cond_13

    .line 1195
    invoke-virtual {v14}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v14

    move-object/from16 v18, p3

    move-object/from16 v19, v3

    const/4 v15, 0x0

    .line 1196
    :goto_0
    invoke-virtual {v14}, Lcom/google/gson/JsonArray;->size()I

    move-result v3

    if-ge v15, v3, :cond_13

    .line 1197
    invoke-virtual {v14, v15}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v3

    const-string v20, ""

    move-object/from16 v21, v14

    .line 1204
    iget-object v14, v1, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v14}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTelCtn()Ljava/lang/String;

    move-result-object v14

    move-object/from16 p3, v14

    .line 1212
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v14

    invoke-virtual {v14, v13}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v14

    if-eqz v14, :cond_0

    .line 1214
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v14

    .line 1215
    invoke-virtual {v14, v13}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v14

    .line 1216
    invoke-virtual {v14}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v14

    if-nez v14, :cond_0

    .line 1217
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v14

    .line 1218
    invoke-virtual {v14, v13}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v14

    .line 1219
    invoke-virtual {v14}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v22, v13

    const-string/jumbo v13, "true"

    .line 1220
    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    move-object/from16 v20, v10

    move-object/from16 v40, v11

    move-object/from16 v10, v18

    move-object/from16 v11, v19

    move-object/from16 v18, v0

    move-object/from16 v19, v4

    move-object/from16 v0, v17

    move-object/from16 v17, v2

    goto/16 :goto_c

    :cond_0
    move-object/from16 v22, v13

    .line 1225
    :cond_1
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v13

    invoke-virtual {v13, v12}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v13

    if-eqz v13, :cond_2

    .line 1226
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v13

    invoke-virtual {v13, v12}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v13

    if-nez v13, :cond_2

    .line 1227
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v13

    invoke-virtual {v13, v12}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v20

    :cond_2
    move-object/from16 v13, v20

    .line 1230
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v14

    invoke-virtual {v14, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v14

    if-eqz v14, :cond_3

    .line 1231
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v14

    invoke-virtual {v14, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v14

    .line 1232
    invoke-virtual {v14}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v14

    if-nez v14, :cond_3

    .line 1233
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v14

    .line 1234
    invoke-virtual {v14, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v14

    move/from16 v27, v14

    goto :goto_1

    :cond_3
    const/16 v27, 0x0

    .line 1237
    :goto_1
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v14

    invoke-virtual {v14, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v14

    if-eqz v14, :cond_4

    .line 1238
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v14

    .line 1239
    invoke-virtual {v14, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v14

    if-nez v14, :cond_4

    .line 1240
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v14

    .line 1241
    invoke-virtual {v14, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v28, v14

    goto :goto_2

    :cond_4
    move-object/from16 v28, v16

    .line 1244
    :goto_2
    invoke-direct {v1, v3}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->isValidPreferredLineValue(Lcom/google/gson/JsonElement;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 1245
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v14

    move-object/from16 v20, v10

    const-string/jumbo v10, "preferred_line"

    .line 1246
    invoke-virtual {v14, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v10

    .line 1247
    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v10

    iget-object v14, v1, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mContext:Landroid/content/Context;

    move-object/from16 v40, v11

    iget v11, v1, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mPhoneId:I

    invoke-static {v14, v11}, Lcom/sec/internal/ims/cmstore/utils/Util;->getSimCountryCode(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v11

    .line 1245
    invoke-static {v10, v11}, Lcom/sec/internal/ims/cmstore/utils/Util;->getTelUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1248
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6

    move-object/from16 v32, v10

    goto :goto_3

    :cond_5
    move-object/from16 v20, v10

    move-object/from16 v40, v11

    :cond_6
    move-object/from16 v32, p3

    .line 1253
    :goto_3
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v10

    if-eqz v10, :cond_7

    .line 1255
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v10

    .line 1256
    invoke-virtual {v10, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v10

    .line 1257
    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v10

    if-nez v10, :cond_7

    .line 1258
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v10

    .line 1259
    invoke-virtual {v10, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v10

    .line 1260
    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v29, v10

    goto :goto_4

    :cond_7
    move-object/from16 v29, v16

    .line 1264
    :goto_4
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v10

    if-eqz v10, :cond_8

    .line 1266
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v10

    .line 1267
    invoke-virtual {v10, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v10

    .line 1268
    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v10

    if-nez v10, :cond_8

    .line 1269
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v10

    .line 1270
    invoke-virtual {v10, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v10

    .line 1271
    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v10

    goto :goto_5

    :cond_8
    move-object/from16 v10, v16

    .line 1275
    :goto_5
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v11

    invoke-virtual {v11, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v11

    if-eqz v11, :cond_9

    .line 1277
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v11

    .line 1278
    invoke-virtual {v11, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v11

    .line 1279
    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v11

    if-nez v11, :cond_9

    .line 1280
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v10

    .line 1281
    invoke-virtual {v10, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v10

    .line 1282
    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v10

    :cond_9
    move-object/from16 v30, v10

    .line 1287
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v10

    if-eqz v10, :cond_a

    .line 1289
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v10

    .line 1290
    invoke-virtual {v10, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v10

    .line 1291
    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v10

    if-nez v10, :cond_a

    .line 1292
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v10

    .line 1293
    invoke-virtual {v10, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v10

    .line 1294
    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v10

    move/from16 v35, v10

    goto :goto_6

    :cond_a
    const/16 v35, 0x0

    :goto_6
    if-eqz v35, :cond_e

    .line 1298
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v10

    invoke-virtual {v10, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v10

    if-eqz v10, :cond_b

    .line 1300
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v10

    .line 1301
    invoke-virtual {v10, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v10

    .line 1302
    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v10

    if-nez v10, :cond_b

    .line 1303
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v10

    .line 1304
    invoke-virtual {v10, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v10

    .line 1305
    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v10

    goto :goto_7

    :cond_b
    move-object/from16 v10, v16

    .line 1308
    :goto_7
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v11

    invoke-virtual {v11, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v11

    if-eqz v11, :cond_c

    .line 1310
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v11

    .line 1311
    invoke-virtual {v11, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v11

    .line 1312
    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v11

    if-nez v11, :cond_c

    .line 1313
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v11

    .line 1314
    invoke-virtual {v11, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v11

    .line 1315
    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v11

    goto :goto_8

    :cond_c
    move-object/from16 v11, v16

    .line 1318
    :goto_8
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v14

    invoke-virtual {v14, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v14

    if-eqz v14, :cond_d

    .line 1320
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v14

    .line 1321
    invoke-virtual {v14, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v14

    .line 1322
    invoke-virtual {v14}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v14

    if-nez v14, :cond_d

    .line 1323
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v14

    .line 1324
    invoke-virtual {v14, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v14

    .line 1325
    invoke-virtual {v14}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v37, v10

    move-object/from16 v38, v11

    move-object/from16 v39, v14

    goto :goto_9

    :cond_d
    move-object/from16 v37, v10

    move-object/from16 v38, v11

    move-object/from16 v39, v16

    goto :goto_9

    :cond_e
    move-object/from16 v37, v16

    move-object/from16 v38, v37

    move-object/from16 v39, v38

    .line 1330
    :goto_9
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v10

    invoke-virtual {v10, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v10

    if-eqz v10, :cond_f

    .line 1332
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v10

    .line 1333
    invoke-virtual {v10, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v10

    .line 1334
    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v10

    if-nez v10, :cond_f

    .line 1335
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v10

    .line 1336
    invoke-virtual {v10, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v10

    .line 1337
    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v10

    move/from16 v36, v10

    goto :goto_a

    :cond_f
    const/16 v36, 0x0

    .line 1341
    :goto_a
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v10

    move-object/from16 v11, v19

    invoke-virtual {v10, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v10

    if-eqz v10, :cond_11

    .line 1343
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v10

    .line 1344
    invoke-virtual {v10, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v10

    .line 1345
    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v10

    if-nez v10, :cond_11

    .line 1346
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v10

    .line 1347
    invoke-virtual {v10, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v10

    .line 1348
    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v10

    if-nez v10, :cond_10

    .line 1350
    sget-object v18, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->Trash:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    goto :goto_b

    :cond_10
    const/4 v14, 0x1

    if-ne v10, v14, :cond_11

    .line 1352
    sget-object v18, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->Restore:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    :cond_11
    :goto_b
    move-object/from16 v10, v18

    .line 1356
    invoke-direct {v1, v13, v10}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->getTableIndex(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;)I

    move-result v14

    move-object/from16 v18, v0

    const/4 v0, -0x1

    if-ne v14, v0, :cond_12

    .line 1358
    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    const-string v2, "decodeJson: Invalid tableindex"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v16

    .line 1361
    :cond_12
    invoke-direct {v1, v3, v13, v10, v14}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->getVvmParam(Lcom/google/gson/JsonElement;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;I)Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;

    move-result-object v33

    move-object/from16 v0, v17

    .line 1362
    iget-object v3, v0, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;->mOperationList:Ljava/util/ArrayList;

    move-object/from16 v17, v2

    new-instance v2, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;

    move-object/from16 v19, v4

    iget-object v4, v1, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object/from16 v23, v2

    move-object/from16 v24, p1

    move-object/from16 v25, v13

    move/from16 v26, v14

    move-object/from16 v31, v10

    move-object/from16 v34, v4

    invoke-direct/range {v23 .. v39}, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;Lcom/sec/internal/ims/cmstore/MessageStoreClient;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_c
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, v17

    move-object/from16 v4, v19

    move-object/from16 v14, v21

    move-object/from16 v13, v22

    move-object/from16 v17, v0

    move-object/from16 v19, v11

    move-object/from16 v0, v18

    move-object/from16 v11, v40

    move-object/from16 v18, v10

    move-object/from16 v10, v20

    goto/16 :goto_0

    :cond_13
    move-object/from16 v0, v17

    return-object v0

    :catch_0
    move-exception v0

    .line 1369
    iget-object v1, v1, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JsonSyntaxException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v16
.end method

.method protected fetchingPendingMsg()V
    .locals 5

    .line 1603
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 1605
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->querySMSMessagesBySycnDirection(ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const-string v2, "MessageApp"

    if-eqz v1, :cond_0

    .line 1607
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1608
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    const-string v4, "SMS"

    invoke-virtual {v3, v1, v2, v4}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->msgAppFetchBuffer(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 1605
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0

    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    .line 1611
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1612
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    const/4 v3, 0x4

    invoke-virtual {v1, v3, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->queryMMSMessagesBySycnDirection(ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1614
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1615
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    const-string v4, "MMS"

    invoke-virtual {v3, v1, v2, v4}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->msgAppFetchBuffer(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p0

    .line 1612
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0

    :cond_2
    :goto_3
    if-eqz v1, :cond_3

    .line 1618
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1619
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->queryRCSMessagesBySycnDirection(ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1621
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1622
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    const-string v1, "CHAT"

    invoke-virtual {p0, v0, v2, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->msgAppFetchBuffer(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_5

    :catchall_4
    move-exception p0

    .line 1619
    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0

    :cond_4
    :goto_5
    if-eqz v0, :cond_5

    .line 1625
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    return-void
.end method

.method public getMulitLineStatusTable()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1629
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMultiLnScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;->getMulitLineStatusTable()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected handleAcceptSessionJson(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 1439
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->AcceptChat:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->decodeJson(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;)Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;

    move-result-object p1

    .line 1440
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->processParamAppJsonList(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;)V

    return-void
.end method

.method protected handleBufferDbReadMessageJson(Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method protected handleBulkOpSingleUrlSuccess(Ljava/lang/String;)V
    .locals 3

    .line 505
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleBulkDeleteSingleUrlSuccess: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    .line 509
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSummaryQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->querySummaryDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 510
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 511
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->onUpdateBufferDBBulkUpdateSuccess(Landroid/database/Cursor;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 509
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

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 513
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void
.end method

.method protected handleCancelMessageJson(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 1424
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->Cancel:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->decodeJson(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;)Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;

    move-result-object p1

    .line 1425
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->processParamAppJsonList(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;)V

    return-void
.end method

.method protected handleCloudNotifyChangedObj(Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Z)V
    .locals 9

    .line 683
    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/Util;->getLineTelUriFromObjUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 685
    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->protocol:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string/jumbo v1, "standard"

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->protocol:Ljava/lang/String;

    .line 686
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSummaryQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->querySummaryDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 687
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo p2, "syncaction"

    .line 689
    invoke-interface {v8, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    .line 688
    invoke-interface {v8, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    .line 690
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleCloudNotifyChangedObj, Status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Deleted:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    if-ne p2, v0, :cond_1

    .line 759
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    return-void

    .line 694
    :cond_1
    :try_start_1
    invoke-direct {p0, v8, p1, p3}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->onNmsEventChangedObjSummaryDbAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Z)V

    goto/16 :goto_9

    .line 696
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSummaryQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->insertNmsEventChangedObjToSummaryDB(Lcom/sec/internal/omanetapi/nms/data/ChangedObject;I)J

    move-result-wide v4

    .line 698
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMultiLnScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;

    sget-object v7, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v2, v6, v7}, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;->getLineInitSyncStatus(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)I

    move-result v2

    .line 700
    sget-object v7, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->INITIAL_SYNC_COMPLETE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v7}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v7

    if-eq v2, v7, :cond_4

    .line 701
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    const-string p1, "initial sync not complete yet, buffer the NMS events until initial sync is finished"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    if-eqz v8, :cond_3

    .line 759
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    return-void

    .line 707
    :cond_4
    :try_start_2
    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mIsCmsEnabled:Z

    if-eqz v2, :cond_6

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    .line 750
    :cond_5
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    const-string v0, "SD outgoing message - needs to be inserted"

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 708
    :cond_6
    :goto_1
    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->correlationId:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 709
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleCloudNotifyChangedObj RCS CloudUpdate: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->correlationId:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    iget-object v2, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->correlationId:Ljava/lang/String;

    invoke-virtual {v0, v2, v6}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->searchIMFTBufferUsingImdn(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    if-eqz v0, :cond_7

    .line 712
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 713
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSummaryQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    invoke-virtual {v2, v4, v5, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->updateSummaryDbUsingMessageType(JI)J

    .line 715
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {v2, v0, p1, p3}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->onNmsEventChangedObjRcsBufferDbAvailableUsingImdnId(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v3, v1

    goto :goto_3

    :catchall_0
    move-exception p0

    .line 711
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    :try_start_5
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0

    :cond_7
    :goto_3
    if-eqz v0, :cond_8

    .line 719
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_8
    if-nez v3, :cond_a

    .line 721
    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->correlationId:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 722
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleCloudNotifyChangedObj MMS CloudUpdate: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->correlationId:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    iget-object v2, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->correlationId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->searchMMsPduBufferUsingCorrelationId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    if-eqz v0, :cond_9

    .line 726
    :try_start_6
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 727
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSummaryQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    const/4 v3, 0x4

    invoke-virtual {v2, v4, v5, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->updateSummaryDbUsingMessageType(JI)J

    .line 729
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v2, v0, p1, p3}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->onNmsEventChangedObjMmsBufferDbAvailableUsingCorrId(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move v3, v1

    goto :goto_5

    :catchall_2
    move-exception p0

    .line 724
    :try_start_7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception p1

    :try_start_8
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0

    :cond_9
    :goto_5
    if-eqz v0, :cond_a

    .line 733
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_a
    if-nez v3, :cond_c

    .line 736
    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->correlationTag:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 737
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleCloudNotifyChangedObj: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->correlationTag:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    iget-object v2, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->correlationTag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->searchUnSyncedSMSBufferUsingCorrelationTag(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    if-eqz v0, :cond_b

    .line 740
    :try_start_9
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 741
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSummaryQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    const/4 v3, 0x3

    invoke-virtual {v2, v4, v5, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->updateSummaryDbUsingMessageType(JI)J

    .line 743
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {v2, v0, p1, p3}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->onNmsEventChangedObjSmsBufferDbAvailableUsingCorrTag(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Z)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    move v3, v1

    goto :goto_7

    :catchall_4
    move-exception p0

    .line 738
    :try_start_a
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_6

    :catchall_5
    move-exception p1

    :try_start_b
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw p0

    :cond_b
    :goto_7
    if-eqz v0, :cond_c

    .line 747
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_c
    :goto_8
    if-nez p3, :cond_d

    if-nez v3, :cond_d

    .line 754
    iget-object p1, p2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    new-instance p2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    const/4 v2, 0x7

    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v1, p2

    move-wide v3, v4

    move v5, p3

    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    :cond_d
    :goto_9
    if-eqz v8, :cond_e

    .line 759
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_e
    return-void

    :catchall_6
    move-exception p0

    if-eqz v8, :cond_f

    .line 686
    :try_start_c
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    goto :goto_a

    :catchall_7
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_f
    :goto_a
    throw p0
.end method

.method protected handleCloudNotifyDeletedObj(Lcom/sec/internal/omanetapi/nms/data/DeletedObject;Z)V
    .locals 10

    .line 847
    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/Util;->getLineTelUriFromObjUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 849
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSummaryQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    iget-object v2, p1, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->querySummaryDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 850
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v0, "syncaction"

    .line 852
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 851
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 853
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleCloudNotifyDeletedObj, Status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Deleted:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    if-ne v0, v2, :cond_0

    .line 918
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-void

    .line 857
    :cond_0
    :try_start_1
    invoke-direct {p0, v1, p1, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->onNmsEventDeletedObjSummaryDbAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;Z)V

    goto/16 :goto_8

    .line 859
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSummaryQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->insertNmsEventDeletedObjToSummaryDB(Lcom/sec/internal/omanetapi/nms/data/DeletedObject;I)J

    .line 861
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMultiLnScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v2, v0, v4}, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;->getLineInitSyncStatus(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)I

    move-result v2

    .line 863
    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->INITIAL_SYNC_COMPLETE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v4

    if-eq v2, v4, :cond_3

    .line 864
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    const-string p1, "initial sync not complete yet, buffer the NMS events until initial sync is finished"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    if-eqz v1, :cond_2

    .line 918
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void

    .line 869
    :cond_3
    :try_start_2
    iget-object v2, p1, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->correlationId:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    const/4 v4, 0x1

    const-string v5, "did not find buffer item to delete"

    const-wide/16 v6, -0x1

    if-eqz v2, :cond_6

    .line 870
    :try_start_3
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleCloudNotifyDeletedObj RCS CloudUpdate: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p1, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->correlationId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    iget-object v8, p1, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->correlationId:Ljava/lang/String;

    invoke-virtual {v2, v8, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->searchIMFTBufferUsingImdn(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    if-eqz v0, :cond_4

    .line 874
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 875
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSummaryQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    invoke-virtual {v2, v6, v7, v4}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->updateSummaryDbUsingMessageType(JI)J

    .line 877
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {v2, v0, p1, p2}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->onNmsEventDeletedObjBufferDbRcsAvailableUsingImdnId(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;Z)V

    move v3, v4

    goto :goto_0

    .line 881
    :cond_4
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    if-eqz v0, :cond_6

    .line 883
    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    goto :goto_2

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_5

    .line 873
    :try_start_6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_7
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw p0

    :cond_6
    :goto_2
    if-nez v3, :cond_a

    .line 885
    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->correlationId:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 886
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleCloudNotifyDeletedObj MMS CloudUpdate: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p1, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->correlationId:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    iget-object v2, p1, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->correlationId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->searchMMsPduBufferUsingCorrelationId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    if-eqz v0, :cond_7

    .line 891
    :try_start_8
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 892
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSummaryQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    const/4 v3, 0x4

    invoke-virtual {v2, v6, v7, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->updateSummaryDbUsingMessageType(JI)J

    .line 894
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v2, v0, p1, p2}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->onNmsEventDeletedObjMmsBufferDbAvailableUsingCorrId(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;Z)V

    goto :goto_3

    .line 898
    :cond_7
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move v4, v3

    :goto_3
    if-eqz v0, :cond_8

    .line 900
    :try_start_9
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    :cond_8
    move v3, v4

    goto :goto_5

    :catchall_2
    move-exception p0

    if-eqz v0, :cond_9

    .line 889
    :try_start_a
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception p1

    :try_start_b
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9
    :goto_4
    throw p0

    :cond_a
    :goto_5
    if-nez v3, :cond_d

    .line 902
    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->correlationTag:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 903
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleCloudNotifyChangedObj: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->correlationTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    iget-object v2, p1, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->correlationTag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->searchUnSyncedSMSBufferUsingCorrelationTag(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    if-eqz v0, :cond_b

    .line 907
    :try_start_c
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 908
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSummaryQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    const/4 v3, 0x3

    invoke-virtual {v2, v6, v7, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->updateSummaryDbUsingMessageType(JI)J

    .line 910
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->onNmsEventDeletedObjSmsBufferDbAvailableUsingCorrTag(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;Z)V

    goto :goto_6

    .line 913
    :cond_b
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    invoke-static {p0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :goto_6
    if-eqz v0, :cond_d

    .line 915
    :try_start_d
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    goto :goto_8

    :catchall_4
    move-exception p0

    if-eqz v0, :cond_c

    .line 905
    :try_start_e
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    goto :goto_7

    :catchall_5
    move-exception p1

    :try_start_f
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_c
    :goto_7
    throw p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    :cond_d
    :goto_8
    if-eqz v1, :cond_e

    .line 918
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_e
    return-void

    :catchall_6
    move-exception p0

    if-eqz v1, :cond_f

    .line 849
    :try_start_10
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    goto :goto_9

    :catchall_7
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_f
    :goto_9
    throw p0
.end method

.method protected handleDeleteMessageJson(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 1454
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->Delete:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->decodeJson(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;)Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;

    move-result-object p1

    .line 1455
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->processParamAppJsonList(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;)V

    return-void
.end method

.method protected handleDownloadMessageJson(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 1464
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->Download:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->decodeJson(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;)Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;

    move-result-object p1

    .line 1465
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->processParamAppJsonList(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;)V

    return-void
.end method

.method protected handleExpiredObject(Lcom/sec/internal/omanetapi/nms/data/DeletedObject;)V
    .locals 5

    .line 806
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSummaryQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    iget-object v1, p1, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->querySummaryDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 807
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "syncaction"

    .line 809
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 808
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 810
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleExpiredObject, Status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Deleted:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v2, :cond_0

    .line 817
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void

    .line 814
    :cond_0
    :try_start_1
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->onNmsEventExpiredObjSummaryDbAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;)V

    .line 815
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSummaryQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    iget-object p1, p1, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->deleteSummaryDBwithResUrl(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 806
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 817
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void
.end method

.method protected handleReadMessageJson(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 1419
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->Read:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->decodeJson(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;)Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;

    move-result-object p1

    .line 1420
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->processParamAppJsonList(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;)V

    return-void
.end method

.method protected handleReceivedMessageJson(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 1406
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->Received:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->decodeJson(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;)Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;

    move-result-object v0

    .line 1407
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->processParamAppJsonList(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;)V

    .line 1408
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->isSpam(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1409
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->handleSpamMessageJson(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected handleSentMessageJson(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 1414
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->Sent:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->decodeJson(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;)Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;

    move-result-object p1

    .line 1415
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->processParamAppJsonList(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;)V

    return-void
.end method

.method protected handleSpamMessageJson(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 1444
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->Spam:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->decodeJson(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;)Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;

    move-result-object p1

    .line 1445
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->processParamAppJsonList(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;)V

    return-void
.end method

.method protected handleStarredMessageJson(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 1429
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->Starred:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->decodeJson(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;)Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;

    move-result-object p1

    .line 1430
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->processParamAppJsonList(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;)V

    return-void
.end method

.method protected handleUnReadMessageJson(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 1449
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->UnRead:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->decodeJson(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;)Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;

    move-result-object p1

    .line 1450
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->processParamAppJsonList(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;)V

    return-void
.end method

.method protected handleUnStarredMessageJson(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 1434
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->UnStarred:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->decodeJson(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;)Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;

    move-result-object p1

    .line 1435
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->processParamAppJsonList(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;)V

    return-void
.end method

.method protected handleUploadMessageJson(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 1459
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->Upload:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->decodeJson(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;)Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;

    move-result-object p1

    .line 1460
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->processParamAppJsonList(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;)V

    return-void
.end method

.method protected handleWipeOutMessageJson(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 1472
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->WipeOut:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->decodeJson(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;)Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;

    move-result-object p1

    .line 1473
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->processWipeOutList(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;)V

    return-void
.end method

.method protected notifyNetAPIUploadMessages(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Z)V
    .locals 9

    .line 441
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    const-string v1, "notifyNetAPIUploadMessages Message upload started"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    .line 443
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->requiresMsgUploadInInitSync()Z

    move-result v1

    if-nez v1, :cond_1

    .line 444
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->getMessageType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)I

    move-result v3

    if-ltz v3, :cond_0

    .line 447
    iget-object p2, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    new-instance p3, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    iget-object v8, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v2, p3

    move-object v7, p1

    invoke-direct/range {v2 .. v8}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->sendDeviceUpload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    return-void

    .line 454
    :cond_1
    iget-boolean p2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mIsCmsEnabled:Z

    if-eqz p2, :cond_6

    .line 455
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {p2}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->queryGroupSession()Landroid/database/Cursor;

    move-result-object p2

    if-nez p3, :cond_2

    const/16 v5, 0xa

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, v0

    move-object v4, p2

    .line 457
    :try_start_0
    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->buildBufferList(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Landroid/database/Cursor;IZZ)V

    :cond_2
    const/4 p3, 0x0

    .line 459
    invoke-direct {p0, p2, v0, p3}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->addSessionMessagesToList(Landroid/database/Cursor;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz p2, :cond_3

    .line 460
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 461
    :cond_3
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {p2}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->queryOneToOneSession()Landroid/database/Cursor;

    move-result-object p2

    .line 462
    :try_start_1
    invoke-direct {p0, p2, v0, p3}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->addSessionMessagesToList(Landroid/database/Cursor;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_6

    .line 463
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception p0

    if-eqz p2, :cond_4

    .line 461
    :try_start_2
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    throw p0

    :catchall_2
    move-exception p0

    if-eqz p2, :cond_5

    .line 455
    :try_start_3
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw p0

    .line 465
    :cond_6
    :goto_2
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {p2}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->querySMSMessagesToUpload()Landroid/database/Cursor;

    move-result-object p2

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, v0

    move-object v4, p2

    .line 466
    :try_start_4
    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->buildBufferList(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Landroid/database/Cursor;IZZ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_a

    if-eqz p2, :cond_7

    .line 467
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 468
    :cond_7
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {p2}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->queryMMSMessagesToUpload()Landroid/database/Cursor;

    move-result-object p2

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, v0

    move-object v4, p2

    .line 469
    :try_start_5
    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->buildBufferList(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Landroid/database/Cursor;IZZ)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    if-eqz p2, :cond_8

    .line 470
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 471
    :cond_8
    iget-boolean p2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mIsCmsEnabled:Z

    if-nez p2, :cond_c

    .line 472
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {p2}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->queryRCSMessagesToUpload()Landroid/database/Cursor;

    move-result-object p2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, v0

    move-object v4, p2

    .line 473
    :try_start_6
    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->buildBufferList(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Landroid/database/Cursor;IZZ)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    if-eqz p2, :cond_9

    .line 474
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 476
    :cond_9
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {p2}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->queryImdnMessagesToUpload()Landroid/database/Cursor;

    move-result-object p2

    const/16 v5, 0xd

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, v0

    move-object v4, p2

    .line 477
    :try_start_7
    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->buildBufferList(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Landroid/database/Cursor;IZZ)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-eqz p2, :cond_c

    .line 478
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :catchall_4
    move-exception p0

    if-eqz p2, :cond_a

    .line 476
    :try_start_8
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a
    :goto_3
    throw p0

    :catchall_6
    move-exception p0

    if-eqz p2, :cond_b

    .line 472
    :try_start_9
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    goto :goto_4

    :catchall_7
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_b
    :goto_4
    throw p0

    .line 480
    :cond_c
    :goto_5
    iget-object p2, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_d

    .line 481
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->sendDeviceUpload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto :goto_6

    .line 483
    :cond_d
    iget-object p2, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    new-instance p3, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v1, p3

    move-object v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->sendDeviceUpload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    :goto_6
    return-void

    :catchall_8
    move-exception p0

    if-eqz p2, :cond_e

    .line 468
    :try_start_a
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    goto :goto_7

    :catchall_9
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_e
    :goto_7
    throw p0

    :catchall_a
    move-exception p0

    if-eqz p2, :cond_f

    .line 465
    :try_start_b
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    goto :goto_8

    :catchall_b
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_f
    :goto_8
    throw p0
.end method

.method protected notifyUriRequesttoApp(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 11

    .line 311
    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    .line 312
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyUriRequesttoApp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    .line 317
    new-instance v3, Lcom/google/gson/JsonArray;

    invoke-direct {v3}, Lcom/google/gson/JsonArray;-><init>()V

    .line 318
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 321
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ge v2, v4, :cond_4

    .line 322
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 323
    new-instance v8, Lcom/google/gson/JsonObject;

    invoke-direct {v8}, Lcom/google/gson/JsonObject;-><init>()V

    .line 324
    iget-wide v9, v4, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    const-string v10, "id"

    invoke-virtual {v8, v10, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget v4, v4, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    if-ne v4, v3, :cond_1

    .line 327
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gson/JsonArray;

    invoke-virtual {v4, v8}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto :goto_2

    :cond_1
    const/16 v9, 0x11

    if-ne v4, v9, :cond_2

    .line 329
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gson/JsonArray;

    invoke-virtual {v4, v8}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto :goto_2

    :cond_2
    const/16 v6, 0x12

    if-ne v4, v6, :cond_3

    .line 331
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gson/JsonArray;

    invoke-virtual {v4, v8}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto :goto_2

    .line 333
    :cond_3
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gson/JsonArray;

    invoke-virtual {v4, v8}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 337
    :cond_4
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyAppForFtUri notifyMMS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gson/JsonArray;

    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " notifyRCS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gson/JsonArray;

    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " notifyVVM count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gson/JsonArray;

    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " notifyGreeting count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gson/JsonArray;

    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 337
    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v1

    .line 342
    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_a

    .line 343
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/JsonArray;

    invoke-virtual {v2}, Lcom/google/gson/JsonArray;->size()I

    move-result v2

    if-lez v2, :cond_9

    const-string v2, "MessageApp"

    if-eqz p1, :cond_8

    if-eq p1, v7, :cond_7

    const-string v2, "VVMDATA"

    if-eq p1, v6, :cond_6

    if-eq p1, v5, :cond_5

    .line 364
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "default apptype:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " datatype:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v4

    goto :goto_4

    :cond_5
    const-string v3, "GREETING"

    goto :goto_5

    :cond_6
    :goto_4
    move-object v3, v2

    goto :goto_5

    :cond_7
    const-string v3, "FT"

    goto :goto_5

    :cond_8
    const-string v3, "MMS"

    .line 367
    :goto_5
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mCallbackMsgApp:Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/gson/JsonArray;

    invoke-virtual {v8}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v2, v3, v8, v1}, Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;->notifyCloudMessageUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_9
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_a
    return-void
.end method

.method protected onHandlePendingNmsEvent()V
    .locals 12

    .line 922
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    .line 923
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSummaryQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->queryAllPendingNmsEventInSummaryDB()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 924
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 925
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    const-string v3, "NmsEvent sync"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v2, "_bufferdbid"

    .line 928
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 927
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 929
    iget-object v3, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    new-instance v11, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    const/4 v5, 0x7

    int-to-long v6, v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 932
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 923
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 934
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 935
    :cond_2
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 936
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->sendDeviceNormalSyncDownload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    :cond_3
    return-void
.end method

.method protected onSendCloudUnSyncedUpdate()V
    .locals 8

    .line 373
    new-instance v6, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v6}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    .line 374
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->queryToCloudUnsyncedSms()Landroid/database/Cursor;

    move-result-object v7

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v6

    move-object v2, v7

    .line 375
    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->buildBufferList(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Landroid/database/Cursor;IZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v7, :cond_0

    .line 376
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->queryToCloudUnsyncedMms()Landroid/database/Cursor;

    move-result-object v7

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v6

    move-object v2, v7

    .line 378
    :try_start_1
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->buildBufferList(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Landroid/database/Cursor;IZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v7, :cond_1

    .line 379
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 380
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->queryToCloudUnsyncedRcs()Landroid/database/Cursor;

    move-result-object v7

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v6

    move-object v2, v7

    .line 381
    :try_start_2
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->buildBufferList(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Landroid/database/Cursor;IZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_2

    .line 382
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 383
    :cond_2
    iget-object v0, v6, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 384
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {p0, v6}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->sendDeviceUpdate(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    if-eqz v7, :cond_4

    .line 380
    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    throw p0

    :catchall_2
    move-exception p0

    if-eqz v7, :cond_5

    .line 377
    :try_start_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw p0

    :catchall_4
    move-exception p0

    if-eqz v7, :cond_6

    .line 374
    :try_start_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_2
    throw p0
.end method

.method protected onSendDeviceUnSyncedUpdate()V
    .locals 12

    .line 389
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->queryToDeviceUnsyncedSms()Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "_bufferdbid"

    if-eqz v0, :cond_1

    .line 390
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 393
    :cond_0
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 392
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 394
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    const-string v5, "MessageApp"

    const/4 v6, 0x3

    .line 396
    invoke-virtual {v4, v6, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->getMessageTypeString(IZ)Ljava/lang/String;

    move-result-object v6

    int-to-long v7, v3

    const/4 v9, 0x0

    .line 394
    invoke-virtual/range {v4 .. v9}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->notifyMsgAppCldNotification(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 398
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 389
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 400
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 401
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->queryToDeviceUnsyncedMms()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 402
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 405
    :cond_3
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 404
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 406
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    const-string v5, "MessageApp"

    const/4 v6, 0x4

    .line 408
    invoke-virtual {v4, v6, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->getMessageTypeString(IZ)Ljava/lang/String;

    move-result-object v6

    int-to-long v7, v3

    const/4 v9, 0x0

    .line 406
    invoke-virtual/range {v4 .. v9}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->notifyMsgAppCldNotification(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 410
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez v3, :cond_3

    goto :goto_3

    :catchall_2
    move-exception p0

    .line 401
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0

    :cond_4
    :goto_3
    if-eqz v0, :cond_5

    .line 412
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 413
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->queryToDeviceUnsyncedRcs()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 414
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 417
    :cond_6
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 416
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string v4, "is_filetransfer"

    .line 418
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_7

    move v4, v5

    goto :goto_4

    :cond_7
    move v4, v1

    .line 419
    :goto_4
    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    const-string v7, "MessageApp"

    .line 421
    invoke-virtual {v6, v5, v4}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->getMessageTypeString(IZ)Ljava/lang/String;

    move-result-object v8

    int-to-long v9, v3

    const/4 v11, 0x0

    .line 419
    invoke-virtual/range {v6 .. v11}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->notifyMsgAppCldNotification(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 423
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-nez v3, :cond_6

    goto :goto_6

    :catchall_4
    move-exception p0

    .line 413
    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw p0

    :cond_8
    :goto_6
    if-eqz v0, :cond_9

    .line 425
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_9
    return-void
.end method

.method protected onSendMCSUnDownloadedMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Z)V
    .locals 13

    move-object v0, p0

    move-object v7, p1

    move-object v1, p2

    .line 187
    new-instance v8, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v8}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    .line 188
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->getMessageType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)I

    move-result v9

    .line 189
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->queryPendingFetchForce()I

    move-result v2

    if-lez v2, :cond_0

    .line 192
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->MESSAGE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {p0, p1, v1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->onUnDownloadedMmsMessageForMcs(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    return-void

    .line 196
    :cond_0
    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->MESSAGE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v2, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v2, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 197
    :cond_1
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    sget-object v10, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->DownLoad:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v10}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->queryToDeviceUnDownloadedMms(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v11

    const/4 v4, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v8

    move-object v3, v11

    move/from16 v5, p3

    .line 198
    :try_start_0
    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->buildBufferList(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Landroid/database/Cursor;IZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v11, :cond_2

    .line 199
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 200
    :cond_2
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {v10}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->queryToDeviceUnDownloadedRcs(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v10

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v8

    move-object v3, v10

    move/from16 v5, p3

    .line 201
    :try_start_1
    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->buildBufferList(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Landroid/database/Cursor;IZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v10, :cond_3

    .line 202
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 205
    :cond_3
    iget-object v1, v8, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 206
    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {v0, v8}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->sendDeviceInitialSyncDownload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto :goto_0

    :cond_4
    if-ltz v9, :cond_5

    .line 208
    iget-object v10, v8, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    new-instance v11, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    const-wide/16 v3, 0x0

    iget-object v12, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v1, v11

    move v2, v9

    move/from16 v5, p3

    move-object v6, p1

    move-object v7, v12

    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {v0, v8}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->sendDeviceInitialSyncDownload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    :cond_5
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    if-eqz v10, :cond_6

    .line 200
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_1
    throw v1

    :catchall_2
    move-exception v0

    move-object v1, v0

    if-eqz v11, :cond_7

    .line 197
    :try_start_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_2
    throw v1
.end method

.method protected onSendPayloadObject(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V
    .locals 8

    .line 147
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    const-string v1, "onSendPayloadObject"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    .line 149
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->MESSAGE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v1, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v1, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 150
    :cond_0
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->FetchUri:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v2

    invoke-virtual {p2, p1, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->queryToDeviceUnDownloadedMms(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object p2

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v0

    move-object v4, p2

    .line 151
    :try_start_0
    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->buildBufferList(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Landroid/database/Cursor;IZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz p2, :cond_1

    .line 152
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 153
    :cond_1
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->FetchForce:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v2

    invoke-virtual {p2, p1, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->queryToDeviceUnDownloadedMms(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object p2

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v0

    move-object v4, p2

    .line 154
    :try_start_1
    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->buildBufferList(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Landroid/database/Cursor;IZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz p2, :cond_2

    .line 155
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 156
    :cond_2
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v1

    invoke-virtual {p2, p1, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->queryToDeviceUnDownloadedRcs(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object p1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v0

    move-object v4, p1

    .line 157
    :try_start_2
    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->buildBufferList(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Landroid/database/Cursor;IZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_3

    .line 158
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 161
    :cond_3
    iget-object p1, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 162
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->notifyUriRequesttoApp(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    :cond_4
    return-void

    :catchall_0
    move-exception p0

    if-eqz p1, :cond_5

    .line 156
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_0
    throw p0

    :catchall_2
    move-exception p0

    if-eqz p2, :cond_6

    .line 153
    :try_start_4
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_1
    throw p0

    :catchall_4
    move-exception p0

    if-eqz p2, :cond_7

    .line 150
    :try_start_5
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_2
    throw p0
.end method

.method protected onSendUnDownloadedMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;ZI)V
    .locals 14

    move-object v0, p0

    move-object v7, p1

    move-object/from16 v1, p2

    move/from16 v8, p4

    .line 215
    new-instance v9, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v9}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    .line 216
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->getMessageType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)I

    move-result v10

    .line 220
    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->MESSAGE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v2, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v11, 0x0

    if-nez v2, :cond_6

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v2, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    .line 243
    :cond_0
    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v2, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 244
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    invoke-virtual {v1, p1, v8}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->queryToDeviceUnDownloadedVvm(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v12

    const/16 v4, 0x11

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v9

    move-object v3, v12

    move/from16 v5, p3

    .line 245
    :try_start_0
    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->buildBufferList(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Landroid/database/Cursor;IZZ)V

    .line 246
    iget-object v1, v9, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 247
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {v1, v11}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->setVVMSyncState(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v12, :cond_5

    .line 249
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    if-eqz v12, :cond_2

    .line 244
    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v1

    .line 250
    :cond_3
    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM_GREETINGS:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v2, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 251
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    invoke-virtual {v1, p1, v8}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->queryToDeviceUnDownloadedGreeting(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v12

    const/16 v4, 0x12

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v9

    move-object v3, v12

    move/from16 v5, p3

    .line 252
    :try_start_2
    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->buildBufferList(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Landroid/database/Cursor;IZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v12, :cond_5

    .line 253
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v1, v0

    if-eqz v12, :cond_4

    .line 251
    :try_start_3
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw v1

    :cond_5
    :goto_2
    const/4 v1, -0x1

    goto/16 :goto_5

    .line 221
    :cond_6
    :goto_3
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->queryPendingUrlFetch()I

    move-result v1

    .line 222
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->queryPendingFetchForce()I

    move-result v12

    .line 223
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSendUnDownloadedMessage syncAction: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pendingRCSCount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pendingLegacyMMSCount"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v1, p1, v8}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->queryToDeviceUnDownloadedMms(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v13

    .line 226
    :try_start_4
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->FetchUri:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v1

    if-ne v8, v1, :cond_7

    const/4 v4, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v9

    move-object v3, v13

    move/from16 v5, p3

    .line 227
    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->buildBufferList(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Landroid/database/Cursor;IZZ)V

    goto :goto_4

    :cond_7
    if-eqz v13, :cond_9

    .line 229
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_8
    const-string v1, "_bufferdbid"

    .line 232
    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 231
    invoke-interface {v13, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const-string v2, "linenum"

    .line 234
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 233
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 235
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    int-to-long v3, v1

    move-object v1, v2

    move-object v2, v9

    move/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->addMmsPartDownloadList(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;JLjava/lang/String;Z)V

    .line 236
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    if-nez v1, :cond_8

    :cond_9
    :goto_4
    if-eqz v13, :cond_a

    .line 239
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 240
    :cond_a
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {v1, p1, v8}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->queryToDeviceUnDownloadedRcs(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v13

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v9

    move-object v3, v13

    move/from16 v5, p3

    .line 241
    :try_start_5
    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->buildBufferList(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Landroid/database/Cursor;IZZ)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz v13, :cond_b

    .line 242
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_b
    move v1, v12

    .line 256
    :goto_5
    iget-object v2, v9, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_10

    .line 257
    iget-boolean v2, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mIsCmsEnabled:Z

    if-eqz v2, :cond_e

    .line 258
    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->FetchUri:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v2

    if-ne v8, v2, :cond_c

    if-lez v1, :cond_c

    .line 259
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->MESSAGE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {p0, p1, v1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->onUnDownloadedMmsMessageForMcs(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    goto :goto_6

    .line 260
    :cond_c
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->DownLoad:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v1

    if-ne v8, v1, :cond_d

    .line 261
    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {v0, v9}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->sendDeviceInitialSyncDownload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto :goto_6

    .line 263
    :cond_d
    invoke-virtual {p0, v9}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->notifyUriRequesttoApp(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto :goto_6

    .line 266
    :cond_e
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->DownLoad:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v1

    if-ne v8, v1, :cond_f

    .line 267
    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {v0, v9}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->sendDeviceInitialSyncDownload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto :goto_6

    .line 269
    :cond_f
    invoke-virtual {p0, v9}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->notifyUriRequesttoApp(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto :goto_6

    :cond_10
    if-ltz v10, :cond_11

    .line 272
    iget-boolean v1, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mIsCmsEnabled:Z

    if-eqz v1, :cond_11

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->FetchUri:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v1

    if-ne v8, v1, :cond_11

    .line 274
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->MESSAGE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {p0, p1, v1, v11}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->onSendMCSUnDownloadedMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Z)V

    goto :goto_6

    :cond_11
    if-ltz v10, :cond_12

    .line 276
    iget-object v8, v9, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    new-instance v11, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    const-wide/16 v3, 0x0

    iget-object v12, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v1, v11

    move v2, v10

    move/from16 v5, p3

    move-object v6, p1

    move-object v7, v12

    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {v0, v9}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->sendDeviceInitialSyncDownload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    :cond_12
    :goto_6
    return-void

    :catchall_4
    move-exception v0

    move-object v1, v0

    if-eqz v13, :cond_13

    .line 240
    :try_start_6
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto :goto_7

    :catchall_5
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_13
    :goto_7
    throw v1

    :catchall_6
    move-exception v0

    move-object v1, v0

    if-eqz v13, :cond_14

    .line 225
    :try_start_7
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    goto :goto_8

    :catchall_7
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_14
    :goto_8
    throw v1
.end method

.method protected onUnDownloadedMmsMessageForMcs(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V
    .locals 10

    .line 167
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onUnDownloadedMmsMessageForMcs"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    .line 169
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->getMessageType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)I

    move-result v8

    .line 171
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->MESSAGE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v1, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v1, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 172
    :cond_0
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->FetchForce:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v1

    invoke-virtual {p2, p1, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->queryToDeviceUnDownloadedMms(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object p2

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v0

    move-object v4, p2

    .line 173
    :try_start_0
    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->buildBufferList(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Landroid/database/Cursor;IZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_1

    .line 174
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 177
    :cond_1
    iget-object p2, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_2

    .line 178
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->sendDeviceInitialSyncDownload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto :goto_0

    :cond_2
    if-ltz v8, :cond_3

    .line 180
    iget-object p2, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    new-instance v9, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v1, v9

    move v2, v8

    move-object v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    invoke-virtual {p2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->sendDeviceInitialSyncDownload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    :cond_3
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    if-eqz p2, :cond_4

    .line 172
    :try_start_1
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw p0
.end method

.method public resetImsi()V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->resetImsi()V

    .line 112
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMultiLnScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;->resetImsi()V

    .line 113
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSummaryQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->resetImsi()V

    .line 114
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->resetImsi()V

    return-void
.end method

.method protected setBufferDBLoaded(Z)V
    .locals 0

    .line 1524
    iput-boolean p1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mBufferDBloaded:Z

    .line 1525
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    iget-boolean p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mBufferDBloaded:Z

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveBufferDbLoaded(Z)V

    return-void
.end method

.method protected startForceInitDeltaMessageCopy()V
    .locals 7

    .line 944
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 945
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->None:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 946
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "syncdirection"

    .line 945
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 947
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->Done:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 948
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "syncaction"

    .line 947
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 950
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->queryForceInitDeltaSMSFromTP()Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 951
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 952
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    iget v4, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mPhoneId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startForceInitDeltaMessageCopy SMS count : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 953
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 952
    invoke-static {v3, v4, v5}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAddWoPhoneId(Ljava/lang/String;ILjava/lang/String;)V

    .line 954
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {v3, v1, v0, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->insertToSMSBufferDB(Landroid/database/Cursor;Landroid/content/ContentValues;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 950
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0

    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    .line 956
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 958
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->queryForceInitDeltaMMSFromTP()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 959
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 960
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    iget v4, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mPhoneId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startForceInitDeltaMessageCopy MMS count : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 961
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 960
    invoke-static {v3, v4, v5}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAddWoPhoneId(Ljava/lang/String;ILjava/lang/String;)V

    .line 962
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {p0, v1, v0, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->insertToMMSPDUBufferDB(Landroid/database/Cursor;Landroid/content/ContentValues;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p0

    .line 958
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0

    :cond_2
    :goto_3
    if-eqz v1, :cond_3

    .line 964
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-void
.end method

.method protected startGoForwardSyncDbCopyTask()V
    .locals 5

    .line 968
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 969
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->None:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 970
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "syncdirection"

    .line 969
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 971
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->Done:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 972
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "syncaction"

    .line 971
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 973
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->queryDeltaSMSfromTelephony()Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 974
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 975
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    const-string v4, "SMS DB loading"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {v3, v1, v0, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->insertToSMSBufferDB(Landroid/database/Cursor;Landroid/content/ContentValues;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 973
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0

    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    .line 979
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 980
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->queryDeltaMMSPduFromTelephonyDb()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 981
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 982
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    const-string v4, "MMS DB loading"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v3, v1, v0, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->insertToMMSPDUBufferDB(Landroid/database/Cursor;Landroid/content/ContentValues;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p0

    .line 980
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0

    :cond_2
    :goto_3
    if-eqz v1, :cond_3

    .line 985
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 986
    :cond_3
    iget-boolean v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mIsCmsEnabled:Z

    if-nez v1, :cond_7

    .line 987
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->queryDeltaSMSfromTelephonyWoImsi()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 988
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 989
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    const-string v4, "Null Imsi SMS DB loading"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {v3, v1, v0, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->insertToSMSBufferDB(Landroid/database/Cursor;Landroid/content/ContentValues;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_5

    :catchall_4
    move-exception p0

    .line 987
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0

    :cond_4
    :goto_5
    if-eqz v1, :cond_5

    .line 992
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 993
    :cond_5
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->queryDeltaMMSPduFromTelephonyDbWoImsi()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 994
    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 995
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    const-string v4, "Null Imsi MMS DB loading"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v3, v1, v0, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->insertToMMSPDUBufferDB(Landroid/database/Cursor;Landroid/content/ContentValues;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    goto :goto_7

    :catchall_6
    move-exception p0

    .line 993
    :try_start_7
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    goto :goto_6

    :catchall_7
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw p0

    :cond_6
    :goto_7
    if-eqz v1, :cond_7

    .line 998
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1000
    :cond_7
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->syncReadSmsFromTelephony()V

    .line 1001
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->syncReadMmsFromTelephony()V

    .line 1002
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->setBufferDBLoaded(Z)V

    return-void
.end method

.method protected startInitialSyncDBCopyTask()V
    .locals 5

    .line 1020
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->cleanAllBufferDB()V

    .line 1021
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1022
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTelCtn()Ljava/lang/String;

    move-result-object v1

    .line 1023
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMultiLnScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v2, v1, v3}, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;->insertNewLine(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    .line 1024
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Insert:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 1025
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "syncdirection"

    .line 1024
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1026
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendCloud:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 1027
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "syncaction"

    .line 1026
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1028
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCurrentIMSI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->querySMSfromTelephonyWithIMSI(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1029
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1030
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    const-string v4, "SMS DB loading"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {v3, v1, v0, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->insertToSMSBufferDB(Landroid/database/Cursor;Landroid/content/ContentValues;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 1028
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0

    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    .line 1034
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1036
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v3}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCurrentIMSI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->queryMMSPduFromTelephonyDbWithIMSI(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1037
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1038
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    const-string v4, "MMS DB loading"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v3, v1, v0, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->insertToMMSPDUBufferDB(Landroid/database/Cursor;Landroid/content/ContentValues;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p0

    .line 1036
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0

    :cond_2
    :goto_3
    if-eqz v1, :cond_3

    .line 1041
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1043
    :cond_3
    iget-boolean v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mIsCmsEnabled:Z

    if-nez v1, :cond_7

    .line 1045
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->querySMSfromTelephonyWoIMSI()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1046
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1047
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    const-string v4, "SMS Loading for IMSI null case"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {v3, v1, v0, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->insertToSMSBufferDB(Landroid/database/Cursor;Landroid/content/ContentValues;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_5

    :catchall_4
    move-exception p0

    .line 1045
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0

    :cond_4
    :goto_5
    if-eqz v1, :cond_5

    .line 1050
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1051
    :cond_5
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->queryMMSPduFromTelephonyDbWoIMSI()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 1052
    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1053
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    const-string v4, "MMS Loading for IMSI null case"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v3, v1, v0, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->insertToMMSPDUBufferDB(Landroid/database/Cursor;Landroid/content/ContentValues;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    goto :goto_7

    :catchall_6
    move-exception p0

    .line 1051
    :try_start_7
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    goto :goto_6

    :catchall_7
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw p0

    :cond_6
    :goto_7
    if-eqz v1, :cond_7

    .line 1056
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1059
    :cond_7
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCurrentIMSI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->queryAllSessionWithIMSI(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 1060
    :try_start_8
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1061
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    const-string v2, "RCS DB loading"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->insertAllSessionToRCSSessionBufferDB(Landroid/database/Cursor;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    goto :goto_9

    :catchall_8
    move-exception p0

    .line 1059
    :try_start_9
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    goto :goto_8

    :catchall_9
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_8
    throw p0

    :cond_8
    :goto_9
    if-eqz v0, :cond_9

    .line 1064
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1067
    :cond_9
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mPhoneId:I

    invoke-static {v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->isMcsSupported(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1068
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCurrentIMSI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->queryAllSessionsFromTelephony(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1069
    :try_start_a
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    const-string v2, "TP DB loading"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_a

    .line 1070
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1071
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->insertSessionFromTPDBToRCSSessionBufferDB(Landroid/database/Cursor;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    :cond_a
    if-eqz v0, :cond_c

    .line 1073
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_b

    :catchall_a
    move-exception p0

    if-eqz v0, :cond_b

    .line 1068
    :try_start_b
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    goto :goto_a

    :catchall_b
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_b
    :goto_a
    throw p0

    :cond_c
    :goto_b
    const/4 v0, 0x1

    .line 1076
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->setBufferDBLoaded(Z)V

    return-void
.end method
