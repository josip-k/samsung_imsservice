.class public final Lcom/sec/internal/constants/ims/config/ConfigConstants$NetworkType;
.super Ljava/lang/Object;
.source "ConfigConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/config/ConfigConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NetworkType"
.end annotation


# static fields
.field public static final IMS:I = 0x2

.field public static final MOBILE:I = 0x1

.field public static final NONE:I = 0x0

.field public static final WIFI:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 611
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
