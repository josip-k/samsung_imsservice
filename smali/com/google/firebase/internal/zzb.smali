.class public final Lcom/google/firebase/internal/zzb;
.super Ljava/lang/Object;


# static fields
.field private static final zzmmz:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/firebase/internal/zzb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/google/firebase/internal/zzb;->zzmmz:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzfb(Landroid/content/Context;)Lcom/google/firebase/internal/zzb;
    .locals 2

    .line 0
    sget-object v0, Lcom/google/firebase/internal/zzb;->zzmmz:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/firebase/internal/zzb;

    invoke-direct {v1, p0}, Lcom/google/firebase/internal/zzb;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/internal/zzb;

    return-object p0
.end method

.method public static zzg(Lcom/google/firebase/FirebaseApp;)V
    .locals 0

    .line 0
    return-void
.end method
