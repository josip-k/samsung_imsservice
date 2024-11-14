.class public Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;
.super Ljava/lang/Object;
.source "ParamAppJsonValue.java"


# instance fields
.field public final mAppType:Ljava/lang/String;

.field public final mBody:Ljava/lang/String;

.field public final mChatId:Ljava/lang/String;

.field public final mCorrelationId:Ljava/lang/String;

.field public final mCorrelationTag:Ljava/lang/String;

.field public final mDataContractType:I

.field public final mDataType:Ljava/lang/String;

.field public final mFromAddress:Ljava/lang/String;

.field public final mIsGroupSMS:Z

.field public final mIsSpam:Z

.field public final mLine:Ljava/lang/String;

.field public final mOperation:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

.field public final mRowId:I

.field public final mToAddress:Ljava/lang/String;

.field public final mVvmUpdate:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;Lcom/sec/internal/ims/cmstore/MessageStoreClient;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    move-object v0, p0

    move-object v1, p9

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v2, p1

    .line 28
    iput-object v2, v0, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mAppType:Ljava/lang/String;

    move-object v2, p2

    .line 29
    iput-object v2, v0, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mDataType:Ljava/lang/String;

    move v2, p3

    .line 30
    iput v2, v0, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mDataContractType:I

    move v2, p4

    .line 31
    iput v2, v0, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mRowId:I

    move-object v2, p5

    .line 32
    iput-object v2, v0, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mChatId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 34
    iput-object v1, v0, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mLine:Ljava/lang/String;

    goto :goto_0

    .line 36
    :cond_0
    invoke-interface {p11}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTelCtn()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mLine:Ljava/lang/String;

    :goto_0
    move-object v1, p8

    .line 38
    iput-object v1, v0, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mOperation:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    move-object v1, p6

    .line 39
    iput-object v1, v0, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mCorrelationTag:Ljava/lang/String;

    move-object v1, p7

    .line 40
    iput-object v1, v0, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mCorrelationId:Ljava/lang/String;

    move-object v1, p10

    .line 41
    iput-object v1, v0, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mVvmUpdate:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;

    move v1, p12

    .line 42
    iput-boolean v1, v0, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mIsGroupSMS:Z

    move/from16 v1, p13

    .line 43
    iput-boolean v1, v0, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mIsSpam:Z

    move-object/from16 v1, p14

    .line 44
    iput-object v1, v0, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mToAddress:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 45
    iput-object v1, v0, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mFromAddress:Ljava/lang/String;

    move-object/from16 v1, p16

    .line 46
    iput-object v1, v0, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mBody:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ParamAppJsonValue [mAppType= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mAppType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mDataType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mDataType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mDataContractType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mDataContractType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mRowId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mRowId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mChatId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mChatId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mOperation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mOperation:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mLine = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mLine:Ljava/lang/String;

    .line 54
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mCorrelationTag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mCorrelationTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mCorrelationId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mCorrelationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mGroupSMS = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mIsGroupSMS:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsSpam = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mIsSpam:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mVvmUpdate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mVvmUpdate:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
