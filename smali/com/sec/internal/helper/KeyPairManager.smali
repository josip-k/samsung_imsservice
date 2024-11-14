.class public Lcom/sec/internal/helper/KeyPairManager;
.super Ljava/lang/Object;
.source "KeyPairManager.java"


# static fields
.field static final ALIAS_RCS_SIP_DIGEST_AUTH:Ljava/lang/String; = "rcs_sip_digest_auth"

.field static final PROVIDER_ANDROID_KEYSTORE:Ljava/lang/String; = "AndroidKeyStore"

.field static final SIGNATURE_ALGORITHM:Ljava/lang/String; = "SHA256withECDSA"

.field private static final TAG:Ljava/lang/String; = "KeyPairManager"


# instance fields
.field private mKeyPair:Ljava/security/KeyPair;


# direct methods
.method public static synthetic $r8$lambda$1WG5RgeOqDRhyj-tnYMinLSnSFU(Ljava/security/Key;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/helper/KeyPairManager;->lambda$hasPrivateKey$0(Ljava/security/Key;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$FmBz6_ntWd50I2G_NR3e_VikyH0(Lcom/sec/internal/helper/KeyPairManager;Ljava/security/KeyStore;)Ljava/security/Key;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/KeyPairManager;->getPrivateKey(Ljava/security/KeyStore;)Ljava/security/Key;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$KNdOXNtnCj-PrW-LYcIL4iMAjr8()Ljava/security/KeyPair;
    .locals 1

    .line 0
    invoke-static {}, Lcom/sec/internal/helper/KeyPairManager;->lambda$generateKeyPair$1()Ljava/security/KeyPair;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$M5VJnTqNGOeNin0OzJCZCP8I3Zk(Lcom/sec/internal/helper/KeyPairManager;Ljava/security/KeyStore;)Ljava/security/cert/Certificate;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/KeyPairManager;->getCertificate(Ljava/security/KeyStore;)Ljava/security/cert/Certificate;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$V6QptfiV9y4HLHy8W66R9oziwF4([B)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/helper/KeyPairManager;->lambda$getPublicKey$2([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$VV9aDiYjWA7HdBOlFk5X_RC4fsI(Lcom/sec/internal/helper/KeyPairManager;Ljava/security/KeyStore;)Ljava/security/KeyStore;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/KeyPairManager;->loadAndGet(Ljava/security/KeyStore;)Ljava/security/KeyStore;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$jIAa3N0F98K-PaAe-yQfQlzDiig(Lcom/sec/internal/helper/KeyPairManager;Ljava/security/KeyPairGenerator;)Ljava/security/KeyPairGenerator;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/KeyPairManager;->initAndGet(Ljava/security/KeyPairGenerator;)Ljava/security/KeyPairGenerator;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 3

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-direct {p0}, Lcom/sec/internal/helper/KeyPairManager;->hasPrivateKey()Z

    move-result v0

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyPairManager: hasKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyPairManager"

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 51
    invoke-direct {p0}, Lcom/sec/internal/helper/KeyPairManager;->retrieveGeneratedKey()V

    return-void

    .line 55
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/helper/KeyPairManager;->generateKeyPair()V

    return-void
.end method

.method private generateKeyPair()V
    .locals 2

    .line 117
    invoke-direct {p0}, Lcom/sec/internal/helper/KeyPairManager;->getKeyPairGenerator()Ljava/security/KeyPairGenerator;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/helper/KeyPairManager$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/sec/internal/helper/KeyPairManager$$ExternalSyntheticLambda7;-><init>()V

    .line 118
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/helper/KeyPairManager$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lcom/sec/internal/helper/KeyPairManager$$ExternalSyntheticLambda8;-><init>()V

    .line 119
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/KeyPair;

    iput-object v0, p0, Lcom/sec/internal/helper/KeyPairManager;->mKeyPair:Ljava/security/KeyPair;

    return-void
.end method

.method private getCertificate(Ljava/security/KeyStore;)Ljava/security/cert/Certificate;
    .locals 1

    :try_start_0
    const-string/jumbo p0, "rcs_sip_digest_auth"

    .line 109
    invoke-virtual {p1, p0}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 111
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getCertificate failed! "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyPairManager"

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private getKeyPairGenerator()Ljava/security/KeyPairGenerator;
    .locals 2

    :try_start_0
    const-string v0, "EC"

    const-string v1, "AndroidKeyStore"

    .line 127
    invoke-static {v0, v1}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/helper/KeyPairManager$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/sec/internal/helper/KeyPairManager$$ExternalSyntheticLambda9;-><init>(Lcom/sec/internal/helper/KeyPairManager;)V

    .line 128
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    .line 129
    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/KeyPairGenerator;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "generateKeyPair failed!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "KeyPairManager"

    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private getKeyStore()Ljava/security/KeyStore;
    .locals 2

    :try_start_0
    const-string v0, "AndroidKeyStore"

    .line 89
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/helper/KeyPairManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/sec/internal/helper/KeyPairManager$$ExternalSyntheticLambda2;-><init>(Lcom/sec/internal/helper/KeyPairManager;)V

    .line 90
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    .line 91
    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/KeyStore;
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getKeyStore: init failed! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "KeyPairManager"

    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private getPrivateKey(Ljava/security/KeyStore;)Ljava/security/Key;
    .locals 2

    const/4 p0, 0x0

    :try_start_0
    const-string/jumbo v0, "rcs_sip_digest_auth"

    .line 67
    invoke-virtual {p1, v0, p0}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPrivateKey failed! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KeyPairManager"

    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private hasPrivateKey()Z
    .locals 2

    .line 59
    invoke-direct {p0}, Lcom/sec/internal/helper/KeyPairManager;->getKeyStore()Ljava/security/KeyStore;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/helper/KeyPairManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/sec/internal/helper/KeyPairManager$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/helper/KeyPairManager;)V

    .line 60
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/helper/KeyPairManager$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/sec/internal/helper/KeyPairManager$$ExternalSyntheticLambda1;-><init>()V

    .line 61
    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    .line 62
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private initAndGet(Ljava/security/KeyPairGenerator;)Ljava/security/KeyPairGenerator;
    .locals 3

    .line 138
    :try_start_0
    new-instance p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const-string/jumbo v0, "rcs_sip_digest_auth"

    const/16 v1, 0xc

    invoke-direct {p0, v0, v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    new-instance v0, Ljava/security/spec/ECGenParameterSpec;

    const-string/jumbo v1, "secp256r1"

    invoke-direct {v0, v1}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0, v0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setAlgorithmParameterSpec(Ljava/security/spec/AlgorithmParameterSpec;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "SHA-256"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "SHA-384"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "SHA-512"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 142
    invoke-virtual {p0, v0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p0

    .line 143
    invoke-virtual {p0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object p0

    .line 138
    invoke-virtual {p1, p0}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "generateKeyPair failed!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "KeyPairManager"

    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method private static synthetic lambda$generateKeyPair$1()Ljava/security/KeyPair;
    .locals 2

    const-string v0, "KeyPairManager"

    const-string v1, "Failed to generate KeyPair!"

    .line 120
    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    new-instance v0, Ljava/security/KeyPair;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v0
.end method

.method private static synthetic lambda$getPublicKey$2([B)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    .line 158
    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$hasPrivateKey$0(Ljava/security/Key;)Ljava/lang/Boolean;
    .locals 0

    .line 61
    instance-of p0, p0, Ljava/security/PrivateKey;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private loadAndGet(Ljava/security/KeyStore;)Ljava/security/KeyStore;
    .locals 2

    const/4 p0, 0x0

    .line 100
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getKeyStore: load failed! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "KeyPairManager"

    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method private retrieveGeneratedKey()V
    .locals 4

    .line 75
    invoke-direct {p0}, Lcom/sec/internal/helper/KeyPairManager;->getKeyStore()Ljava/security/KeyStore;

    move-result-object v0

    .line 76
    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/helper/KeyPairManager$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/sec/internal/helper/KeyPairManager$$ExternalSyntheticLambda3;-><init>(Lcom/sec/internal/helper/KeyPairManager;)V

    .line 77
    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/helper/KeyPairManager$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/sec/internal/helper/KeyPairManager$$ExternalSyntheticLambda4;-><init>()V

    .line 78
    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    .line 79
    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/PublicKey;

    .line 80
    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v3, Lcom/sec/internal/helper/KeyPairManager$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/sec/internal/helper/KeyPairManager$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/helper/KeyPairManager;)V

    .line 81
    invoke-virtual {v0, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 82
    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Key;

    .line 84
    new-instance v2, Ljava/security/KeyPair;

    check-cast v0, Ljava/security/PrivateKey;

    invoke-direct {v2, v1, v0}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    iput-object v2, p0, Lcom/sec/internal/helper/KeyPairManager;->mKeyPair:Ljava/security/KeyPair;

    return-void
.end method


# virtual methods
.method getKeyPair()Ljava/security/KeyPair;
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/sec/internal/helper/KeyPairManager;->mKeyPair:Ljava/security/KeyPair;

    return-object p0
.end method

.method public getPublicKey()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object p0, p0, Lcom/sec/internal/helper/KeyPairManager;->mKeyPair:Ljava/security/KeyPair;

    invoke-virtual {p0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/helper/KeyPairManager$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/sec/internal/helper/KeyPairManager$$ExternalSyntheticLambda5;-><init>()V

    .line 157
    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/helper/KeyPairManager$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/sec/internal/helper/KeyPairManager$$ExternalSyntheticLambda6;-><init>()V

    .line 158
    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const-string v0, ""

    .line 159
    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public signWithPrivateKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "SHA256withECDSA"

    .line 164
    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 165
    iget-object p0, p0, Lcom/sec/internal/helper/KeyPairManager;->mKeyPair:Ljava/security/KeyPair;

    invoke-virtual {p0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 166
    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/Signature;->update([B)V

    .line 168
    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object p0

    const/4 p1, 0x2

    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 170
    invoke-virtual {p0}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    .line 171
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "signWithPrivateKey failed! "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyPairManager"

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    return-object p0
.end method
