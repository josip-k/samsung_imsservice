.class public final Lcom/sec/internal/constants/ims/servicemodules/im/ImContract$MessageNotification;
.super Ljava/lang/Object;
.source "ImContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/servicemodules/im/ImContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MessageNotification"
.end annotation


# static fields
.field public static final ID:Ljava/lang/String; = "id"

.field public static final IMDN_ID:Ljava/lang/String; = "imdn_id"

.field public static final MESSAGE_ID:Ljava/lang/String; = "message_id"

.field public static final SENDER_URI:Ljava/lang/String; = "sender_uri"

.field public static final STATUS:Ljava/lang/String; = "status"

.field public static final TIMESTAMP:Ljava/lang/String; = "timestamp"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
