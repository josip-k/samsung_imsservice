.class Lcom/sec/internal/ims/core/sim/SimDataAdaptorUsc;
.super Lcom/sec/internal/ims/core/sim/SimDataAdaptor;
.source "SimDataAdaptorUsc.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SimDataAdaptorUsc"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method constructor <init>(Lcom/sec/internal/ims/core/sim/SimManager;)V
    .locals 1

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;-><init>(Lcom/sec/internal/ims/core/sim/SimManager;I)V

    return-void
.end method