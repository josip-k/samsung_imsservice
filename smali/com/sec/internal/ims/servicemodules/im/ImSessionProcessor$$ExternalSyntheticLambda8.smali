.class public final synthetic Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor$$ExternalSyntheticLambda8;->f$0:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor$$ExternalSyntheticLambda8;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor$$ExternalSyntheticLambda8;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor$$ExternalSyntheticLambda8;->f$3:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor$$ExternalSyntheticLambda8;->f$0:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor$$ExternalSyntheticLambda8;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor$$ExternalSyntheticLambda8;->f$2:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor$$ExternalSyntheticLambda8;->f$3:Landroid/net/Uri;

    invoke-static {v0, v1, v2, p0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->$r8$lambda$Z8clO6N3i2Nkgk2GtX_usbSFGPU(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method
