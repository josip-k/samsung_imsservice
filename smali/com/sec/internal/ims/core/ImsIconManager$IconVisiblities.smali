.class Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;
.super Ljava/lang/Object;
.source "ImsIconManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/ImsIconManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IconVisiblities"
.end annotation


# instance fields
.field mShowRcsIcon:Z

.field mShowVoWiFiIcon:Z

.field mShowVolteIcon:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(ZZZ)V
    .locals 0

    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 409
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->mShowVolteIcon:Z

    .line 410
    iput-boolean p2, p0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->mShowVoWiFiIcon:Z

    .line 411
    iput-boolean p3, p0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->mShowRcsIcon:Z

    return-void
.end method


# virtual methods
.method isShowRcsIcon()Z
    .locals 0

    .line 435
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->mShowRcsIcon:Z

    return p0
.end method

.method isShowVolteIcon()Z
    .locals 0

    .line 419
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->mShowVolteIcon:Z

    return p0
.end method

.method isShowVowiFiIcon()Z
    .locals 0

    .line 427
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->mShowVoWiFiIcon:Z

    return p0
.end method

.method setShowRcsIcon(Z)V
    .locals 0

    .line 431
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->mShowRcsIcon:Z

    return-void
.end method

.method setShowVoWiFiIcon(Z)V
    .locals 0

    .line 423
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->mShowVoWiFiIcon:Z

    return-void
.end method

.method setShowVolteIcon(Z)V
    .locals 0

    .line 415
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->mShowVolteIcon:Z

    return-void
.end method
