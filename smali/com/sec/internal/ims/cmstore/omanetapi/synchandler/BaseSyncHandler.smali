.class public abstract Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;
.super Landroid/os/Handler;
.source "BaseSyncHandler.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;
.implements Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;
    }
.end annotation


# instance fields
.field private final NO_RETRY_AFTER_VALUE:I

.field private TAG:Ljava/lang/String;

.field private final TAG_CN:Ljava/lang/String;

.field protected isCmsEnabled:Z

.field protected final mBufferDBTranslation:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

.field protected mBulkCreation:Lcom/sec/internal/ims/cmstore/params/ParamBulkCreation;

.field protected final mBulkUploadQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;",
            ">;"
        }
    .end annotation
.end field

.field protected mEventType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

.field mFileHandler:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;

.field protected mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

.field protected final mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

.field protected mIsFTThumbnailDownload:Z

.field protected mIsFullSync:Z

.field protected mIsHandlerRunning:Z

.field protected mIsSearchFinished:Z

.field protected final mLine:Ljava/lang/String;

.field private mOnApiSucceedOnceListener:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;

.field protected mSearchCursor:Ljava/lang/String;

.field protected mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

.field protected final mSyncMsgType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

.field protected final mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

.field protected final mWorkingDownloadQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;",
            ">;"
        }
    .end annotation
.end field

.field protected final mWorkingDownloadSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final mWorkingUploadQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/os/Looper;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;Z)V
    .locals 2

    .line 106
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 62
    const-class v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    .line 63
    const-class v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG_CN:Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingDownloadQueue:Ljava/util/Queue;

    .line 67
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingUploadQueue:Ljava/util/Queue;

    .line 70
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mBulkUploadQueue:Ljava/util/Queue;

    .line 72
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingDownloadSet:Ljava/util/HashSet;

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mBulkCreation:Lcom/sec/internal/ims/cmstore/params/ParamBulkCreation;

    const/4 v1, 0x0

    .line 82
    iput-boolean v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsHandlerRunning:Z

    .line 83
    iput-boolean v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsSearchFinished:Z

    .line 86
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mOnApiSucceedOnceListener:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;

    const/4 v0, -0x1

    .line 87
    iput v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->NO_RETRY_AFTER_VALUE:I

    .line 88
    iput-boolean v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsFTThumbnailDownload:Z

    .line 89
    iput-boolean v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsFullSync:Z

    .line 92
    iput-boolean v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->isCmsEnabled:Z

    .line 107
    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    .line 109
    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    .line 110
    iget-object p3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p3}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getContext()Landroid/content/Context;

    move-result-object p3

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v0

    invoke-static {p3, v0}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->isMcsSupported(Landroid/content/Context;I)Z

    move-result p3

    iput-boolean p3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->isCmsEnabled:Z

    if-eqz p3, :cond_0

    .line 112
    new-instance p3, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-direct {p3, v0, p7}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mBufferDBTranslation:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    .line 113
    new-instance v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Landroid/os/Looper;Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mFileHandler:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;

    goto :goto_0

    .line 115
    :cond_0
    new-instance p1, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-direct {p1, p2, p7}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mBufferDBTranslation:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    .line 118
    :goto_0
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    .line 119
    iput-object p7, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 120
    iput-object p5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mLine:Ljava/lang/String;

    .line 121
    iput-boolean p8, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsFullSync:Z

    .line 122
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isEnableFolderIdInSearch()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 123
    iput-object p6, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSyncMsgType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    goto :goto_1

    .line 125
    :cond_1
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSyncMsgType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    .line 127
    :goto_1
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mBufferDBTranslation:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSyncMsgType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {p1, p5, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->getSearchCursorByLine(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSearchCursor:Ljava/lang/String;

    .line 128
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mBufferDBTranslation:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSyncMsgType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    const-string p3, "initsync_status"

    invoke-virtual {p1, p5, p2, p3}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->getInitialSyncStatusByLine(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Ljava/lang/String;)Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mEventType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 129
    sget-object p2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->INITIAL_SYNC_COMPLETE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p2, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->INITIAL_SYNC_SUMMARY_COMPLETE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mEventType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 130
    invoke-virtual {p1, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 p1, 0x1

    .line 131
    iput-boolean p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsSearchFinished:Z

    :cond_3
    return-void
.end method

.method private checkIndividualResponseCodeUpload(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 5

    .line 1076
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    const-string v1, "checkIndividualResponseCodeUpload: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_4

    .line 1077
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParamList()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1078
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParamList()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 1083
    :goto_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBulkResponseList()Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;->response:[Lcom/sec/internal/omanetapi/nms/data/Response;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 1084
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBulkResponseList()Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;->response:[Lcom/sec/internal/omanetapi/nms/data/Response;

    aget-object v2, v2, v0

    .line 1085
    iget-short v3, v2, Lcom/sec/internal/omanetapi/nms/data/Response;->code:S

    const/16 v4, 0x193

    if-eq v3, v4, :cond_1

    const/16 v4, 0x1f7

    if-ne v3, v4, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 1087
    invoke-interface {v3}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v3

    iget-short v2, v2, Lcom/sec/internal/omanetapi/nms/data/Response;->code:S

    .line 1088
    invoke-interface {v3, v2}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->bulkOpTreatSuccessIndividualResponse(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1090
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParamList()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    sget-object v3, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->UPLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-virtual {p0, v2, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->setWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    add-int/lit8 v1, v1, 0x1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    if-lez v1, :cond_4

    .line 1097
    sget-object p1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->UPLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->checkNextMsgFromUploadWorkingQueue(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private fallbackOneMessageUplaod(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1066
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParamList()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1067
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParamList()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1071
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParamList()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    move-result-object p1

    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->UPLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->setWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    return-void

    .line 1068
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    const-string p1, "DBchange list is empty: do nothting "

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getSyncRequestParam(Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;)Lcom/sec/internal/omanetapi/common/data/SyncMessageStatus;
    .locals 4

    .line 932
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSyncRequestParam eventType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    sget-object p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$1;->$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const-string/jumbo p1, "resume"

    const-string/jumbo v0, "start"

    const-string v1, "forceAll"

    const-string v2, "init"

    const-string v3, ""

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    move-object p1, v0

    goto :goto_0

    :pswitch_1
    move-object v1, v2

    :pswitch_2
    move-object p1, v3

    goto :goto_0

    :pswitch_3
    move-object p1, v0

    :pswitch_4
    move-object v1, v2

    .line 961
    :goto_0
    :pswitch_5
    new-instance p0, Lcom/sec/internal/omanetapi/common/data/SyncMessageStatus;

    invoke-direct {p0, v1, p1}, Lcom/sec/internal/omanetapi/common/data/SyncMessageStatus;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method

.method private gotoHandlerEvent(ILjava/lang/Object;)V
    .locals 3

    if-eqz p2, :cond_3

    .line 609
    instance-of v0, p2, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    if-eqz v0, :cond_2

    .line 610
    move-object v0, p2

    check-cast v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    .line 611
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->shouldClearCursorUponInitSyncDone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 612
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getSearchCursor()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSearchCursor:Ljava/lang/String;

    goto :goto_0

    .line 613
    :cond_0
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getSearchCursor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 614
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getSearchCursor()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSearchCursor:Ljava/lang/String;

    .line 616
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getOMASyncEventType()Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mEventType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 617
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update cursor: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSearchCursor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], and event type: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mEventType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 622
    :cond_3
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_1
    return-void
.end method

.method private gotoHandlerEventOnFailure(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .locals 5

    .line 627
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isRetryEnabled()Z

    move-result v0

    .line 628
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isGbaSupported()Z

    move-result v1

    .line 629
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gotoHandlerEventOnFailure isGbaSupported: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isRetryEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    .line 630
    instance-of v1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;

    if-nez v1, :cond_0

    instance-of v1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads;

    if-eqz v1, :cond_1

    .line 631
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    const-string v0, "gotoHandlerEventOnFailure for TMO fail case"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->CANCEL_INITIAL_SYNC:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 634
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    const/4 v1, -0x1

    invoke-interface {v0, p0, p1, v1}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onFallbackToProvision(Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;I)V

    goto :goto_0

    .line 636
    :cond_2
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->PAUSE_INITIAL_SYNC:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method private handleSyncMessageStatusResponse(Lcom/sec/internal/omanetapi/common/data/SyncMessageStatus;)V
    .locals 11

    .line 557
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSyncMessageStatusResponse syncRequestParam "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    iget-object v0, p1, Lcom/sec/internal/omanetapi/common/data/SyncMessageStatus;->syncType:Ljava/lang/String;

    .line 559
    iget-object p1, p1, Lcom/sec/internal/omanetapi/common/data/SyncMessageStatus;->status:Ljava/lang/String;

    const-string v1, "init"

    .line 560
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "illegal state"

    const/4 v3, 0x2

    const-string/jumbo v4, "start"

    const/4 v5, 0x1

    const-string v6, "done"

    const/4 v7, 0x0

    const-string/jumbo v8, "resume"

    const/4 v9, -0x1

    const-string/jumbo v10, "syncmessage_status"

    if-eqz v1, :cond_3

    .line 561
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    move v3, v9

    goto :goto_1

    :sswitch_0
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v3, v5

    goto :goto_1

    :sswitch_2
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v3, v7

    :cond_2
    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 573
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 563
    :pswitch_0
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mBufferDBTranslation:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mLine:Ljava/lang/String;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->SYNC_MESSAGE_INIT_STARTED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1, v0, v1, v10, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->updateSyncStatusByLine(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;)V

    goto :goto_2

    .line 569
    :pswitch_1
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mBufferDBTranslation:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mLine:Ljava/lang/String;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->SYNC_MESSAGE_INIT_DONE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1, p0, v0, v10, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->updateSyncStatusByLine(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;)V

    goto/16 :goto_6

    .line 566
    :goto_2
    :pswitch_2
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->OBJECT_START_UPLOAD:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->gotoHandlerEvent(ILjava/lang/Object;)V

    goto/16 :goto_6

    :cond_3
    const-string v1, "forceAll"

    .line 577
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 578
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    :goto_3
    move v3, v9

    goto :goto_4

    :sswitch_3
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_3

    :sswitch_4
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    move v3, v5

    goto :goto_4

    :sswitch_5
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_3

    :cond_5
    move v3, v7

    :cond_6
    :goto_4
    packed-switch v3, :pswitch_data_1

    .line 601
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 580
    :pswitch_3
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mBufferDBTranslation:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mLine:Ljava/lang/String;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->SYNC_MESSAGE_FORCE_ALL_STARTED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1, v0, v1, v10, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->updateSyncStatusByLine(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;)V

    goto :goto_5

    .line 597
    :pswitch_4
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mBufferDBTranslation:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mLine:Ljava/lang/String;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->SYNC_MESSAGE_FORCE_ALL_DONE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1, p0, v0, v10, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->updateSyncStatusByLine(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;)V

    goto :goto_6

    .line 583
    :goto_5
    :pswitch_5
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsHandlerRunning:Z

    if-eqz p1, :cond_9

    .line 584
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsSearchFinished:Z

    if-eqz p1, :cond_8

    .line 585
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingDownloadQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    .line 586
    sget-object p1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->DOWNLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->checkNextMsgFromDownloadWorkingQueue(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    goto :goto_6

    .line 587
    :cond_7
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingUploadQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    .line 588
    sget-object p1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->UPLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->checkNextMsgFromUploadWorkingQueue(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    goto :goto_6

    .line 591
    :cond_8
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object p1

    new-instance v8, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSearchCursor:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mLine:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSyncMsgType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    iget-boolean v7, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsFullSync:Z

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;ZLcom/sec/internal/ims/cmstore/MessageStoreClient;Z)V

    invoke-virtual {p1, v8}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    :cond_9
    :goto_6
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x37b237d3 -> :sswitch_2
        0x2f2382 -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x37b237d3 -> :sswitch_5
        0x2f2382 -> :sswitch_4
        0x68ac462 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private onApiTreatAsSucceed(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .locals 1

    .line 711
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onOmaSuccess(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    .line 712
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isRetryEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 713
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getControllerOfLastFailedApi()Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mOnApiSucceedOnceListener:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;

    if-eqz p1, :cond_0

    .line 715
    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;->onMoveOn()V

    const/4 p1, 0x0

    .line 716
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mOnApiSucceedOnceListener:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;

    :cond_0
    return-void
.end method

.method private sendSyncMessageStatusRequest(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V
    .locals 9

    .line 910
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mBufferDBTranslation:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mLine:Ljava/lang/String;

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    const-string/jumbo v3, "syncmessage_status"

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->getInitialSyncStatusByLine(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Ljava/lang/String;)Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    move-result-object v0

    .line 912
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendSyncMessageStatusRequest init sync message status "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAddWoPhoneId(Ljava/lang/String;ILjava/lang/String;)V

    .line 914
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->getSyncRequestParam(Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;)Lcom/sec/internal/omanetapi/common/data/SyncMessageStatus;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 915
    iget-object v1, v0, Lcom/sec/internal/omanetapi/common/data/SyncMessageStatus;->syncType:Ljava/lang/String;

    const-string v2, "init"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->UPLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    .line 916
    invoke-virtual {v1, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 926
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object p1

    new-instance v1, Lcom/sec/internal/ims/cmstore/omanetapi/nms/McsSyncMessageStatus;

    iget-object v2, v0, Lcom/sec/internal/omanetapi/common/data/SyncMessageStatus;->syncType:Ljava/lang/String;

    iget-object v0, v0, Lcom/sec/internal/omanetapi/common/data/SyncMessageStatus;->status:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/McsSyncMessageStatus;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 927
    invoke-virtual {p1, v1}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    goto :goto_1

    .line 917
    :cond_1
    :goto_0
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->SEARCH:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 918
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object p1

    new-instance v8, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSearchCursor:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mLine:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSyncMsgType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    iget-boolean v7, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsFullSync:Z

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;ZLcom/sec/internal/ims/cmstore/MessageStoreClient;Z)V

    invoke-virtual {p1, v8}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    goto :goto_1

    .line 920
    :cond_2
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->DOWNLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 921
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->checkNextMsgFromDownloadWorkingQueue(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    goto :goto_1

    .line 922
    :cond_3
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->UPLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 923
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->checkNextMsgFromUploadWorkingQueue(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public appendToWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V
    .locals 2

    .line 180
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    .line 181
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    sget-object p1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->DOWNLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-virtual {p1, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 183
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 184
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 185
    sget-object p2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->ADD_TO_WORKINGQUEUE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p2

    iput p2, p1, Landroid/os/Message;->what:I

    .line 186
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 187
    :cond_0
    sget-object p1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->UPLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-virtual {p1, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 188
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 189
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 190
    sget-object p2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->ADD_TO_UPLOADWORKINGQUEUE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p2

    iput p2, p1, Landroid/os/Message;->what:I

    .line 191
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public appendToWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V
    .locals 3

    .line 169
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appendToWorkingQueue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->BULK_UPLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-virtual {v0, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 172
    new-instance p2, Landroid/os/Message;

    invoke-direct {p2}, Landroid/os/Message;-><init>()V

    .line 173
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 174
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->ADD_TO_QUEUE_BULKUPLOAD:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    iput p1, p2, Landroid/os/Message;->what:I

    .line 175
    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method protected checkNextBulkUploadWorkingQueue()V
    .locals 3

    .line 1008
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkNextBulkUploadWorkingQueue: mBulkUploadQueue is empty: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mBulkUploadQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mBulkUploadQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1010
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->makeBulkUploadparameter()V

    .line 1011
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->retryBulkUploadRequest()V

    goto :goto_0

    .line 1013
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->OBJECT_END_UPLOAD:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method protected checkNextMsgFromDownloadWorkingQueue(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V
    .locals 4

    .line 865
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkNextMsgFromDownloadWorkingQueue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingDownloadQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 867
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->peekDownloadQueue()Landroid/util/Pair;

    move-result-object v0

    .line 868
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkNextMsgFromDownloadWorkingQueue: fileReq:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    .line 869
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 870
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    const-string p1, "checkNextMsgFromDownloadWorkingQueue largefile download case "

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-nez v0, :cond_2

    .line 875
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    const-string v1, "checkNextMsgFromDownloadWorkingQueue httpparam null "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 876
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsFTThumbnailDownload:Z

    .line 877
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->pollFromDownloadSet()V

    .line 878
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingDownloadQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 879
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->checkNextMsgFromDownloadWorkingQueue(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    return-void

    .line 883
    :cond_2
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    instance-of v2, v1, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;

    if-eqz v2, :cond_3

    .line 884
    check-cast v1, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;

    invoke-virtual {v1}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->updateToken()Z

    .line 885
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;

    invoke-virtual {v1}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->replaceUrlPrefix()V

    .line 887
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "url : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v3}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ; method: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v3}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getMethod()Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getMethod()Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_1

    .line 894
    :cond_4
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object p0

    iget-object p1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    goto :goto_2

    .line 890
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->pollFromDownloadSet()V

    .line 891
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingDownloadQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 892
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->checkNextMsgFromDownloadWorkingQueue(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    goto :goto_2

    .line 897
    :cond_6
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->DOWNLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 898
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->isCmsEnabled:Z

    if-eqz p1, :cond_7

    .line 899
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->OBJECT_FETCH_DOWNLOAD_DONE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 901
    :cond_7
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->OBJECT_END_DOWNLOAD:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 903
    :cond_8
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->UPLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 904
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->OBJECT_END_UPLOAD:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_9
    :goto_2
    return-void
.end method

.method protected checkNextMsgFromUploadWorkingQueue(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V
    .locals 4

    .line 965
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkNextMsgFromUploadWorkingQueue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingUploadQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 967
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->peekUploadQueue()Landroid/util/Pair;

    move-result-object v0

    .line 968
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkNextMsgFromUploadWorkingQueue: fileReq:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    .line 969
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    if-nez v0, :cond_2

    .line 973
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    const-string v1, "checkNextMsgFromUploadWorkingQueue: http param is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingUploadQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 975
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->checkNextMsgFromUploadWorkingQueue(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    return-void

    .line 979
    :cond_2
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 981
    instance-of v1, v0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;

    if-eqz v1, :cond_3

    .line 982
    move-object v1, v0

    check-cast v1, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;

    invoke-virtual {v1}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->updateToken()Z

    .line 983
    invoke-virtual {v1}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->replaceUrlPrefix()V

    .line 985
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "url : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ; method: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getMethod()Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getMethod()Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_1

    .line 991
    :cond_4
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    goto :goto_2

    .line 988
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingUploadQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 989
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->checkNextMsgFromUploadWorkingQueue(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    goto :goto_2

    .line 995
    :cond_6
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->DOWNLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 996
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->isCmsEnabled:Z

    if-eqz p1, :cond_7

    .line 997
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->OBJECT_FETCH_DOWNLOAD_DONE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 999
    :cond_7
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->OBJECT_END_DOWNLOAD:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 1001
    :cond_8
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->UPLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1002
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->OBJECT_END_UPLOAD:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_9
    :goto_2
    return-void
.end method

.method public getIsFullSyncParam()Z
    .locals 0

    .line 150
    iget-boolean p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsFullSync:Z

    return p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    .line 197
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 199
    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    move-result-object v1

    .line 200
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->logWorkingStatus()V

    if-nez v1, :cond_0

    .line 203
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 206
    :cond_0
    sget-object v2, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$1;->$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const-string v3, "empty queue: "

    const-string/jumbo v4, "syncmessage_status"

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_5

    .line 519
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_21

    .line 520
    check-cast v0, Lcom/sec/internal/ims/cmstore/params/HttpResParamsWrapper;

    .line 521
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/params/HttpResParamsWrapper;->mApi:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->onApiTreatAsSucceed(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    .line 524
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/params/HttpResParamsWrapper;->mApi:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    instance-of v2, v1, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateAllObjects;

    if-eqz v2, :cond_1

    .line 525
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->OBJECT_ONE_UPLOAD_COMPLETED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    goto :goto_1

    .line 526
    :cond_1
    instance-of v2, v1, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;

    if-eqz v2, :cond_2

    .line 527
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->INITIAL_SYNC_SUMMARY_COMPLETE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    goto :goto_1

    .line 528
    :cond_2
    instance-of v2, v1, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkCreation;

    if-eqz v2, :cond_4

    .line 530
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/params/HttpResParamsWrapper;->mBufDbParams:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    if-eqz v1, :cond_3

    .line 532
    sget-object v2, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->FALLBACK_MESSAGES_UPLOADED:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    .line 533
    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getActionType()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    move-result-object v1

    if-ne v2, v1, :cond_3

    .line 534
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->FALLBACK_ONE_UPLOAD:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    goto :goto_1

    .line 536
    :cond_3
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->OBJECT_BULK_UPLOAD_COMPLETED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    goto :goto_1

    .line 538
    :cond_4
    instance-of v2, v1, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateFile;

    if-eqz v2, :cond_5

    .line 539
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->OBJECT_FT_UPLOAD_FAILED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    goto :goto_1

    .line 540
    :cond_5
    instance-of v2, v1, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetLargeFile;

    if-nez v2, :cond_8

    instance-of v2, v1, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageHeadLargeFile;

    if-eqz v2, :cond_6

    goto :goto_0

    .line 543
    :cond_6
    instance-of v1, v1, Lcom/sec/internal/ims/cmstore/omanetapi/nms/McsSyncMessageStatus;

    if-eqz v1, :cond_7

    .line 544
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->SYNC_MESSAGE_ACK:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    goto :goto_1

    .line 546
    :cond_7
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->OBJECT_ONE_DOWNLOAD_COMPLETED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    goto :goto_1

    .line 542
    :cond_8
    :goto_0
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->DOWNLOAD_FILE_API_FAILED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    .line 548
    :goto_1
    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/params/HttpResParamsWrapper;->mBufDbParams:Ljava/lang/Object;

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->gotoHandlerEvent(ILjava/lang/Object;)V

    goto/16 :goto_5

    .line 512
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    if-eqz v0, :cond_21

    .line 514
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getMcsRetryMapAdapter()Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->retryApi(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;)Z

    goto/16 :goto_5

    .line 506
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_21

    .line 507
    check-cast v0, Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    .line 508
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->onApiTreatAsSucceed(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    goto/16 :goto_5

    .line 497
    :pswitch_4
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mBulkUploadQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    if-nez v1, :cond_9

    move v8, v9

    .line 498
    :cond_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    .line 499
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->setBulkUploadQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    .line 500
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsHandlerRunning:Z

    if-eqz v0, :cond_21

    if-eqz v8, :cond_21

    .line 501
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->checkNextBulkUploadWorkingQueue()V

    .line 502
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    invoke-interface {v0, v9}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->showInitsyncIndicator(Z)V

    goto/16 :goto_5

    .line 481
    :pswitch_5
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingUploadQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    if-nez v1, :cond_a

    move v8, v9

    .line 482
    :cond_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    .line 483
    sget-object v1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->UPLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->setWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    if-eqz v8, :cond_21

    .line 485
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    new-instance v2, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {v2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mLine:Ljava/lang/String;

    .line 486
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setLine(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->INITIAL_UPLOAD_STARTED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 487
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setOMASyncEventType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->INIT_UPLOAD_STARTED:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    .line 488
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v2

    .line 489
    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object v2

    .line 485
    invoke-interface {v0, v2}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onInitUploadStarted(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 490
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsHandlerRunning:Z

    if-eqz v0, :cond_21

    .line 491
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->checkNextMsgFromUploadWorkingQueue(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    .line 492
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    invoke-interface {v0, v9}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->showInitsyncIndicator(Z)V

    goto/16 :goto_5

    .line 472
    :pswitch_6
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingDownloadQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    if-nez v1, :cond_b

    move v8, v9

    .line 473
    :cond_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    .line 474
    sget-object v1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->DOWNLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->setWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    .line 475
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsHandlerRunning:Z

    if-eqz v0, :cond_21

    if-eqz v8, :cond_21

    .line 476
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->checkNextMsgFromDownloadWorkingQueue(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    .line 477
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    invoke-interface {v0, v9}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->showInitsyncIndicator(Z)V

    goto/16 :goto_5

    .line 469
    :pswitch_7
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onPauseCMNNetApiWithResumeDelay(I)V

    goto/16 :goto_5

    .line 463
    :pswitch_8
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->SteadyStateError_ErrMsg7:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v1

    const-string/jumbo v2, "pop_up"

    invoke-interface {v0, v1, v2, v8}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    goto/16 :goto_5

    .line 454
    :pswitch_9
    new-instance v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mLine:Ljava/lang/String;

    .line 455
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setLine(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object v1

    .line 457
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_c

    instance-of v2, v0, Ljava/lang/Number;

    if-eqz v2, :cond_c

    .line 458
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    goto :goto_2

    :cond_c
    const-wide/16 v2, 0x0

    .line 460
    :goto_2
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onOmaAuthenticationFailed(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;J)V

    goto/16 :goto_5

    .line 448
    :pswitch_a
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsHandlerRunning:Z

    if-eqz v0, :cond_21

    .line 449
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->pause()V

    .line 450
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->resume()V

    goto/16 :goto_5

    .line 440
    :pswitch_b
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    new-instance v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    sget-object v2, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->ALL_PAYLOAD_NOTIFY:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    .line 441
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mLine:Ljava/lang/String;

    .line 443
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setLine(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSyncMsgType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    .line 444
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setSyncType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object v1

    .line 440
    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onMessageDownloadCompleted(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    goto/16 :goto_5

    .line 434
    :pswitch_c
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    new-instance v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    sget-object v2, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->MESSAGE_DOWNLOAD_COMPLETE:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    .line 435
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mLine:Ljava/lang/String;

    .line 437
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setLine(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSyncMsgType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setSyncType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object v1

    .line 434
    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onMessageDownloadCompleted(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    goto/16 :goto_5

    .line 429
    :pswitch_d
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->pollFromDownloadSet()V

    .line 430
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingDownloadQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 431
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->DOWNLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->checkNextMsgFromDownloadWorkingQueue(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    goto/16 :goto_5

    .line 418
    :pswitch_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_21

    .line 419
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    check-cast v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    .line 420
    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onOneMessageDownloaded(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 421
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsFTThumbnailDownload:Z

    if-nez v0, :cond_d

    .line 422
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->pollFromDownloadSet()V

    .line 423
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingDownloadQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 425
    :cond_d
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->DOWNLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->checkNextMsgFromDownloadWorkingQueue(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    goto/16 :goto_5

    .line 406
    :pswitch_f
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingUploadQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingDownloadQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 408
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->isCmsEnabled:Z

    if-eqz v0, :cond_e

    .line 409
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->OBJECT_FETCH_DOWNLOAD_DONE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_5

    .line 411
    :cond_e
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->OBJECT_END_DOWNLOAD:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_5

    .line 414
    :cond_f
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->DOWNLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->checkNextMsgFromDownloadWorkingQueue(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    goto/16 :goto_5

    .line 375
    :pswitch_10
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    new-instance v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    sget-object v2, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->MESSAGE_UPLOAD_COMPLETE:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    .line 377
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mLine:Ljava/lang/String;

    .line 379
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setLine(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v1

    .line 380
    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object v1

    .line 375
    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onMessageUploadCompleted(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 381
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isBulkCreationEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mBulkUploadQueue:Ljava/util/Queue;

    .line 382
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 383
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->OBJECT_BULK_UPLOAD_COMPLETED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    .line 384
    invoke-direct {p0, v0, v5}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->gotoHandlerEvent(ILjava/lang/Object;)V

    return-void

    .line 387
    :cond_10
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->isCmsEnabled:Z

    if-eqz v0, :cond_13

    .line 388
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mBufferDBTranslation:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mLine:Ljava/lang/String;

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v0, v1, v2, v4}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->getInitialSyncStatusByLine(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Ljava/lang/String;)Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    move-result-object v0

    .line 390
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " OBJECT_END_UPLOAD eventType "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->SYNC_MESSAGE_INIT_STARTED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    const-string v3, "done"

    if-ne v0, v1, :cond_11

    .line 392
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/cmstore/omanetapi/nms/McsSyncMessageStatus;

    const-string v2, "init"

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/McsSyncMessageStatus;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    goto/16 :goto_5

    .line 394
    :cond_11
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->SYNC_MESSAGE_INIT_PENDING:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    if-ne v0, v1, :cond_12

    .line 395
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mBufferDBTranslation:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mLine:Ljava/lang/String;

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->SYNC_MESSAGE_INIT_DONE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->updateSyncStatusByLine(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;)V

    goto/16 :goto_5

    .line 397
    :cond_12
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->SYNC_MESSAGE_FORCE_ALL_STARTED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    if-ne v0, v1, :cond_21

    .line 398
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/cmstore/omanetapi/nms/McsSyncMessageStatus;

    const-string v2, "forceAll"

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/McsSyncMessageStatus;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    goto/16 :goto_5

    .line 402
    :cond_13
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->INITIAL_SYNC_COMPLETE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_5

    .line 370
    :pswitch_11
    iput-object v5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mBulkCreation:Lcom/sec/internal/ims/cmstore/params/ParamBulkCreation;

    .line 371
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->fallbackOneMessageUplaod(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 372
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->UPLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->checkNextMsgFromUploadWorkingQueue(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    goto/16 :goto_5

    .line 364
    :pswitch_12
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onOneMessageUploaded(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 365
    iput-object v5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mBulkCreation:Lcom/sec/internal/ims/cmstore/params/ParamBulkCreation;

    .line 366
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->checkIndividualResponseCodeUpload(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 367
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->checkNextBulkUploadWorkingQueue()V

    goto/16 :goto_5

    .line 358
    :pswitch_13
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingUploadQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 359
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsHandlerRunning:Z

    if-eqz v0, :cond_21

    .line 360
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->UPLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->checkNextMsgFromUploadWorkingQueue(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    goto/16 :goto_5

    .line 353
    :pswitch_14
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onOneMessageUploaded(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 354
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingUploadQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 355
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->UPLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->checkNextMsgFromUploadWorkingQueue(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    goto/16 :goto_5

    .line 341
    :pswitch_15
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v0, Lcom/sec/internal/omanetapi/common/data/SyncMessageStatus;

    if-eqz v1, :cond_14

    .line 342
    check-cast v0, Lcom/sec/internal/omanetapi/common/data/SyncMessageStatus;

    goto :goto_3

    .line 344
    :cond_14
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mBufferDBTranslation:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mLine:Ljava/lang/String;

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v0, v1, v2, v4}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->getInitialSyncStatusByLine(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Ljava/lang/String;)Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    move-result-object v0

    .line 346
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->getSyncRequestParam(Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;)Lcom/sec/internal/omanetapi/common/data/SyncMessageStatus;

    move-result-object v0

    :goto_3
    if-eqz v0, :cond_21

    .line 349
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->handleSyncMessageStatusResponse(Lcom/sec/internal/omanetapi/common/data/SyncMessageStatus;)V

    goto/16 :goto_5

    .line 330
    :pswitch_16
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingUploadQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingUploadQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 332
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->OBJECT_END_UPLOAD:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_5

    .line 334
    :cond_15
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsHandlerRunning:Z

    if-eqz v0, :cond_21

    .line 335
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->UPLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->checkNextMsgFromUploadWorkingQueue(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    goto/16 :goto_5

    .line 324
    :pswitch_17
    iput-boolean v9, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsSearchFinished:Z

    .line 325
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onInitSyncSummaryCompleted(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    goto/16 :goto_5

    .line 310
    :pswitch_18
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    new-instance v2, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {v2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    sget-object v3, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->INIT_SYNC_COMPLETE:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    .line 312
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v2

    .line 314
    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setOMASyncEventType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 315
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setMStoreClient(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mLine:Ljava/lang/String;

    .line 316
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setLine(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsFullSync:Z

    .line 317
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setIsFullSync(Z)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSyncMsgType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    .line 318
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setSyncType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v1

    .line 319
    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object v1

    .line 311
    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onInitSyncCompleted(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 320
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->ONE_LINE_INIT_SYNC_COMPLETE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_5

    .line 286
    :pswitch_19
    iput-boolean v8, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsHandlerRunning:Z

    .line 287
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingDownloadQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 288
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingUploadQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 289
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingDownloadSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 290
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->isCmsEnabled:Z

    if-eqz v0, :cond_16

    .line 291
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mFileHandler:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->stop()V

    .line 293
    :cond_16
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->shouldClearCursorUponInitSyncDone()Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, ""

    .line 294
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSearchCursor:Ljava/lang/String;

    .line 296
    :cond_17
    iput-object v5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mEventType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 297
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->CANCEL_INITIAL_SYNC:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 299
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setOMASyncEventType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 300
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setMStoreClient(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mLine:Ljava/lang/String;

    .line 301
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setLine(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSyncMsgType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    .line 302
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setSyncType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsFullSync:Z

    .line 303
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setIsFullSync(Z)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->SYNC_FAILED:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    .line 304
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    .line 305
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object v0

    .line 306
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    invoke-interface {v1, v8}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->showInitsyncIndicator(Z)V

    .line 307
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onSyncFailed(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    goto/16 :goto_5

    .line 282
    :pswitch_1a
    iput-boolean v8, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsHandlerRunning:Z

    goto/16 :goto_5

    .line 246
    :pswitch_1b
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsHandlerRunning:Z

    if-nez v0, :cond_21

    .line 247
    iput-boolean v9, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsHandlerRunning:Z

    .line 248
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->isCmsEnabled:Z

    if-eqz v0, :cond_1a

    .line 249
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsSearchFinished:Z

    if-eqz v0, :cond_19

    .line 250
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingDownloadQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    .line 251
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->DOWNLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->sendSyncMessageStatusRequest(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    goto/16 :goto_5

    .line 252
    :cond_18
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingUploadQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    .line 253
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->UPLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->sendSyncMessageStatusRequest(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    goto/16 :goto_5

    .line 256
    :cond_19
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->SEARCH:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->sendSyncMessageStatusRequest(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    goto/16 :goto_5

    .line 259
    :cond_1a
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsSearchFinished:Z

    if-eqz v0, :cond_1e

    .line 260
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingDownloadQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 261
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->DOWNLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->checkNextMsgFromDownloadWorkingQueue(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    .line 262
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    invoke-interface {v0, v9}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->showInitsyncIndicator(Z)V

    goto/16 :goto_5

    .line 263
    :cond_1b
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingUploadQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 264
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->UPLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->checkNextMsgFromUploadWorkingQueue(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    .line 265
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    invoke-interface {v0, v9}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->showInitsyncIndicator(Z)V

    goto/16 :goto_5

    .line 266
    :cond_1c
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mBulkCreation:Lcom/sec/internal/ims/cmstore/params/ParamBulkCreation;

    if-eqz v0, :cond_1d

    .line 267
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->retryBulkUploadRequest()V

    .line 268
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    invoke-interface {v0, v9}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->showInitsyncIndicator(Z)V

    goto/16 :goto_5

    .line 269
    :cond_1d
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mBulkUploadQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    .line 270
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->checkNextBulkUploadWorkingQueue()V

    .line 271
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    invoke-interface {v0, v9}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->showInitsyncIndicator(Z)V

    goto/16 :goto_5

    .line 274
    :cond_1e
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object v8

    new-instance v10, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSearchCursor:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mLine:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSyncMsgType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    iget-boolean v7, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsFullSync:Z

    move-object v0, v10

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;ZLcom/sec/internal/ims/cmstore/MessageStoreClient;Z)V

    invoke-virtual {v8, v10}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    .line 276
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    invoke-interface {v0, v9}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->showInitsyncIndicator(Z)V

    goto/16 :goto_5

    .line 236
    :pswitch_1c
    iput-boolean v8, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsHandlerRunning:Z

    .line 237
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->PAUSE_INITIAL_SYNC:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 238
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setOMASyncEventType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mLine:Ljava/lang/String;

    .line 239
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setLine(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSyncMsgType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setSyncType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsFullSync:Z

    .line 240
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setIsFullSync(Z)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->SYNC_FAILED:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    .line 241
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object v0

    .line 243
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onSyncFailed(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    goto/16 :goto_5

    .line 230
    :pswitch_1d
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object v10

    new-instance v11, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSearchCursor:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mLine:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSyncMsgType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    iget-boolean v7, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsFullSync:Z

    move-object v0, v11

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;ZLcom/sec/internal/ims/cmstore/MessageStoreClient;Z)V

    invoke-virtual {v10, v11}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    .line 232
    iput-boolean v8, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsSearchFinished:Z

    .line 233
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    invoke-interface {v0, v9}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->showInitsyncIndicator(Z)V

    goto :goto_5

    .line 220
    :pswitch_1e
    iget-boolean v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsHandlerRunning:Z

    if-eqz v1, :cond_1f

    .line 221
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onPartialSyncSummaryCompleted(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 223
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object v10

    new-instance v11, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSearchCursor:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mLine:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSyncMsgType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    iget-boolean v7, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsFullSync:Z

    move-object v0, v11

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;ZLcom/sec/internal/ims/cmstore/MessageStoreClient;Z)V

    invoke-virtual {v10, v11}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    .line 225
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    invoke-interface {v0, v9}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->showInitsyncIndicator(Z)V

    .line 227
    :cond_1f
    iput-boolean v8, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsSearchFinished:Z

    goto :goto_5

    .line 208
    :pswitch_1f
    iput-boolean v9, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsHandlerRunning:Z

    .line 209
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onInitialSyncStarted()V

    .line 210
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->isCmsEnabled:Z

    if-eqz v0, :cond_20

    .line 211
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->SEARCH:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->sendSyncMessageStatusRequest(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    goto :goto_4

    .line 213
    :cond_20
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object v10

    new-instance v11, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSearchCursor:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mLine:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSyncMsgType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    iget-boolean v7, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsFullSync:Z

    move-object v0, v11

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;ZLcom/sec/internal/ims/cmstore/MessageStoreClient;Z)V

    invoke-virtual {v10, v11}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    .line 216
    :goto_4
    iput-boolean v8, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsSearchFinished:Z

    .line 217
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    invoke-interface {v0, v9}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->showInitsyncIndicator(Z)V

    :cond_21
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected logWorkingStatus()V
    .locals 3

    .line 1048
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "logWorkingStatus: [mSyncMsgType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSyncMsgType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mIsHandlerRunning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsHandlerRunning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mEventType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mEventType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mIsSearchFinished: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsSearchFinished:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mWorkingDownloadQueue size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingDownloadQueue:Ljava/util/Queue;

    .line 1053
    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mWorkingDownloadSet size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingDownloadSet:Ljava/util/HashSet;

    .line 1054
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mWorkingUploadQueue size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingUploadQueue:Ljava/util/Queue;

    .line 1055
    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mBulkUploadQueue size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mBulkUploadQueue:Ljava/util/Queue;

    .line 1056
    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mLine: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mLine:Ljava/lang/String;

    .line 1057
    invoke-static {p0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1048
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected abstract makeBulkUploadparameter()V
.end method

.method public onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .locals 1

    .line 772
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->isCmsEnabled:Z

    if-eqz v0, :cond_0

    .line 773
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsHandlerRunning:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 774
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->onMoveOnToNext(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/Object;)V

    goto :goto_0

    .line 777
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->gotoHandlerEventOnFailure(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V
    .locals 0

    .line 767
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->gotoHandlerEventOnFailure(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    return-void
.end method

.method public onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;)V
    .locals 3

    .line 761
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFailedCall code :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->gotoHandlerEventOnFailure(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    return-void
.end method

.method public onFailedEvent(ILjava/lang/Object;)V
    .locals 0

    .line 783
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->gotoHandlerEvent(ILjava/lang/Object;)V

    return-void
.end method

.method public onFixedFlow(I)V
    .locals 3

    .line 812
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFixedFlow event is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onFixedFlowWithMessage(Landroid/os/Message;)V
    .locals 3

    if-eqz p1, :cond_4

    .line 818
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_1

    .line 821
    :cond_0
    instance-of v0, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    if-nez v0, :cond_1

    .line 822
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    const-string p1, "onFixedFlowWithMessage message not ParamOMAresponseforBufDB"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 825
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFixedFlowWithMessage message is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    .line 826
    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getActionType()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 825
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    .line 829
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->shouldClearCursorUponInitSyncDone()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 830
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getSearchCursor()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSearchCursor:Ljava/lang/String;

    goto :goto_0

    .line 832
    :cond_2
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getSearchCursor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 833
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getSearchCursor()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSearchCursor:Ljava/lang/String;

    .line 836
    :cond_3
    :goto_0
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getOMASyncEventType()Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mEventType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 837
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 819
    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    const-string p1, "onFixedFlowWithMessage message is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onGoToEvent(ILjava/lang/Object;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 731
    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 733
    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method public onMoveOnToNext(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/Object;)V
    .locals 3

    .line 723
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMoveOnToNext  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/HttpResParamsWrapper;

    invoke-direct {v0, p1, p2}, Lcom/sec/internal/ims/cmstore/params/HttpResParamsWrapper;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/Object;)V

    .line 725
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->MOVE_ON:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->gotoHandlerEvent(ILjava/lang/Object;)V

    return-void
.end method

.method public onOverRequest(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;I)V
    .locals 3

    .line 789
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", retry after isRetryEnabled: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 790
    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isRetryEnabled()Z

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 789
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isRetryEnabled()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 793
    iget-boolean p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->isCmsEnabled:Z

    if-eqz p2, :cond_0

    .line 794
    sget-object p2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->API_FAILED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    int-to-long p2, p3

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 796
    :cond_0
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    invoke-interface {p2, p0, p1, p3}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onFallbackToProvision(Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;I)V

    goto :goto_0

    .line 800
    :cond_1
    new-instance p2, Lcom/sec/internal/ims/cmstore/params/HttpResParamsWrapper;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Lcom/sec/internal/ims/cmstore/params/HttpResParamsWrapper;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/Object;)V

    .line 801
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->MOVE_ON:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->gotoHandlerEvent(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onOverRequest(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onSuccessfulCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onSuccessfulCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onSuccessfulCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onSuccessfulEvent(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;ILjava/lang/Object;)V
    .locals 1

    .line 751
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->API_SUCCEED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->gotoHandlerEvent(ILjava/lang/Object;)V

    .line 752
    invoke-direct {p0, p2, p3}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->gotoHandlerEvent(ILjava/lang/Object;)V

    return-void
.end method

.method public pause()V
    .locals 1

    .line 675
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->TRANSIT_TO_PAUSE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected abstract peekBulkUploadQueue()Lcom/sec/internal/helper/httpclient/HttpRequestParams;
.end method

.method protected abstract peekDownloadQueue()Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Lcom/sec/internal/helper/httpclient/HttpRequestParams;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract peekUploadQueue()Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Lcom/sec/internal/helper/httpclient/HttpRequestParams;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method protected pollFromDownloadSet()V
    .locals 5

    .line 853
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingDownloadQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    if-nez v0, :cond_0

    return-void

    .line 857
    :cond_0
    new-instance v1, Landroid/util/Pair;

    iget v2, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-wide v3, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 859
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingDownloadSet:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 860
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingDownloadSet:Ljava/util/HashSet;

    invoke-virtual {p0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public resetSearchParam()V
    .locals 4

    .line 136
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mBufferDBTranslation:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mLine:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSyncMsgType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->getSearchCursorByLine(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSearchCursor:Ljava/lang/String;

    .line 137
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mBufferDBTranslation:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mLine:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSyncMsgType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    const-string v3, "initsync_status"

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->getInitialSyncStatusByLine(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Ljava/lang/String;)Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mEventType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 138
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingDownloadQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 139
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingUploadQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 140
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingDownloadSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 141
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetSearchParam, cursor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSearchCursor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mEventType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public resume()V
    .locals 1

    .line 680
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->TRANSIT_TO_RESUME:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected retryBulkUploadRequest()V
    .locals 4

    .line 1018
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->peekBulkUploadQueue()Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1020
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->checkNextBulkUploadWorkingQueue()V

    return-void

    .line 1024
    :cond_0
    instance-of v1, v0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;

    if-eqz v1, :cond_1

    .line 1025
    move-object v1, v0

    check-cast v1, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;

    invoke-virtual {v1}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->updateToken()Z

    .line 1026
    invoke-virtual {v1}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->replaceUrlPrefix()V

    .line 1028
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "retryBulkUploadRequest url : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ; method: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getMethod()Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getMethod()Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 1033
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    goto :goto_1

    .line 1031
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->checkNextBulkUploadWorkingQueue()V

    :goto_1
    return-void
.end method

.method protected abstract setBulkUploadQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
.end method

.method public setInitSyncComplete()V
    .locals 1

    const/4 v0, 0x0

    .line 154
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsHandlerRunning:Z

    const/4 v0, 0x1

    .line 155
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsSearchFinished:Z

    .line 156
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingDownloadQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 157
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->isCmsEnabled:Z

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingUploadQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingDownloadSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 161
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->shouldClearCursorUponInitSyncDone()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    .line 162
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSearchCursor:Ljava/lang/String;

    :cond_1
    const/4 v0, 0x0

    .line 164
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mEventType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 165
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->logWorkingStatus()V

    return-void
.end method

.method public setIsFullSyncParam(Z)V
    .locals 2

    .line 145
    iput-boolean p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsFullSync:Z

    .line 146
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setIsFullSyncParam, mIsFullSync: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsFullSync:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setOnApiSucceedOnceListener(Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;)V
    .locals 0

    .line 1062
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mOnApiSucceedOnceListener:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;

    return-void
.end method

.method protected abstract setWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V
.end method

.method protected setWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V
    .locals 1

    .line 1039
    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1043
    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->setWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public start()V
    .locals 1

    .line 641
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mLine:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->start(Ljava/lang/String;)V

    return-void
.end method

.method protected start(Ljava/lang/String;)V
    .locals 4

    .line 645
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG_CN:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " mEventType: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mEventType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 645
    invoke-static {v0, v1, p1}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAdd(Ljava/lang/String;ILjava/lang/String;)V

    .line 648
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mEventType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    if-nez p1, :cond_0

    .line 649
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->START_INITIAL_SYNC:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 652
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$1;->$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_4

    .line 669
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->START_INITIAL_SYNC:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 666
    :cond_1
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->ONE_LINE_INIT_SYNC_COMPLETE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    .line 654
    iput-boolean p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsHandlerRunning:Z

    .line 655
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->isCmsEnabled:Z

    if-eqz p1, :cond_3

    .line 656
    sget-object p1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->SEARCH:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->sendSyncMessageStatusRequest(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    goto :goto_0

    .line 658
    :cond_3
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->INITIAL_SYNC_CONTINUE_SEARCH:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_4
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 684
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->CANCEL_INITIAL_SYNC:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public update(I)Z
    .locals 3

    .line 689
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-result p0

    return p0
.end method

.method public updateDelay(IJ)Z
    .locals 3

    .line 695
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " delayed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move-result p0

    return p0
.end method

.method public updateDelayRetry(IJ)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public updateMessage(Landroid/os/Message;)Z
    .locals 0

    .line 707
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method
