.class public final synthetic Lcom/sec/internal/ims/settings/JibeRcsEnabler$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/settings/JibeRcsEnabler;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/settings/JibeRcsEnabler;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/settings/JibeRcsEnabler$$ExternalSyntheticLambda10;->f$0:Lcom/sec/internal/ims/settings/JibeRcsEnabler;

    iput-object p2, p0, Lcom/sec/internal/ims/settings/JibeRcsEnabler$$ExternalSyntheticLambda10;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/sec/internal/ims/settings/JibeRcsEnabler$$ExternalSyntheticLambda10;->f$0:Lcom/sec/internal/ims/settings/JibeRcsEnabler;

    iget-object p0, p0, Lcom/sec/internal/ims/settings/JibeRcsEnabler$$ExternalSyntheticLambda10;->f$1:Ljava/lang/String;

    check-cast p1, Lcom/google/gson/JsonArray;

    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/settings/JibeRcsEnabler;->$r8$lambda$EmnDQxla7An1W_bDqlVPt_YLHo8(Lcom/sec/internal/ims/settings/JibeRcsEnabler;Ljava/lang/String;Lcom/google/gson/JsonArray;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
