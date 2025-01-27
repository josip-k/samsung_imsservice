.class public Lcom/sec/internal/ims/cmstore/CmsModule;
.super Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
.source "CmsModule.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/cmstore/ICmsModule;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static mCloudMessageServiceWrappers:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLooper:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const-class v0, Lcom/sec/internal/ims/cmstore/CmsModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/CmsModule;->LOG_TAG:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/cmstore/CmsModule;->mCloudMessageServiceWrappers:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;-><init>(Landroid/os/Looper;)V

    .line 34
    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/CmsModule;->mContext:Landroid/content/Context;

    .line 35
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/CmsModule;->mLooper:Landroid/os/Looper;

    return-void
.end method

.method public static getCMSServiceByPhoneID(I)Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 157
    :goto_0
    sget-object v2, Lcom/sec/internal/ims/cmstore/CmsModule;->mCloudMessageServiceWrappers:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    if-ne v1, p0, :cond_0

    .line 159
    sget-object v0, Lcom/sec/internal/ims/cmstore/CmsModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "phoneID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    sget-object v0, Lcom/sec/internal/ims/cmstore/CmsModule;->mCloudMessageServiceWrappers:Ljava/util/Hashtable;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 163
    :cond_1
    sget-object p0, Lcom/sec/internal/ims/cmstore/CmsModule;->mCloudMessageServiceWrappers:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    return-object p0
.end method


# virtual methods
.method public getServicesRequiring()[Ljava/lang/String;
    .locals 4

    const-string p0, "ft"

    const-string v0, "ft_http"

    const-string v1, "cms"

    const-string v2, "im"

    const-string/jumbo v3, "slm"

    .line 40
    filled-new-array {v1, v2, v3, p0, v0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public handleEventDefaultAppChanged()V
    .locals 3

    .line 168
    sget-object p0, Lcom/sec/internal/ims/cmstore/CmsModule;->LOG_TAG:Ljava/lang/String;

    const-string v0, "onDefaultSmsPackageChanged"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 171
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v0

    if-ge p0, v0, :cond_1

    .line 172
    sget-object v0, Lcom/sec/internal/ims/cmstore/CmsModule;->mCloudMessageServiceWrappers:Ljava/util/Hashtable;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 173
    sget-object v0, Lcom/sec/internal/ims/cmstore/CmsModule;->mCloudMessageServiceWrappers:Ljava/util/Hashtable;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->onDefaultSmsPackageChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 177
    sget-object v0, Lcom/sec/internal/ims/cmstore/CmsModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRCSDbReady: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    return-void
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .locals 0

    .line 51
    sget-object p0, Lcom/sec/internal/ims/cmstore/CmsModule;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleIntent"

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 56
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->handleMessage(Landroid/os/Message;)V

    .line 57
    iget p0, p1, Landroid/os/Message;->what:I

    return-void
.end method

.method public init()V
    .locals 8

    .line 72
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->init()V

    .line 73
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 76
    sget-object v3, Lcom/sec/internal/ims/cmstore/CmsModule;->mCloudMessageServiceWrappers:Ljava/util/Hashtable;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/CmsModule;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/CmsModule;->mLooper:Landroid/os/Looper;

    invoke-direct {v5, v1, v6, v7}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;-><init>(ILandroid/content/Context;Landroid/os/Looper;)V

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    invoke-static {v1}, Lcom/sec/internal/ims/util/ImsUtil;->isMcsSupported(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 80
    sget-object p0, Lcom/sec/internal/ims/cmstore/CmsModule;->LOG_TAG:Ljava/lang/String;

    const-string v0, "init: registerFcmEventListener"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getFcmHandler()Lcom/sec/internal/ims/fcm/interfaces/IFcmHandler;

    move-result-object p0

    invoke-static {}, Lcom/sec/internal/ims/fcm/receiver/McsFcmEventListener;->getInstance()Lcom/sec/internal/ims/fcm/receiver/McsFcmEventListener;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/sec/internal/ims/fcm/interfaces/IFcmHandler;->registerFcmEventListener(Lcom/sec/internal/ims/fcm/interfaces/IFcmEventListener;)V

    :cond_2
    return-void
.end method

.method public onConfigured(I)V
    .locals 0

    .line 138
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onConfigured(I)V

    .line 139
    sget-object p0, Lcom/sec/internal/ims/cmstore/CmsModule;->LOG_TAG:Ljava/lang/String;

    const-string p1, "onConfigured"

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDeregistered(Lcom/sec/ims/ImsRegistration;I)V
    .locals 1

    if-nez p1, :cond_0

    .line 117
    sget-object p0, Lcom/sec/internal/ims/cmstore/CmsModule;->LOG_TAG:Ljava/lang/String;

    const-string p1, "onDeregistered, null regiInfo"

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 120
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onDeregistered(Lcom/sec/ims/ImsRegistration;I)V

    .line 122
    :try_start_0
    sget-object p0, Lcom/sec/internal/ims/cmstore/CmsModule;->LOG_TAG:Ljava/lang/String;

    const-string p2, "onDeregistered"

    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p0

    if-ltz p0, :cond_1

    .line 124
    sget-object p2, Lcom/sec/internal/ims/cmstore/CmsModule;->mCloudMessageServiceWrappers:Ljava/util/Hashtable;

    invoke-virtual {p2}, Ljava/util/Hashtable;->size()I

    move-result p2

    if-ge p0, p2, :cond_1

    .line 125
    sget-object p2, Lcom/sec/internal/ims/cmstore/CmsModule;->mCloudMessageServiceWrappers:Ljava/util/Hashtable;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    if-eqz p0, :cond_1

    .line 127
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->onImsDeregistered(Lcom/sec/ims/ImsRegistration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 131
    sget-object p1, Lcom/sec/internal/ims/cmstore/CmsModule;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onDeregistered: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onRegistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 93
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPreferredImpu()Lcom/sec/ims/util/NameAddr;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 94
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPreferredImpu()Lcom/sec/ims/util/NameAddr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 98
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onRegistered(Lcom/sec/ims/ImsRegistration;)V

    .line 100
    :try_start_0
    sget-object p0, Lcom/sec/internal/ims/cmstore/CmsModule;->LOG_TAG:Ljava/lang/String;

    const-string v0, "onRegistered"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p0

    if-ltz p0, :cond_1

    .line 102
    sget-object v0, Lcom/sec/internal/ims/cmstore/CmsModule;->mCloudMessageServiceWrappers:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-ge p0, v0, :cond_1

    .line 103
    sget-object v0, Lcom/sec/internal/ims/cmstore/CmsModule;->mCloudMessageServiceWrappers:Ljava/util/Hashtable;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    if-eqz p0, :cond_1

    .line 105
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->onImsRegistered(Lcom/sec/ims/ImsRegistration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 109
    sget-object p1, Lcom/sec/internal/ims/cmstore/CmsModule;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRegistered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void

    .line 95
    :cond_2
    :goto_1
    sget-object p0, Lcom/sec/internal/ims/cmstore/CmsModule;->LOG_TAG:Ljava/lang/String;

    const-string p1, "onRegistered, null regiInfo"

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public start()V
    .locals 1

    .line 65
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->start()V

    .line 66
    sget-object p0, Lcom/sec/internal/ims/cmstore/CmsModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "start CmsModule"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public stop()V
    .locals 1

    .line 87
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->stop()V

    .line 88
    sget-object p0, Lcom/sec/internal/ims/cmstore/CmsModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "stop"

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
