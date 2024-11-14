.class abstract Lcom/sec/internal/ims/core/sim/SimDataAdaptor;
.super Ljava/lang/Object;
.source "SimDataAdaptor.java"


# static fields
.field protected static final LOG_TAG:Ljava/lang/String; = "SimDataAdaptor"

.field protected static final PREFERRED_IMPU_INDEX_0:I = 0x0

.field protected static final PREFERRED_IMPU_INDEX_1:I = 0x1


# instance fields
.field protected mLastOperator:Ljava/lang/String;

.field protected final mPreferredImpuIndex:I

.field protected final mSimManager:Lcom/sec/internal/ims/core/sim/SimManager;

.field protected final mSimpleEventLog:Lcom/sec/internal/helper/SimpleEventLog;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method constructor <init>(Lcom/sec/internal/ims/core/sim/SimManager;I)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->mSimManager:Lcom/sec/internal/ims/core/sim/SimManager;

    .line 36
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimpleEventLog()Lcom/sec/internal/helper/SimpleEventLog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->mSimpleEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 37
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimOperator()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->mLastOperator:Ljava/lang/String;

    .line 39
    iput p2, p0, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->mPreferredImpuIndex:I

    return-void
.end method

.method private convertPlmnToDomain(Lcom/sec/internal/ims/core/sim/Plmn;)Ljava/lang/String;
    .locals 1

    .line 106
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v0, p1, Lcom/sec/internal/ims/core/sim/Plmn;->mnc:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget p1, p1, Lcom/sec/internal/ims/core/sim/Plmn;->mcc:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "ims.mnc%03d.mcc%03d.3gppnetwork.org"

    invoke-static {p0, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method fetchDerivedImpi(Ljava/lang/String;Lcom/sec/internal/ims/core/sim/Plmn;)Ljava/lang/String;
    .locals 1

    .line 98
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p0, p2}, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->convertPlmnToDomain(Lcom/sec/internal/ims/core/sim/Plmn;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%s@%s"

    invoke-static {v0, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method fetchDerivedImpu(Ljava/lang/String;Lcom/sec/internal/ims/core/sim/Plmn;)Ljava/lang/String;
    .locals 1

    .line 94
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p0, p2}, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->convertPlmnToDomain(Lcom/sec/internal/ims/core/sim/Plmn;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo p1, "sip:%s@%s"

    invoke-static {v0, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method fetchDerivedImpuFromMsisdn(Ljava/lang/String;Lcom/sec/internal/ims/core/sim/Plmn;)Ljava/lang/String;
    .locals 1

    .line 102
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p0, p2}, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->convertPlmnToDomain(Lcom/sec/internal/ims/core/sim/Plmn;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo p1, "sip:%s@%s"

    invoke-static {v0, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEmergencyImpu(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 43
    sget-object p0, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->LOG_TAG:Ljava/lang/String;

    const-string v0, "getEmergencyImpu:"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    .line 44
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 51
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 52
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :cond_1
    :goto_0
    return-object p0
.end method

.method public getImpuFromList(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 58
    sget-object v0, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getImpuFromList:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    .line 59
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->mPreferredImpuIndex:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->mPreferredImpuIndex:I

    .line 64
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/ims/core/sim/SimManager;->isValidImpu(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->mPreferredImpuIndex:I

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 67
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->getValidImpu(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected getValidImpu(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 71
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 72
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManager;->isValidImpu(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public hasValidMsisdn()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public needHandleLoadedAgain(Ljava/lang/String;)Z
    .locals 3

    .line 85
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->mLastOperator:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    sget-object v0, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Different operator. Last:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->mLastOperator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", new:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->mLastOperator:Ljava/lang/String;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
