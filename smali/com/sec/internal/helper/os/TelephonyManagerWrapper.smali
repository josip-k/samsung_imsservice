.class public Lcom/sec/internal/helper/os/TelephonyManagerWrapper;
.super Ljava/lang/Object;
.source "TelephonyManagerWrapper.java"

# interfaces
.implements Lcom/sec/internal/helper/os/ITelephonyManager;


# static fields
.field public static final DEFAULT_ID:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "TelephonyManagerWrapper"

.field private static volatile mInstance:Lcom/sec/internal/helper/os/TelephonyManagerWrapper;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeviceType:Ljava/lang/String;

.field private mGid1:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGid2:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mHomeDomain:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mImei:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mImpi:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mImpus:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mImsi:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOperatorCode:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTelephonyCallbackCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/telephony/TelephonyCallback;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$4aOanl4TiXGzXwfE6c4oflfrKVE(Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->lambda$filterOutInvertedImpu$1(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$68cYyEX6m7yoT0QUHVyLEqiLU28(I)[Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->lambda$filterOutInvertedImpu$2(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$p2GLDb4LIn_4dRj7F0cP6we1oxA(Lcom/sec/internal/helper/os/TelephonyManagerWrapper;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->lambda$filterOutInvertedImpu$0(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mImei:Landroid/util/SparseArray;

    .line 61
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mImsi:Landroid/util/SparseArray;

    .line 62
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mImpi:Landroid/util/SparseArray;

    .line 64
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mImpus:Landroid/util/SparseArray;

    .line 66
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mHomeDomain:Landroid/util/SparseArray;

    .line 68
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mOperatorCode:Landroid/util/SparseArray;

    .line 69
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mGid1:Landroid/util/SparseArray;

    .line 70
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mGid2:Landroid/util/SparseArray;

    const-string v0, ""

    .line 74
    iput-object v0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mDeviceType:Ljava/lang/String;

    .line 90
    iput-object p1, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mContext:Landroid/content/Context;

    .line 92
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mTelephonyCallbackCache:Ljava/util/Map;

    return-void
.end method

.method private extractNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 515
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    .line 516
    invoke-virtual {p0}, Ljava/net/URI;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string p1, "@"

    .line 517
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    .line 519
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private filterOutInverted(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "73603"

    .line 358
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    return-object p2

    .line 363
    :cond_0
    invoke-virtual {p0, p2}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->hasInvertedDomainFormat(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p2, ""

    :cond_1
    return-object p2
.end method

.method private filterOutInvertedImpu(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    const-string v0, "73603"

    .line 408
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    return-object p2

    .line 413
    :cond_0
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 414
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/helper/os/TelephonyManagerWrapper;)V

    .line 415
    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 416
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    new-instance p2, Lcom/sec/internal/helper/os/TelephonyManagerWrapper$$ExternalSyntheticLambda1;

    invoke-direct {p2, p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;)V

    .line 417
    invoke-interface {p0, p2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 419
    new-instance p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper$$ExternalSyntheticLambda2;

    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {p1, p0}, Ljava/util/List;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method private getCdmaMdn()Ljava/lang/String;
    .locals 0

    .line 682
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCdmaMdn()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getCdmaMdn(I)Ljava/lang/String;
    .locals 0

    .line 678
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getCdmaMdn(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;
    .locals 3

    const-class v0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;

    monitor-enter v0

    .line 77
    :try_start_0
    sget-object v1, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mInstance:Lcom/sec/internal/helper/os/TelephonyManagerWrapper;

    if-nez v1, :cond_1

    .line 78
    const-class v1, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 79
    :try_start_1
    sget-object v2, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mInstance:Lcom/sec/internal/helper/os/TelephonyManagerWrapper;

    if-nez v2, :cond_0

    .line 80
    new-instance v2, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;

    invoke-direct {v2, p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mInstance:Lcom/sec/internal/helper/os/TelephonyManagerWrapper;

    .line 82
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    .line 85
    :cond_1
    :goto_0
    sget-object p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mInstance:Lcom/sec/internal/helper/os/TelephonyManagerWrapper;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 1

    .line 96
    iget-object p0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method private getTelephonyManager(I)Landroid/telephony/TelephonyManager;
    .locals 1

    .line 100
    iget-object p0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 101
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    return-object p0
.end method

.method private isCmcSecondaryDevice()Z
    .locals 7

    .line 749
    iget-object v0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mDeviceType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const-string/jumbo v2, "sd"

    const-string v3, "TelephonyManagerWrapper"

    const/4 v4, 0x0

    if-nez v0, :cond_1

    .line 750
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPhoneCount: isCmcSecondaryDevice: cache "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mDeviceType:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    iget-object p0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mDeviceType:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v1

    :cond_0
    return v4

    .line 757
    :cond_1
    new-instance v0, Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-direct {v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;-><init>()V

    .line 758
    iget-object v5, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->init(Landroid/content/Context;)Z

    .line 759
    invoke-virtual {v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getOwnDeviceType()Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    move-result-object v5

    .line 760
    invoke-virtual {v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->deInit()V

    .line 761
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPhoneCount: isCmcSecondaryDevice: api: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    sget-object v0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;->DEVICE_TYPE_SD:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    if-ne v5, v0, :cond_2

    .line 763
    iput-object v2, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mDeviceType:Ljava/lang/String;

    return v1

    .line 765
    :cond_2
    sget-object v0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;->DEVICE_TYPE_PD:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    if-ne v5, v0, :cond_3

    const-string/jumbo v0, "pd"

    .line 766
    iput-object v0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mDeviceType:Ljava/lang/String;

    return v4

    .line 770
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mDeviceType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "ro.cmc.device_type"

    const-string v5, ""

    .line 771
    invoke-static {v0, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 772
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 773
    iput-object v0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mDeviceType:Ljava/lang/String;

    .line 774
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPhoneCount: isCmcSecondaryDevice: prop "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mDeviceType:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v1

    :cond_4
    return v4

    :cond_5
    const-string/jumbo v0, "unknown"

    .line 781
    iput-object v0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mDeviceType:Ljava/lang/String;

    :cond_6
    return v4
.end method

.method private isValidIsimMsisdn(I)Z
    .locals 5

    .line 500
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getIsimImpu(I)[Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    if-eqz p1, :cond_2

    .line 503
    array-length v1, p1

    if-eqz v1, :cond_2

    .line 504
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    if-eqz v3, :cond_1

    const-string v4, "+"

    .line 505
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "tel"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 506
    :cond_0
    invoke-direct {p0, v3}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->extractNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string p0, "+8200000000000"

    .line 511
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private synthetic lambda$filterOutInvertedImpu$0(Ljava/lang/String;)Z
    .locals 1

    .line 415
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->hasInvertedDomainFormat(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$filterOutInvertedImpu$1(Ljava/util/List;Ljava/lang/String;)V
    .locals 1

    .line 417
    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const-string v0, ""

    invoke-interface {p0, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static synthetic lambda$filterOutInvertedImpu$2(I)[Ljava/lang/String;
    .locals 0

    .line 419
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public checkCallControl(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 821
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object p2

    if-eqz p2, :cond_0

    .line 822
    array-length v0, p2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 823
    aget p2, p2, v0

    .line 824
    invoke-direct {p0, p2}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->checkCallControl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public clearCache()V
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mImei:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 212
    iget-object v0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mImsi:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 213
    iget-object v0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mImpi:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 214
    iget-object v0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mImpus:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 215
    iget-object v0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mHomeDomain:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 216
    iget-object v0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mOperatorCode:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 217
    iget-object v0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mGid1:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 218
    iget-object p0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mGid2:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public getAidForAppType(I)Ljava/lang/String;
    .locals 0

    .line 610
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getAidForAppType(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAidForAppType(II)Ljava/lang/String;
    .locals 0

    .line 615
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/telephony/TelephonyManager;->getAidForAppType(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAllCellInfo()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .line 639
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getAllCellInfoBySubId(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .line 644
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getAllCellInfoBySubId(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getApnOperatorCode(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 300
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const-string v0, ""

    if-eqz p0, :cond_0

    return-object v0

    .line 302
    :cond_0
    invoke-static {p2}, Lcom/sec/internal/helper/OmcCode;->getNWCode(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "LRA"

    .line 303
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ACG"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string v1, "gsm.apn.sim.operator.numeric"

    .line 305
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 306
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ","

    .line 307
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-ltz p2, :cond_2

    .line 308
    array-length v1, v0

    if-ge p2, v1, :cond_2

    aget-object v1, v0, p2

    if-eqz v1, :cond_2

    .line 309
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "for "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " use apnOperatorCode "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, v0, p2

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TelephonyManagerWrapper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    aget-object p0, v0, p2

    return-object p0

    :cond_2
    return-object p1
.end method

.method public getBtid(I)Ljava/lang/String;
    .locals 0

    .line 625
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getBtid()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCallState()I
    .locals 0

    .line 526
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result p0

    return p0
.end method

.method public getCallState(I)I
    .locals 2

    const/4 v0, 0x0

    .line 532
    :try_start_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object p1

    if-eqz p1, :cond_1

    .line 533
    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_0

    .line 536
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    aget p1, p1, v0

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_1
    :goto_0
    return v0
.end method

.method public getCurrentPhoneTypeForSlot(I)I
    .locals 0

    .line 545
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneTypeForSlot(I)I

    move-result p0

    return p0
.end method

.method public getDataNetworkType()I
    .locals 0

    .line 247
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result p0

    return p0
.end method

.method public getDataNetworkType(I)I
    .locals 0

    .line 252
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result p0

    return p0
.end method

.method public getDataServiceState(I)I
    .locals 0

    .line 590
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->semGetDataServiceState(I)I

    move-result p0

    return p0
.end method

.method public getDeviceSoftwareVersion(I)Ljava/lang/String;
    .locals 0

    .line 595
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEmcAttachAuth(I)Z
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 137
    fill-array-data v0, :array_0

    const/4 v1, 0x1

    new-array v2, v1, [B

    .line 149
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0, v0, v2}, Landroid/telephony/TelephonyManager;->invokeOemRilRequestRaw([B[B)I

    move-result p0

    const/4 p1, 0x0

    if-ne p0, v1, :cond_1

    aget-byte p0, v2, p1

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    return v1

    .line 153
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getEmcAttachAuth: get wrong response: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TelephonyManagerWrapper"

    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return p1

    :array_0
    .array-data 1
        0x2t
        -0x6ft
        0x0t
        0x4t
    .end array-data
.end method

.method public getEmergencyNumberList()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;>;"
        }
    .end annotation

    .line 815
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getEmergencyNumberList()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getGid2(I)Ljava/lang/String;
    .locals 2

    .line 573
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getGroupIdLevel2(I)Ljava/lang/String;

    move-result-object v0

    .line 575
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 576
    iget-object v1, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mGid2:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 578
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "backup gid2 : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mGid2:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TelephonyManagerWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mGid2:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getGroupIdLevel1()Ljava/lang/String;
    .locals 3

    .line 550
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v0

    .line 551
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    .line 552
    iget-object v1, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mGid1:Landroid/util/SparseArray;

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 554
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "backup gid1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mGid1:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TelephonyManagerWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mGid1:Landroid/util/SparseArray;

    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getGroupIdLevel1(I)Ljava/lang/String;
    .locals 2

    .line 562
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1(I)Ljava/lang/String;

    move-result-object v0

    .line 563
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 564
    iget-object v1, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mGid1:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 566
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "backup gid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mGid1:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TelephonyManagerWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mGid1:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getIccAuthentication(IIILjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 291
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0, p2, p3, p4}, Landroid/telephony/TelephonyManager;->getIccAuthentication(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getImei()Ljava/lang/String;
    .locals 0

    .line 687
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getImei()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getImei(I)Ljava/lang/String;
    .locals 0

    .line 692
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIsimDomain()Ljava/lang/String;
    .locals 4

    .line 714
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getIsimDomain()Ljava/lang/String;

    move-result-object v0

    .line 716
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    .line 717
    iget-object v1, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mHomeDomain:Landroid/util/SparseArray;

    invoke-virtual {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getSimOperator()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->filterOutInverted(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 719
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "backup domain : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mHomeDomain:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TelephonyManagerWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mHomeDomain:Landroid/util/SparseArray;

    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getIsimDomain(I)Ljava/lang/String;
    .locals 3

    .line 376
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getIsimDomain()Ljava/lang/String;

    move-result-object v0

    .line 377
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 378
    iget-object v1, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mHomeDomain:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getSimOperator(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->filterOutInverted(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 380
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "backup domain: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mHomeDomain:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TelephonyManagerWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mHomeDomain:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getIsimImpi(I)Ljava/lang/String;
    .locals 3

    .line 347
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getIsimImpi()Ljava/lang/String;

    move-result-object v0

    .line 348
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 349
    iget-object v1, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mImpi:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getSimOperator(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->filterOutInverted(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 351
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "backup impi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mImpi:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TelephonyManagerWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mImpi:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getIsimImpu(I)[Ljava/lang/String;
    .locals 3

    .line 397
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getIsimImpu()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 398
    array-length v1, v0

    if-lez v1, :cond_0

    .line 399
    iget-object v1, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mImpus:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getSimOperator(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->filterOutInvertedImpu(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 401
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "backup impu: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mImpus:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TelephonyManagerWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mImpus:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getIsimImpuAtIndex(II)Ljava/lang/String;
    .locals 0

    .line 388
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getIsimImpu(I)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 390
    array-length p1, p0

    if-le p1, p2, :cond_0

    .line 391
    aget-object p0, p0, p2

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getIsimPcscf()[Ljava/lang/String;
    .locals 0

    .line 585
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getIsimPcscf()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKeyLifetime(I)Ljava/lang/String;
    .locals 0

    .line 630
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getKeyLifetime()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 0

    .line 424
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLine1Number(I)Ljava/lang/String;
    .locals 0

    .line 429
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMeid(I)Ljava/lang/String;
    .locals 0

    .line 709
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getMeid(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 0

    .line 674
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getMsisdn()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMsisdn(I)Ljava/lang/String;
    .locals 0

    .line 166
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getMsisdn(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNetworkCountryIso()Ljava/lang/String;
    .locals 0

    .line 191
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNetworkCountryIso(I)Ljava/lang/String;
    .locals 0

    .line 196
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNetworkOperator(I)Ljava/lang/String;
    .locals 0

    .line 181
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNetworkOperatorForPhone(I)Ljava/lang/String;
    .locals 0

    .line 186
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNetworkType()I
    .locals 0

    .line 257
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result p0

    return p0
.end method

.method public getNextRetryTime()J
    .locals 2

    .line 855
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNextRetryTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPhoneCount()I
    .locals 1

    .line 262
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 263
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->isCmcSecondaryDevice()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getPreferredNetworkType(I)I
    .locals 0

    .line 669
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getPreferredNetworkType(I)I

    move-result p0

    return p0
.end method

.method public getPrimaryImei()Ljava/lang/String;
    .locals 2

    .line 699
    :try_start_0
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPrimaryImei()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 702
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPrimaryImei: Failed. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TelephonyManagerWrapper"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    return-object p0
.end method

.method public getRand(I)[B
    .locals 0

    .line 620
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getRand()[B

    move-result-object p0

    return-object p0
.end method

.method public getRilSimOperator(I)Ljava/lang/String;
    .locals 2

    .line 738
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    const-string/jumbo p0, "ril.simoperator"

    const-string v0, "ETC"

    invoke-static {p1, p0, v0}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 739
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRilSimOperator: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TelephonyManagerWrapper"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-object p0
.end method

.method public getServiceState()I
    .locals 0

    .line 228
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 230
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getState()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getServiceState(I)Landroid/telephony/ServiceState;
    .locals 0

    .line 223
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getServiceStateForSubscriber(I)Landroid/telephony/ServiceState;

    move-result-object p0

    return-object p0
.end method

.method public getServiceStateForSubscriber(I)I
    .locals 0

    .line 237
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 239
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getState()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getSimCountryIso()Ljava/lang/String;
    .locals 0

    .line 649
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSimCountryIsoForPhone(I)Ljava/lang/String;
    .locals 0

    .line 659
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    invoke-static {p1}, Landroid/telephony/TelephonyManager;->getSimCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSimCountryIsoForSubId(I)Ljava/lang/String;
    .locals 0

    .line 654
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSimOperator()Ljava/lang/String;
    .locals 4

    .line 319
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 320
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    .line 321
    iget-object v1, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mOperatorCode:Landroid/util/SparseArray;

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 323
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "backup operatorCode : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TelephonyManagerWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mOperatorCode:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneIdFromTelephony()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getApnOperatorCode(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSimOperator(I)Ljava/lang/String;
    .locals 3

    .line 332
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    .line 333
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 334
    iget-object v1, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mOperatorCode:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 336
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "backup operatorCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TelephonyManagerWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :goto_0
    invoke-static {p1}, Lcom/sec/ims/extensions/Extensions$SubscriptionManager;->getSlotId(I)I

    move-result v0

    .line 341
    iget-object v1, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mOperatorCode:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 342
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneIdFromTelephony()I

    move-result v0

    .line 341
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getApnOperatorCode(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSimOperatorName(I)Ljava/lang/String;
    .locals 0

    .line 745
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSimSerialNumber()Ljava/lang/String;
    .locals 0

    .line 470
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSimSerialNumber(I)Ljava/lang/String;
    .locals 0

    .line 475
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSimState()I
    .locals 0

    .line 271
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result p0

    return p0
.end method

.method public getSimState(I)I
    .locals 0

    .line 276
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result p0

    return p0
.end method

.method public getSubscriberId(I)Ljava/lang/String;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    .line 435
    invoke-static {p1}, Lcom/sec/ims/extensions/Extensions$SubscriptionManager;->getSlotId(I)I

    move-result v0

    const-string/jumbo v1, "ril.simoperator"

    const-string v2, "ETC"

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CTC"

    .line 438
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 439
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getSubscriberIdForUiccAppType(II)Ljava/lang/String;

    move-result-object v0

    .line 440
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 445
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 446
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 447
    iget-object v1, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mImsi:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 449
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "backup imsi : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mImsi:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TelephonyManagerWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mImsi:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getSubscriberIdForUiccAppType(II)Ljava/lang/String;
    .locals 1

    .line 457
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/telephony/TelephonyManager;->getSubscriberIdForUiccAppType(II)Ljava/lang/String;

    move-result-object p2

    .line 459
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mImsi:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 462
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "backup imsi : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mImsi:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "TelephonyManagerWrapper"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mImsi:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 732
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    invoke-static {p1, p2, p3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVoiceNetworkType()I
    .locals 0

    .line 201
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result p0

    return p0
.end method

.method public getVoiceNetworkType(I)I
    .locals 0

    .line 206
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result p0

    return p0
.end method

.method public hasCall(Ljava/lang/String;)Z
    .locals 0

    .line 794
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->hasCall(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected hasInvertedDomainFormat(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "ims\\.mcc\\d+\\.mnc\\d+\\.3gppnetwork\\.org"

    .line 369
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    .line 370
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 371
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    return p0
.end method

.method public iccCloseLogicalChannel(II)Z
    .locals 0

    .line 810
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/telephony/TelephonyManager;->iccCloseLogicalChannel(II)Z

    move-result p0

    return p0
.end method

.method public iccOpenLogicalChannelAndGetChannel(ILjava/lang/String;)I
    .locals 1

    .line 799
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, p1, p2, v0}, Landroid/telephony/TelephonyManager;->iccOpenLogicalChannel(ILjava/lang/String;I)Landroid/telephony/IccOpenLogicalChannelResponse;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/IccOpenLogicalChannelResponse;->getChannel()I

    move-result p0

    return p0
.end method

.method public iccTransmitApduLogicalChannel(IIIIIIILjava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 804
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Landroid/telephony/TelephonyManager;->iccTransmitApduLogicalChannel(IIIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isGbaSupported()Z
    .locals 0

    .line 281
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isGbaSupported()Z

    move-result p0

    return p0
.end method

.method public isGbaSupported(I)Z
    .locals 0

    .line 286
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->isGbaSupported(I)Z

    move-result p0

    return p0
.end method

.method public isNetworkRoaming()Z
    .locals 0

    .line 171
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result p0

    return p0
.end method

.method public isNetworkRoaming(I)Z
    .locals 0

    .line 176
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result p0

    return p0
.end method

.method public isVoiceCapable()Z
    .locals 0

    .line 789
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result p0

    return p0
.end method

.method public registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V
    .locals 1

    .line 106
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    .line 107
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->registerTelephonyCallbackForSlot(ILjava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    return-void
.end method

.method public registerTelephonyCallbackForSlot(ILjava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V
    .locals 4

    .line 112
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    move-result v0

    .line 113
    iget-object v1, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mTelephonyCallbackCache:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    const/4 v2, -0x1

    .line 114
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 116
    iget-object v1, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mTelephonyCallbackCache:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    invoke-virtual {p0, p1, p3}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->unregisterTelephonyCallbackForSlot(ILandroid/telephony/TelephonyCallback;)V

    .line 120
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mTelephonyCallbackCache:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    invoke-direct {p0, v0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    return-void
.end method

.method public semGetDataState(I)I
    .locals 0

    .line 832
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->semGetDataState(I)I

    move-result p0

    return p0
.end method

.method public semGetNrMode(I)I
    .locals 2

    .line 843
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semGetNrMode: phoneId :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TelephonyManagerWrapper"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object p1

    const/4 v0, 0x0

    aget p1, p1, v0

    .line 845
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->semGetNrMode()I

    move-result p0

    return p0
.end method

.method public semGetTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 850
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    invoke-static {p1, p2, p3}, Landroid/telephony/TelephonyManager;->semGetTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public semIsVoNrEnabled(I)Z
    .locals 2

    .line 860
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semIsVoNrEnabled: phoneId :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TelephonyManagerWrapper"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object p1

    const/4 v0, 0x0

    aget p1, p1, v0

    .line 862
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->semIsVoNrEnabled()Z

    move-result p0

    return p0
.end method

.method public semSetNrMode(II)V
    .locals 2

    .line 837
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semSetNrMode: phoneId :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,mode :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TelephonyManagerWrapper"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/telephony/TelephonyManager;->semSetNrMode(IIZ)Z

    return-void
.end method

.method public sendRawRequestToTelephony(Landroid/content/Context;[B)V
    .locals 0

    const/4 p1, 0x4

    new-array p1, p1, [B

    .line 161
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0, p2, p1}, Landroid/telephony/TelephonyManager;->invokeOemRilRequestRaw([B[B)I

    return-void
.end method

.method public setCallState(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public setGbaBootstrappingParams(I[BLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 605
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0, p2, p3, p4}, Landroid/telephony/TelephonyManager;->setGbaBootstrappingParams([BLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setGbaBootstrappingParams([BLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 600
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Landroid/telephony/TelephonyManager;->setGbaBootstrappingParams([BLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPreferredNetworkType(II)Z
    .locals 0

    .line 664
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/telephony/TelephonyManager;->setPreferredNetworkType(II)Z

    move-result p0

    return p0
.end method

.method public setRadioPower(Z)V
    .locals 0

    .line 727
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->setRadioPower(Z)Z

    return-void
.end method

.method public unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V
    .locals 1

    .line 126
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    .line 127
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->unregisterTelephonyCallbackForSlot(ILandroid/telephony/TelephonyCallback;)V

    return-void
.end method

.method public unregisterTelephonyCallbackForSlot(ILandroid/telephony/TelephonyCallback;)V
    .locals 0

    .line 132
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    return-void
.end method

.method public validateMsisdn(I)Z
    .locals 4

    .line 480
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getMsisdn(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "TelephonyManagerWrapper"

    if-eqz v0, :cond_0

    const-string p0, "empty msisdn"

    .line 481
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const-string v0, "0000000000"

    .line 485
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getCdmaMdn(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "empty mdn"

    .line 486
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 491
    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->isValidIsimMsisdn(I)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "empty iSimMsisdn"

    .line 492
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method
