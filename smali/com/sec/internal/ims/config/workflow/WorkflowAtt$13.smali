.class synthetic Lcom/sec/internal/ims/config/workflow/WorkflowAtt$13;
.super Ljava/lang/Object;
.source "WorkflowAtt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowAtt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sec$internal$ims$config$workflow$WorkflowBase$OpMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 809
    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->values()[Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$13;->$SwitchMap$com$sec$internal$ims$config$workflow$WorkflowBase$OpMode:[I

    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->ACTIVE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$13;->$SwitchMap$com$sec$internal$ims$config$workflow$WorkflowBase$OpMode:[I

    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$13;->$SwitchMap$com$sec$internal$ims$config$workflow$WorkflowBase$OpMode:[I

    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_PERMANENTLY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$13;->$SwitchMap$com$sec$internal$ims$config$workflow$WorkflowBase$OpMode:[I

    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$13;->$SwitchMap$com$sec$internal$ims$config$workflow$WorkflowBase$OpMode:[I

    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DORMANT:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method
