.class public final Lcom/sec/internal/constants/ims/cmstore/ATTConstants$CommonHttpHeaders;
.super Ljava/lang/Object;
.source "ATTConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/cmstore/ATTConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CommonHttpHeaders"
.end annotation


# static fields
.field public static final CLIENT_ID:Ljava/lang/String; = "x-att-clientId"

.field public static final CLIENT_VERSION:Ljava/lang/String; = "x-att-clientVersion"

.field public static final CONTEXT_INFO:Ljava/lang/String; = "x-att-contextInfo"

.field public static final DEVICE_ID:Ljava/lang/String; = "x-att-deviceId"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
