.class Lcom/sec/internal/imsphone/ImsCallSessionEventListener$1;
.super Landroid/os/Handler;
.source "ImsCallSessionEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->handleSilentRetry(Lcom/sec/internal/constants/Mno;IILjava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/imsphone/ImsCallSessionEventListener;


# direct methods
.method constructor <init>(Lcom/sec/internal/imsphone/ImsCallSessionEventListener;Landroid/os/Looper;)V
    .locals 0

    .line 685
    iput-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener$1;->this$0:Lcom/sec/internal/imsphone/ImsCallSessionEventListener;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 688
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v0, "ImsCallSessionEventListener"

    const-string v1, "Received Event "

    .line 691
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener$1;->this$0:Lcom/sec/internal/imsphone/ImsCallSessionEventListener;

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-interface {p0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatingFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method
