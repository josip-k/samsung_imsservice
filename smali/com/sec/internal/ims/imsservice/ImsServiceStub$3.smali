.class Lcom/sec/internal/ims/imsservice/ImsServiceStub$3;
.super Landroid/content/BroadcastReceiver;
.source "ImsServiceStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/imsservice/ImsServiceStub;->registerFactoryResetReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/imsservice/ImsServiceStub;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)V
    .locals 0

    .line 382
    iput-object p1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$3;->this$0:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 385
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "received intent : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "com.samsung.intent.action.SETTINGS_SOFT_RESET"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.samsung.intent.action.SETTINGS_NETWORK_RESET"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const-string/jumbo p1, "subId"

    .line 394
    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    .line 395
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSlotId(I)I

    move-result p1

    .line 397
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$3;->this$0:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->-$$Nest$mfactoryReset(Lcom/sec/internal/ims/imsservice/ImsServiceStub;I)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 388
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$3;->this$0:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    invoke-virtual {v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getPhoneCount()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 389
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$3;->this$0:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->-$$Nest$mfactoryReset(Lcom/sec/internal/ims/imsservice/ImsServiceStub;I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 404
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$3;->this$0:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    invoke-static {p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->-$$Nest$fgetmWfcEpdgManager(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)Lcom/sec/internal/ims/core/WfcEpdgManager;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 405
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$3;->this$0:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    invoke-static {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->-$$Nest$fgetmWfcEpdgManager(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)Lcom/sec/internal/ims/core/WfcEpdgManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/WfcEpdgManager;->onResetSetting(Landroid/content/Intent;)V

    :cond_3
    return-void
.end method
