.class public final synthetic Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/config/ConfigModule;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/config/ConfigModule;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda20;->f$0:Lcom/sec/internal/ims/config/ConfigModule;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda20;->f$0:Lcom/sec/internal/ims/config/ConfigModule;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/ConfigModule;->dump()V

    return-void
.end method