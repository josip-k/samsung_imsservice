.class public abstract Lcom/sec/internal/ims/core/handler/OptionsHandler;
.super Lcom/sec/internal/ims/core/handler/BaseHandler;
.source "OptionsHandler.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;


# direct methods
.method protected constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/BaseHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 56
    iget v0, p1, Landroid/os/Message;->what:I

    .line 58
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public registerForCmcOptionsEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public registerForOptionsEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public registerForP2pOptionsEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public requestCapabilityExchange(Lcom/sec/ims/util/ImsUri;JILjava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/ims/util/ImsUri;",
            "JI",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public requestSendCmcCheckMsg(IILjava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public setOwnCapabilities(JI)V
    .locals 0

    .line 0
    return-void
.end method
