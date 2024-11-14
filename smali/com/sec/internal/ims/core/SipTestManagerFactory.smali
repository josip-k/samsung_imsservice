.class public Lcom/sec/internal/ims/core/SipTestManagerFactory;
.super Ljava/lang/Object;
.source "SipTestManagerFactory.java"


# static fields
.field private static mSipTestManager:Lcom/sec/internal/interfaces/ims/core/ISipTestManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createSipTestManager(Landroid/content/Context;)V
    .locals 3

    .line 18
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const-string/jumbo v1, "userdebug"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    const-string/jumbo v0, "persist.sip.test.enable"

    .line 20
    invoke-static {v0, v2}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_2

    .line 23
    :try_start_0
    new-instance v1, Lcom/sec/internal/ims/core/SipTestManager;

    invoke-direct {v1, p0, v0}, Lcom/sec/internal/ims/core/SipTestManager;-><init>(Landroid/content/Context;I)V

    sput-object v1, Lcom/sec/internal/ims/core/SipTestManagerFactory;->mSipTestManager:Lcom/sec/internal/interfaces/ims/core/ISipTestManager;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 25
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :cond_2
    :goto_2
    return-void
.end method

.method public static getSipTestManager()Lcom/sec/internal/interfaces/ims/core/ISipTestManager;
    .locals 1

    .line 15
    sget-object v0, Lcom/sec/internal/ims/core/SipTestManagerFactory;->mSipTestManager:Lcom/sec/internal/interfaces/ims/core/ISipTestManager;

    return-object v0
.end method

.method public static isSipTest()Z
    .locals 1

    .line 13
    sget-object v0, Lcom/sec/internal/ims/core/SipTestManagerFactory;->mSipTestManager:Lcom/sec/internal/interfaces/ims/core/ISipTestManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
