.class Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs$6;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "NetAPIWorkingStatusControllerMcs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;)V
    .locals 0

    .line 400
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs$6;->this$0:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 1

    .line 403
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs$6;->this$0:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onAvailable wifi"

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs$6;->this$0:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;

    const/4 p1, 0x1

    const/16 v0, 0x13

    invoke-static {p0, p1, v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->-$$Nest$msendNetworkChangeMsg(Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;ZI)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 1

    .line 409
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs$6;->this$0:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onLost wifi"

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs$6;->this$0:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;

    const/4 p1, 0x0

    const/16 v0, 0x13

    invoke-static {p0, p1, v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->-$$Nest$msendNetworkChangeMsg(Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;ZI)V

    return-void
.end method
