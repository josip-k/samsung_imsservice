.class Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;
.super Lcom/sec/ims/ICentralMsgStoreService$Stub;
.source "MCSClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/cmstore/mcs/MCSClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-direct {p0}, Lcom/sec/ims/ICentralMsgStoreService$Stub;-><init>()V

    return-void
.end method

.method private isValidAppType(Ljava/lang/String;Z)Z
    .locals 0

    if-eqz p2, :cond_0

    .line 225
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->isCmsProfileActive()Z

    move-result p0

    goto :goto_0

    .line 226
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->getCmsProfileEnabled()Z

    move-result p0

    :goto_0
    const/4 p2, 0x0

    if-eqz p0, :cond_2

    const-string p0, "MessageApp"

    .line 229
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "RCSDATA"

    .line 230
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "VVMDATA"

    .line 231
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p2, 0x1

    :cond_2
    return p2
.end method

.method private logInvalidAppType()V
    .locals 2

    .line 238
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result p0

    const-string v1, "invalid apptype "

    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public cancelMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelMessage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x1

    .line 146
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->isValidAppType(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->cancelMessageJson(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 149
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->logInvalidAppType()V

    :goto_0
    return-void
.end method

.method public createParticipant(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 307
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createParticipant "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " chatId: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 308
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->createParticipant(Ljava/lang/String;)V

    return-void
.end method

.method public createSession(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 301
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createSession "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " chatId: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 302
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->createSession(Ljava/lang/String;)V

    return-void
.end method

.method public deleteMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteMessage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x1

    .line 157
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->isValidAppType(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 158
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->deleteMessageJson(Ljava/lang/String;)V

    goto :goto_0

    .line 160
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->logInvalidAppType()V

    :goto_0
    return-void
.end method

.method public deleteOldLegacyMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public deleteParticipant(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public deleteSession(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public disableAutoSync(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public downloadMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downloadMessage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x1

    .line 180
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->isValidAppType(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 181
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->downloadMessageJson(Ljava/lang/String;)V

    goto :goto_0

    .line 183
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->logInvalidAppType()V

    :goto_0
    return-void
.end method

.method public enableAutoSync(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public getAccount(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 458
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 459
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result p0

    const-string/jumbo v0, "phoneid is not matched. ignore"

    invoke-static {p1, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 462
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v0

    const-string v1, "getAccount"

    invoke-static {p1, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 463
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public getRestartScreenName(Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getSd(IZLjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 445
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 446
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result p0

    const-string/jumbo p2, "phoneid is not matched. ignore"

    invoke-static {p1, p0, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 449
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSd getAll : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 450
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "getAll"

    .line 451
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p2, "info"

    .line 452
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    const/4 p2, 0x3

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public manageSd(IILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 435
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 436
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result p0

    const-string/jumbo p2, "phoneid is not matched. ignore"

    invoke-static {p1, p0, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 439
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "manageSd type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 440
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    const/4 p1, 0x2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public manualSync(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public notifyCloudMessageUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
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

    .line 260
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

    .line 263
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x1

    .line 265
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->isValidAppType(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 266
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getIsInitSyncIndicatorRequired()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 267
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-gez p1, :cond_0

    .line 270
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p2}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result p2

    const-string/jumbo p3, "rowID < 0"

    invoke-static {p1, p2, p3}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 271
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->hideIndicator()V

    return-void

    .line 276
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object v0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onBufferDBReadResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_0

    .line 279
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result p0

    const-string p2, "onBufferDBReadResult ignore"

    invoke-static {p1, p0, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onBufferDBReadResultBatch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public onDefaultSmsPackageChanged()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 493
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmProvisionWorkflow(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->onDefaultSmsPackageChanged()V

    .line 494
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmContext(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->isDefaultMessageAppInUse(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v1

    const-string v2, "msg app is not Samsung Messages"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 496
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmMcsContactSync(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 497
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->setProvisionStatus(Z)V

    return-void

    .line 500
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v1

    const-string v2, "onDefaultSmsPackageChanged"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAdd(Ljava/lang/String;ILjava/lang/String;)V

    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",PV:DMA CH"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, -0x6ffcffff

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 502
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmCloudMessagePreferenceManager(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getMcsUser()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 503
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method public onDeregistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 517
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDeregistered "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 518
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->hasRcsService()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p1

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 519
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmContext(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->RCS_USER_SETTING1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/sec/internal/helper/DmConfigHelper;->getImsUserSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_0

    .line 520
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmContext(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->isMcsSupported(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 521
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v0

    const-string v1, "It is RCS OFF, so try deregister MCS service"

    invoke-static {p1, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 522
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public onFTUriResponse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 392
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFtUriResponse "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x0

    .line 393
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->isValidAppType(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onFtUriResponseJson(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 396
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->logInvalidAppType()V

    :goto_0
    return-void
.end method

.method public onRCSDBReady(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 320
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v1

    const-string v2, "onRCSDBReady"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 325
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "cms_profile_event"

    .line 326
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "sim_status"

    .line 328
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 330
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "eventType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", simStatus = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "SimRemoved"

    .line 336
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v1, -0x6ffcfff9

    if-eqz v0, :cond_0

    .line 337
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v0

    const-string v2, "SIM removed"

    invoke-static {p1, v0, v2}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAdd(Ljava/lang/String;ILjava/lang/String;)V

    .line 338
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",PV:SIM RM"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 339
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->setCmsProfileEnabled(Z)V

    .line 340
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->setProvisionStatus(Z)V

    .line 341
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmProvisionWorkflow(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->clearWorkflow()V

    return-void

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmsc(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->isSimChanged(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 346
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v2

    const-string v3, "SIM changed"

    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAdd(Ljava/lang/String;ILjava/lang/String;)V

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",PV:SIM CH"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmsc(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getSimImsi()Ljava/lang/String;

    move-result-object v0

    .line 349
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 350
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->clearData(Ljava/lang/String;)V

    goto :goto_0

    .line 352
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->clearData()V

    .line 354
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmProvisionWorkflow(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->clearData()V

    :cond_2
    const-string v0, "CmsProfileEnable"

    .line 357
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 358
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v0

    const-string v2, "CMS profile enabled"

    invoke-static {p1, v0, v2}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAdd(Ljava/lang/String;ILjava/lang/String;)V

    .line 359
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",PV:CMS EN"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 360
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->setCmsProfileEnabled(Z)V

    .line 361
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$mstartProvisioning(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)V

    .line 362
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onRCSDbReady()V

    :cond_3
    return-void

    .line 332
    :catch_0
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result p0

    const-string v0, "Json parsing exception"

    invoke-static {p1, p0, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public onRegistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 509
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRegistered "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 510
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->hasRcsService()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p1

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->getProvisionStatus()Z

    move-result p1

    if-nez p1, :cond_0

    .line 511
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$mstartProvisioning(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)V

    :cond_0
    return-void
.end method

.method public onUIButtonProceed(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public onUserEnterApp(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public onUserLeaveApp(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public readMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readMessage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x1

    .line 124
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->isValidAppType(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->readMessageJson(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->logInvalidAppType()V

    :goto_0
    return-void
.end method

.method public receivedMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "receivedMessage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x1

    .line 102
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->isValidAppType(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 103
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->receivedMessageJson(Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->logInvalidAppType()V

    :goto_0
    return-void
.end method

.method public registerCallback(Ljava/lang/String;Lcom/sec/ims/ICentralMsgStoreService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public registerCmsProvisioningListenerByPhoneId(Lcom/sec/ims/ICentralMsgStoreServiceListener;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 529
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v0

    if-eq v0, p2, :cond_0

    .line 530
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result p0

    const-string/jumbo p2, "registerCmsProvisioningListenerByPhoneId phoneid is not matched. ignore"

    invoke-static {p1, p0, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 533
    :cond_0
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p2}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v0

    const-string/jumbo v1, "registerCmsProvisioningListener from app"

    invoke-static {p2, v0, v1}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAdd(Ljava/lang/String;ILjava/lang/String;)V

    .line 534
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->registerCmsProvisioningListener(Lcom/sec/ims/ICentralMsgStoreServiceListener;Z)V

    return-void
.end method

.method public requestMessageProcess(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    .line 189
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestMessageProcess "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " function: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 190
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->isCmsProfileActive()Z

    move-result p1

    if-eqz p1, :cond_4

    if-eqz p3, :cond_3

    const/4 p1, 0x1

    if-eq p3, p1, :cond_2

    const/4 p1, 0x2

    if-eq p3, p1, :cond_1

    const/4 p1, 0x3

    if-eq p3, p1, :cond_0

    goto :goto_0

    .line 199
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->spamMessageList(Ljava/lang/String;)V

    goto :goto_0

    .line 202
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->acceptedGroupChatList(Ljava/lang/String;)V

    goto :goto_0

    .line 196
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->starredMessageList(Ljava/lang/String;)V

    goto :goto_0

    .line 193
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->unStarredMessageList(Ljava/lang/String;)V

    goto :goto_0

    .line 208
    :cond_4
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->logInvalidAppType()V

    :goto_0
    return-void
.end method

.method public requestOperation(IILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 214
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getNmsHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 215
    iget-object p3, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p3}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestOperation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v0, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 217
    iget-object p3, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p3}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;

    move-result-object p3

    invoke-virtual {p3}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->isCmsProfileActive()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 218
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmAppRequestHandler(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/AppRequestHandler;

    move-result-object p0

    invoke-virtual {p0, p4, p1, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/AppRequestHandler;->processAppRequest(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 220
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result p0

    const-string p2, "Cms Profile is inactive"

    invoke-static {p1, p0, p2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public restartService(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public resumeSync(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public sendTryDeregisterCms(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 424
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 425
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result p0

    const-string/jumbo v0, "phoneid is not matched. ignore"

    invoke-static {p1, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 428
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v0

    const-string/jumbo v1, "sendTryDeregisterCms"

    invoke-static {p1, v0, v1}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAdd(Ljava/lang/String;ILjava/lang/String;)V

    .line 429
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",PV:TRY DEREGI"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const v0, -0x6ffcfffe

    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 430
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public sendTryRegisterCms(ILjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 406
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 407
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result p0

    const-string/jumbo p2, "phoneid is not matched. ignore"

    invoke-static {p1, p0, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 410
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmContext(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->RCS_USER_SETTING1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/sec/internal/helper/DmConfigHelper;->getImsUserSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 411
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmContext(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v1

    invoke-static {p1, v1}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->isMcsSupported(Landroid/content/Context;I)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 417
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendTryRegisterCms consent_context "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAdd(Ljava/lang/String;ILjava/lang/String;)V

    .line 418
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",PV:TRY REGI"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const v1, -0x6ffcffff

    invoke-static {v1, p1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 419
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-virtual {p0, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 412
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p2}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result p2

    const-string v1, "Registration is not allowed in non RCS user"

    invoke-static {p1, p2, v1}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAdd(Ljava/lang/String;ILjava/lang/String;)V

    .line 413
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmProvisionWorkflow(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    move-result-object p0

    const/4 p1, 0x2

    const/4 p2, 0x0

    const/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->notifyMcsProvisionListener(IIILjava/lang/Object;)V

    return-void
.end method

.method public sentMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sentMessage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x1

    .line 113
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->isValidAppType(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 114
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->sentMessageJson(Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->logInvalidAppType()V

    :goto_0
    return-void
.end method

.method public startContactSyncActivity(IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 478
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startContactSyncActivity: initialSync: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 479
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 480
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p2, "phoneId is not matched. ignore"

    invoke-static {p0, p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 485
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmMcsContactSync(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmMcsContactSync(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;

    move-result-object p0

    const/4 p2, 0x1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 487
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmMcsContactSync(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmMcsContactSync(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;

    move-result-object p0

    const/4 p2, 0x2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method public startDeltaSync(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public startFullSync(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public stopSync(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public unReadMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unReadMessage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x1

    .line 135
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->isValidAppType(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 136
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->unReadMessageJson(Ljava/lang/String;)V

    goto :goto_0

    .line 138
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->logInvalidAppType()V

    :goto_0
    return-void
.end method

.method public unregisterCmsProvisioningListenerByPhoneId(Lcom/sec/ims/ICentralMsgStoreServiceListener;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 539
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v0

    if-eq v0, p2, :cond_0

    .line 540
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result p0

    const-string/jumbo p2, "unregisterCmsProvisioningListenerByPhoneId phoneid is not matched. ignore"

    invoke-static {p1, p0, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 543
    :cond_0
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p2}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v0

    const-string/jumbo v1, "unregisterCmsProvisioningListener from app"

    invoke-static {p2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 544
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->unregisterCmsProvisioningListener(Lcom/sec/ims/ICentralMsgStoreServiceListener;)V

    return-void
.end method

.method public updateAccountInfo(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 468
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 469
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result p0

    const-string/jumbo p2, "phoneid is not matched. ignore"

    invoke-static {p1, p0, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 472
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v0

    const-string/jumbo v1, "updateAccountInfo"

    invoke-static {p1, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 473
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    const/4 p1, 0x5

    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public uploadMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "uploadMessage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x1

    .line 168
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->isValidAppType(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 169
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->uploadMessageJson(Ljava/lang/String;)V

    goto :goto_0

    .line 171
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;->logInvalidAppType()V

    :goto_0
    return-void
.end method

.method public wipeOutMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method
