.class public final synthetic Lcom/sec/internal/helper/KeyPairManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/helper/KeyPairManager;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/helper/KeyPairManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/helper/KeyPairManager$$ExternalSyntheticLambda0;->f$0:Lcom/sec/internal/helper/KeyPairManager;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/helper/KeyPairManager$$ExternalSyntheticLambda0;->f$0:Lcom/sec/internal/helper/KeyPairManager;

    check-cast p1, Ljava/security/KeyStore;

    invoke-static {p0, p1}, Lcom/sec/internal/helper/KeyPairManager;->$r8$lambda$FmBz6_ntWd50I2G_NR3e_VikyH0(Lcom/sec/internal/helper/KeyPairManager;Ljava/security/KeyStore;)Ljava/security/Key;

    move-result-object p0

    return-object p0
.end method
