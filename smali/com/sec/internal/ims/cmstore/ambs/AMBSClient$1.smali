.class Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;
.super Lcom/sec/ims/ICentralMsgStoreService$Stub;
.source "AMBSClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-direct {p0}, Lcom/sec/ims/ICentralMsgStoreService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 138
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelMessage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public createParticipant(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 362
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createParticipant "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " chatId: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->createParticipant(Ljava/lang/String;)V

    return-void
.end method

.method public createSession(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 355
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createSession "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " chatId: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->createSession(Ljava/lang/String;)V

    return-void
.end method

.method public deleteMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$misValidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 146
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->deleteMessageJson(Ljava/lang/String;)V

    goto :goto_0

    .line 148
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$mlogInvalidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)V

    :goto_0
    return-void
.end method

.method public deleteOldLegacyMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 322
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteOldLegacyMessage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " thread:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public deleteParticipant(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 376
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteParticipant "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " chatId: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->deleteParticipant(Ljava/lang/String;)V

    return-void
.end method

.method public deleteSession(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 369
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteSession "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " chatId: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->deleteSession(Ljava/lang/String;)V

    return-void
.end method

.method public disableAutoSync(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 496
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "disableAutoSync: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public downloadMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloadMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$misValidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 169
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->downloadMessageJson(Ljava/lang/String;)V

    goto :goto_0

    .line 171
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$mlogInvalidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)V

    :goto_0
    return-void
.end method

.method public enableAutoSync(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 491
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "enableAutoSync: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getAccount(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public getRestartScreenName(Ljava/lang/String;)I
    .locals 1

    .line 512
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getRestartScreenName"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->getClientID()I

    move-result p1

    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 514
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$misValidSim(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->getCmsIsAccountServicePause()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 518
    :cond_0
    sget-object p0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->RestartMenu_Enable_PrmptMsg15:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p0

    return p0

    .line 515
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "AMBS Paused, notify 116"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    sget-object p0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->RestartMenu_Disable_PrmptMsg16:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p0

    return p0
.end method

.method public getSd(IZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public manageSd(IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public manualSync(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 484
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "manualSync: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " jsonSummary: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setImpuFromImsRegistration(Ljava/lang/String;)V

    return-void
.end method

.method public notifyCloudMessageUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 349
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyCloudMessageUpdate, apptype: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " msgType: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " rowIDs: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public notifyUIScreen(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public onBufferDBReadResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBufferDBReadResult: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " msgType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " bufferRowID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " appMessageId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " syncAction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isSuccess: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 246
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p6, :cond_0

    .line 248
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmSlotID(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->add(Ljava/lang/String;ILjava/lang/String;)V

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$misValidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 252
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getIsInitSyncIndicatorRequired()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 253
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-gez p1, :cond_1

    .line 256
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "rowID < 0"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->hideIndicator()V

    return-void

    .line 262
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object v0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onBufferDBReadResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_0

    .line 265
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "ignore"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onBufferDBReadResultBatch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBufferDBReadResultBatch "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$misValidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 275
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->bufferDbReadBatchMessageJson(Ljava/lang/String;)V

    goto :goto_0

    .line 277
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$mlogInvalidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)V

    :goto_0
    return-void
.end method

.method public onDefaultSmsPackageChanged()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public onDeregistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public onFTUriResponse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 502
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFtUriResponse "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$misValidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 504
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onFtUriResponseJson(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 506
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$mlogInvalidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)V

    :goto_0
    return-void
.end method

.method public onRCSDBReady(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 383
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRCSDBReady: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "cms_profile_event"

    .line 401
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "sim_status"

    .line 403
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 405
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eventType ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " simStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "SimRemoved"

    .line 411
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "non_pop_up"

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 412
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setCmsProfileEnabled(Z)V

    .line 413
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmJanskyTranslation(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;

    move-result-object p0

    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->AMBS_SERVICE_DISABLE:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-virtual {p0, p1, v2, v3}, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->onNotifyMessageAppUI(ILjava/lang/String;I)V

    return-void

    :cond_0
    const-string v1, "SimReady"

    .line 418
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "CmsProfileDisable"

    .line 419
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 421
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmsc(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->isSimChanged(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 422
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->clearAll()V

    :cond_1
    const-string v0, "CmsProfileEnable"

    .line 426
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 428
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object p1

    .line 429
    sget-object v0, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 430
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "inserted card is not a ATT or TMO card"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmJanskyTranslation(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;

    move-result-object p0

    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->AMBS_SERVICE_DISABLE:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-virtual {p0, p1, v2, v3}, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->onNotifyMessageAppUI(ILjava/lang/String;I)V

    return-void

    .line 435
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmsc(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->isSimChanged(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Z

    move-result v0

    .line 437
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMS Account Service Stopped/Paused by server  Stop: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v5}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object v5

    .line 438
    invoke-virtual {v5}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->getCmsIsAccountServiceStop()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " Pause: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v5}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object v5

    .line 439
    invoke-virtual {v5}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->getCmsIsAccountServicePause()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " Mno: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " isSimChanged: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 437
    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    sget-object v1, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->supportSignedBinary()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object v1

    .line 443
    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->getCmsIsAccountServiceStop()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 444
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmJanskyTranslation(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;

    move-result-object p0

    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->AMBS_SERVICE_DISABLE:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-virtual {p0, p1, v2, v3}, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->onNotifyMessageAppUI(ILjava/lang/String;I)V

    return-void

    .line 449
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->getCmsProfileEnabled()Z

    move-result v1

    if-nez v1, :cond_4

    .line 451
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmJanskyTranslation(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->AMBS_SERVICE_ENABLE:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v5

    invoke-virtual {v4, v5, v2, v3}, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->onNotifyMessageAppUI(ILjava/lang/String;I)V

    .line 453
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v4, p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$mresetParams(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;Lcom/sec/internal/constants/Mno;)V

    .line 454
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setCmsProfileEnabled(Z)V

    .line 455
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onRCSDbReady()V

    .line 458
    :cond_4
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-virtual {v4}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->needToHandleSimSwap()Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz v0, :cond_5

    .line 460
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->onRestartService()V

    .line 463
    :cond_5
    sget-object v4, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    if-eqz v0, :cond_6

    const-string/jumbo v0, "ro.product.first_api_level"

    .line 464
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v4, 0x21

    if-le v0, v4, :cond_6

    if-eqz v1, :cond_6

    .line 466
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TMO Esim hotswap"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$mresetParams(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;Lcom/sec/internal/constants/Mno;)V

    .line 468
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->onEsimHotswap()V

    .line 469
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onRCSDbReady()V

    .line 472
    :cond_6
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->supportSignedBinary()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    .line 473
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->getCmsIsAccountServiceStop()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object p1

    .line 474
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->getCmsIsAccountServicePause()Z

    move-result p1

    if-nez p1, :cond_8

    .line 475
    :cond_7
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmJanskyTranslation(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;

    move-result-object p0

    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->RestartMenu_Enable_PrmptMsg15:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-virtual {p0, p1, v2, v3}, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->onNotifyMessageAppUI(ILjava/lang/String;I)V

    :cond_8
    return-void

    .line 407
    :catch_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Json parsing exception"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRegistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public onUIButtonProceed(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUIButtonProceed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " screenName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,message"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$misValidSim(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 228
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->EligibilityError_ErrMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    const-string p2, "non_pop_up"

    invoke-virtual {p0, p1, p2, v1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->notifyAppUIScreen(ILjava/lang/String;I)V

    return v1

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    const/4 v2, 0x1

    invoke-static {v0, p1, v2}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$misValidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 231
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->onUIButtonProceed(ILjava/lang/String;)Z

    move-result p0

    return p0

    .line 233
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$mlogInvalidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)V

    return v1
.end method

.method public onUserEnterApp(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUserEnterApp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$misValidSim(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 202
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->EligibilityError_ErrMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    const-string v0, "non_pop_up"

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->notifyAppUIScreen(ILjava/lang/String;I)V

    goto :goto_0

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0, p1, v1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$misValidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setMsgAppForegroundStatus(Z)V

    .line 205
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onReturnAppFetchingFailedMsg(Ljava/lang/String;)V

    goto :goto_0

    .line 207
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$mlogInvalidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)V

    :goto_0
    return-void
.end method

.method public onUserLeaveApp(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUserLeaveApp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$misValidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 215
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setMsgAppForegroundStatus(Z)V

    goto :goto_0

    .line 217
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$mlogInvalidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)V

    :goto_0
    return-void
.end method

.method public readMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "readMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$misValidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->readMessageJson(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$mlogInvalidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)V

    :goto_0
    return-void
.end method

.method public receivedMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "receivedMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$misValidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 97
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->receivedMessageJson(Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$mlogInvalidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)V

    :goto_0
    return-void
.end method

.method public registerCallback(Ljava/lang/String;Lcom/sec/ims/ICentralMsgStoreService;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 284
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "registerCallback "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public registerCmsProvisioningListenerByPhoneId(Lcom/sec/ims/ICentralMsgStoreServiceListener;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public requestMessageProcess(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 177
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestMessageProcess "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " function: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public requestOperation(IILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 182
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "requestOperation "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " operation: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public restartService(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 332
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "restartService "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->isCmsProfileActive()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 335
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->onRestartService()V

    goto :goto_0

    .line 337
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$mlogInvalidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)V

    :goto_0
    return-void
.end method

.method public resumeSync(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 327
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resumeSync "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public sendTryDeregisterCms(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public sendTryRegisterCms(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public sentMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sentMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$misValidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 108
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->sentMessageJson(Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$mlogInvalidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)V

    :goto_0
    return-void
.end method

.method public startContactSyncActivity(IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public startDeltaSync(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 311
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startDeltaSync : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$misValidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->startDeltaSync(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 315
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$mlogInvalidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)V

    :goto_0
    return-void
.end method

.method public startFullSync(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 300
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startFullSync "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$misValidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->startFullSync(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 305
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$mlogInvalidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)V

    :goto_0
    return-void
.end method

.method public stopSync(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 289
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopSync "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$misValidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->stopSync(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 294
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$mlogInvalidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)V

    :goto_0
    return-void
.end method

.method public unReadMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unReadMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$misValidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 130
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->unReadMessageJson(Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$mlogInvalidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)V

    :goto_0
    return-void
.end method

.method public unregisterCmsProvisioningListenerByPhoneId(Lcom/sec/ims/ICentralMsgStoreServiceListener;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public updateAccountInfo(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public uploadMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uploadMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$misValidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 157
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->uploadMessageJson(Ljava/lang/String;)V

    goto :goto_0

    .line 159
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$mlogInvalidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)V

    :goto_0
    return-void
.end method

.method public wipeOutMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wipeOutMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$misValidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 191
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->resetVVMPendingRequestCount()V

    .line 192
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->wipeOutMessageJson(Ljava/lang/String;)V

    goto :goto_0

    .line 194
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$mlogInvalidAppType(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)V

    :goto_0
    return-void
.end method
