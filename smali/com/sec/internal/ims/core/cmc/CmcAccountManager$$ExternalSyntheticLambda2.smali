.class public final synthetic Lcom/sec/internal/ims/core/cmc/CmcAccountManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$$ExternalSyntheticLambda2;->f$0:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$$ExternalSyntheticLambda2;->f$0:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    check-cast p1, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->$r8$lambda$zcjQWZiO6jKXO7lP1yd9ZeTCmV0(Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    return-void
.end method
