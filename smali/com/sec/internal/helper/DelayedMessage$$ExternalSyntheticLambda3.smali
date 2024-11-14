.class public final synthetic Lcom/sec/internal/helper/DelayedMessage$$ExternalSyntheticLambda3;
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
    check-cast p1, Landroid/os/Message;

    invoke-static {p1}, Lcom/sec/internal/helper/DelayedMessage;->$r8$lambda$wtz1UC3DuoL3kRaNj8vAK86aJR8(Landroid/os/Message;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
