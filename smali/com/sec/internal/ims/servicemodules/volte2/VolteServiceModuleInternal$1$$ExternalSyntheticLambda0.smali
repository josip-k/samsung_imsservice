.class public final synthetic Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Landroid/os/Bundle;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$1;->$r8$lambda$oiyBiKuV-6_erVaYnCLQ1bbUZfM(Landroid/os/Bundle;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
