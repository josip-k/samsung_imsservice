.class public final synthetic Lcom/sec/internal/ims/settings/JibeRcsEnabler$$ExternalSyntheticLambda9;
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
    check-cast p1, Lcom/google/gson/JsonObject;

    invoke-static {p1}, Lcom/sec/internal/ims/settings/JibeRcsEnabler;->$r8$lambda$FMuOT132xlzq7s9WdJZ2EuFs6PM(Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonElement;

    move-result-object p0

    return-object p0
.end method
