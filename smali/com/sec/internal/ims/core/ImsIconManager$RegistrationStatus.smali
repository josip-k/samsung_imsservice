.class Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;
.super Ljava/lang/Object;
.source "ImsIconManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/ImsIconManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RegistrationStatus"
.end annotation


# instance fields
.field mCmcRegistered:Z

.field mCrossSimRegistered:Z

.field mIsRcsNetworkSuspended:Z

.field mRcsRegistered:Z

.field mVolteRegistered:Z

.field mVowifiRegistered:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 448
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(ZZZ)V
    .locals 0

    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 452
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->mVolteRegistered:Z

    .line 453
    iput-boolean p2, p0, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->mRcsRegistered:Z

    .line 454
    iput-boolean p3, p0, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->mVowifiRegistered:Z

    return-void
.end method


# virtual methods
.method isAllRegistered()Z
    .locals 1

    .line 506
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isVolteRegistered()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isVowifiRegistered()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isRcsRegistered()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isCmcRegistered()Z
    .locals 0

    .line 502
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->mCmcRegistered:Z

    return p0
.end method

.method isCrossSimRegistered()Z
    .locals 0

    .line 470
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->mCrossSimRegistered:Z

    return p0
.end method

.method public isRcsNetworkSuspended()Z
    .locals 0

    .line 486
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->mIsRcsNetworkSuspended:Z

    return p0
.end method

.method isRcsRegistered()Z
    .locals 0

    .line 478
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->mRcsRegistered:Z

    return p0
.end method

.method isVolteRegistered()Z
    .locals 0

    .line 462
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->mVolteRegistered:Z

    return p0
.end method

.method isVowifiRegistered()Z
    .locals 0

    .line 494
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->mVowifiRegistered:Z

    return p0
.end method

.method setCmcRegistered(Z)V
    .locals 0

    .line 498
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->mCmcRegistered:Z

    return-void
.end method

.method setCrossSimRegistered(Z)V
    .locals 0

    .line 466
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->mCrossSimRegistered:Z

    return-void
.end method

.method public setRcsNetworkSuspended(Z)V
    .locals 0

    .line 482
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->mIsRcsNetworkSuspended:Z

    return-void
.end method

.method setRcsRegistered(Z)V
    .locals 0

    .line 474
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->mRcsRegistered:Z

    return-void
.end method

.method setVolteRegistered(Z)V
    .locals 0

    .line 458
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->mVolteRegistered:Z

    return-void
.end method

.method setVowifiRegistered(Z)V
    .locals 0

    .line 490
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->mVowifiRegistered:Z

    return-void
.end method
