.class public final synthetic Lcom/sec/internal/ims/core/RegistrationGovernorSea$$ExternalSyntheticLambda0;
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
    check-cast p1, Ljava/util/concurrent/ScheduledFuture;

    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationGovernorSea;->$r8$lambda$QpkcONskPjPTdqJPmxudlKKbU0s(Ljava/util/concurrent/ScheduledFuture;)Z

    move-result p0

    return p0
.end method
