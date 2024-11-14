.class public Lcom/sec/internal/ims/imsservice/CapabilityService;
.super Lcom/sec/internal/ims/imsservice/ImsServiceBase;
.source "CapabilityService.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CapabilityService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceBase;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string p1, "onBind:"

    const-string v0, "CapabilityService"

    .line 33
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-static {}, Lcom/sec/ims/extensions/Extensions$UserHandle;->myUserId()I

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "Do not allow bind on non-system user"

    .line 36
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 40
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceBase;->mBinder:Lcom/sec/ims/IImsService$Stub;

    check-cast p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    const-string/jumbo p1, "options"

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getBinder(Ljava/lang/String;)Landroid/os/Binder;

    move-result-object p0

    return-object p0
.end method

.method public onCreate()V
    .locals 1

    .line 27
    invoke-super {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceBase;->onCreate()V

    const-string p0, "CapabilityService"

    const-string v0, "onCreate"

    .line 28
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
