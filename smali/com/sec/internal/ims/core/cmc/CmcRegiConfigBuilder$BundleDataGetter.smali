.class public Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$BundleDataGetter;
.super Ljava/lang/Object;
.source "CmcRegiConfigBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BundleDataGetter"
.end annotation


# instance fields
.field mBundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$BundleDataGetter;->mBundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public get(Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;)Ljava/lang/Object;
    .locals 2

    .line 96
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$1;->$SwitchMap$com$sec$internal$ims$core$cmc$CmcRegiConfigBuilder$DataType:[I

    iget-object v1, p1, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;->type:Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$DataType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 102
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$BundleDataGetter;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 100
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$BundleDataGetter;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;->defaultValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 98
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$BundleDataGetter;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;->defaultValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
