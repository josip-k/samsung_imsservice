.class public final synthetic Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 0
    check-cast p1, Lcom/sec/ims/settings/ImsProfile;

    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationManager;->$r8$lambda$c1ec4aREWT9Vi3G9kO59MErROj8(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result p0

    return p0
.end method
