.class synthetic Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$1;
.super Ljava/lang/Object;
.source "CmcRegiConfigBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sec$internal$ims$core$cmc$CmcRegiConfigBuilder$DataType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 66
    invoke-static {}, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$DataType;->values()[Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$DataType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$1;->$SwitchMap$com$sec$internal$ims$core$cmc$CmcRegiConfigBuilder$DataType:[I

    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$DataType;->STRING:Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$DataType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$1;->$SwitchMap$com$sec$internal$ims$core$cmc$CmcRegiConfigBuilder$DataType:[I

    sget-object v1, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$DataType;->BOOLEAN:Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$DataType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$1;->$SwitchMap$com$sec$internal$ims$core$cmc$CmcRegiConfigBuilder$DataType:[I

    sget-object v1, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$DataType;->STRING_LIST:Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$DataType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
