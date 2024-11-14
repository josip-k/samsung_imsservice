.class public Lcom/sec/internal/ims/core/sim/SimManagerFactory;
.super Ljava/lang/Object;
.source "SimManagerFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/core/sim/SimManagerFactory$TelephonyCallbackListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SimManagerFactory"

.field public static final PHONE_ID_NON_EXISTING:I = -0x1

.field private static mADSChangeRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private static mContext:Landroid/content/Context;

.field private static mCreated:Z

.field private static mDefaultSimSubId:I

.field private static mIsMultiSimSupported:Z

.field private static mLooper:Landroid/os/Looper;

.field protected static mSubIdChangeRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field protected static mSubMan:Landroid/telephony/SubscriptionManager;

.field protected static mSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private static mTelephonyCallbackListener:Lcom/sec/internal/ims/core/sim/SimManagerFactory$TelephonyCallbackListener;

.field protected static volatile sSimManagerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/core/sim/SimManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$5MuZiqZmOEbGCbKDnbh36oSAp2o(ILcom/sec/internal/ims/core/sim/SimManager;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->lambda$getSimManagerFromSubId$5(ILcom/sec/internal/ims/core/sim/SimManager;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$D9dg_oHlZtKC_uGa29_jSjLX7As(I)Lcom/sec/internal/ims/core/sim/SimManager;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->lambda$getSimManagerFromSimSlot$4(I)Lcom/sec/internal/ims/core/sim/SimManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$P8T2c_Nw02u0efOYZILpB4QxuY8(Lcom/sec/internal/ims/core/sim/SimManager;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->lambda$getSimManager$1(Lcom/sec/internal/ims/core/sim/SimManager;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$PtQ-tpx91it6i2pRRCHNMgek_Vk(Landroid/telephony/TelephonyManager;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->lambda$initInstances$0(Landroid/telephony/TelephonyManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$REadceIdX3J8YwYu5-pLoJhRxDU(ILcom/sec/internal/ims/core/sim/SimManager;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->lambda$getSimManagerFromSimSlot$3(ILcom/sec/internal/ims/core/sim/SimManager;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Wk4bD0DqsfizthuVIAQx7L0x1yo(Ljava/lang/String;Lcom/sec/internal/ims/core/sim/SimManager;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->lambda$getPhoneId$8(Ljava/lang/String;Lcom/sec/internal/ims/core/sim/SimManager;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$df6ZTQz_Sq_vxzQotZ02H-bN_YY(ILcom/sec/internal/ims/core/sim/SimManager;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->lambda$getSimManagerFromSubId$6(ILcom/sec/internal/ims/core/sim/SimManager;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$iERsRTSYjszxXvM6EjzorOxvcWQ(I)Lcom/sec/internal/ims/core/sim/SimManager;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->lambda$getSimManagerFromSubId$7(I)Lcom/sec/internal/ims/core/sim/SimManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$kht13IBvB5sNTPnLrAbl5GR4P50()Lcom/sec/internal/ims/core/sim/SimManager;
    .locals 1

    .line 0
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->lambda$getSimManager$2()Lcom/sec/internal/ims/core/sim/SimManager;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smupdateActiveDataSubscription(I)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->updateActiveDataSubscription(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->sSimManagerList:Ljava/util/List;

    const/4 v0, 0x0

    .line 45
    sput-boolean v0, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mCreated:Z

    .line 47
    new-instance v1, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v1}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    sput-object v1, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mADSChangeRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 48
    new-instance v1, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v1}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    sput-object v1, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mSubIdChangeRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 50
    sput v0, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mDefaultSimSubId:I

    .line 51
    sput-boolean v0, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mIsMultiSimSupported:Z

    .line 55
    new-instance v0, Lcom/sec/internal/ims/core/sim/SimManagerFactory$TelephonyCallbackListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory$TelephonyCallbackListener;-><init>(Lcom/sec/internal/ims/core/sim/SimManagerFactory$TelephonyCallbackListener-IA;)V

    sput-object v0, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mTelephonyCallbackListener:Lcom/sec/internal/ims/core/sim/SimManagerFactory$TelephonyCallbackListener;

    .line 63
    new-instance v0, Lcom/sec/internal/ims/core/sim/SimManagerFactory$1;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory$1;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createInstance(Landroid/os/Looper;Landroid/content/Context;)V
    .locals 10

    .line 111
    sget-boolean v0, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mCreated:Z

    if-eqz v0, :cond_0

    return-void

    .line 115
    :cond_0
    sput-object p1, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mContext:Landroid/content/Context;

    .line 116
    sput-object p0, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mLooper:Landroid/os/Looper;

    const-string/jumbo p0, "telephony_subscription_service"

    .line 118
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionManager;

    sput-object p0, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mSubMan:Landroid/telephony/SubscriptionManager;

    .line 119
    invoke-static {p0}, Lcom/sec/internal/helper/SimUtil;->setSubMgr(Landroid/telephony/SubscriptionManager;)V

    .line 121
    sget-object p0, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getPhoneCount()I

    move-result p0

    .line 122
    invoke-static {p0}, Lcom/sec/internal/helper/SimUtil;->setPhoneCount(I)V

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "maxSimCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimManagerFactory"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-le p0, v2, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v0

    .line 125
    :goto_0
    sput-boolean v3, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mIsMultiSimSupported:Z

    .line 127
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveDataSubscriptionId()I

    move-result v3

    sput v3, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mDefaultSimSubId:I

    .line 128
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current default subId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mDefaultSimSubId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getConfigDualIMS = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getConfigDualIMS()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-ge v0, p0, :cond_2

    .line 134
    sget-object v1, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mSubMan:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v8

    .line 135
    sget-object v1, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->sSimManagerList:Ljava/util/List;

    new-instance v3, Lcom/sec/internal/ims/core/sim/SimManager;

    sget-object v5, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mLooper:Landroid/os/Looper;

    sget-object v6, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mContext:Landroid/content/Context;

    .line 136
    invoke-static {p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object v9

    move-object v4, v3

    move v7, v0

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/core/sim/SimManager;-><init>(Landroid/os/Looper;Landroid/content/Context;ILandroid/telephony/SubscriptionInfo;Lcom/sec/internal/helper/os/ITelephonyManager;)V

    .line 135
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 140
    :cond_2
    sput-boolean v2, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mCreated:Z

    return-void
.end method

.method public static dump()V
    .locals 2

    const-string v0, "SimManagerFactory"

    const-string v1, "Dump of SimManagerFactory:"

    .line 213
    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    sget-object v0, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->sSimManagerList:Ljava/util/List;

    new-instance v1, Lcom/sec/internal/ims/core/sim/SimManagerFactory$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory$$ExternalSyntheticLambda7;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static getAllSimManagers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/sec/internal/interfaces/ims/core/ISimManager;",
            ">;"
        }
    .end annotation

    .line 153
    sget-object v0, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->sSimManagerList:Ljava/util/List;

    return-object v0
.end method

.method public static getImsiFromPhoneId(I)Ljava/lang/String;
    .locals 1

    .line 242
    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/ims/core/sim/SimManagerFactory$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory$$ExternalSyntheticLambda14;-><init>()V

    .line 243
    invoke-virtual {p0, v0}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$$ExternalSyntheticLambda1;-><init>()V

    .line 244
    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    .line 245
    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getPhoneId(Ljava/lang/String;)I
    .locals 2

    .line 228
    sget-object v0, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->sSimManagerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/core/sim/SimManagerFactory$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory$$ExternalSyntheticLambda4;-><init>()V

    .line 229
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/core/sim/SimManagerFactory$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;)V

    .line 230
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 231
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/ims/core/sim/SimManagerFactory$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, -0x1

    .line 232
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static declared-synchronized getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;
    .locals 3

    const-class v0, Lcom/sec/internal/ims/core/sim/SimManagerFactory;

    monitor-enter v0

    .line 157
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->sSimManagerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/ims/core/sim/SimManagerFactory$$ExternalSyntheticLambda12;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/sim/SimManagerFactory$$ExternalSyntheticLambda12;-><init>()V

    .line 158
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 159
    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/ims/core/sim/SimManagerFactory$$ExternalSyntheticLambda13;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/sim/SimManagerFactory$$ExternalSyntheticLambda13;-><init>()V

    .line 160
    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;
    .locals 3

    const-class v0, Lcom/sec/internal/ims/core/sim/SimManagerFactory;

    monitor-enter v0

    .line 171
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->sSimManagerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/ims/core/sim/SimManagerFactory$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory$$ExternalSyntheticLambda8;-><init>(I)V

    .line 172
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 173
    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/ims/core/sim/SimManagerFactory$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory$$ExternalSyntheticLambda9;-><init>(I)V

    .line 174
    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/interfaces/ims/core/ISimManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getSimManagerFromSubId(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;
    .locals 3

    const-class v0, Lcom/sec/internal/ims/core/sim/SimManagerFactory;

    monitor-enter v0

    .line 181
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->sSimManagerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/ims/core/sim/SimManagerFactory$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory$$ExternalSyntheticLambda0;-><init>(I)V

    .line 182
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/ims/core/sim/SimManagerFactory$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory$$ExternalSyntheticLambda1;-><init>(I)V

    .line 183
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 184
    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/ims/core/sim/SimManagerFactory$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory$$ExternalSyntheticLambda2;-><init>(I)V

    .line 185
    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/interfaces/ims/core/ISimManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getSlotId(I)I
    .locals 3

    const/4 v0, -0x1

    if-gez p0, :cond_0

    const-string v1, "SimManagerFactory"

    const-string/jumbo v2, "subId is wrong"

    .line 258
    invoke-static {v1, p0, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return v0

    .line 262
    :cond_0
    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSubId(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v1, Lcom/sec/internal/ims/core/sim/SimManagerFactory$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory$$ExternalSyntheticLambda3;-><init>()V

    .line 263
    invoke-virtual {p0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    .line 264
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static initInstances()V
    .locals 3

    .line 144
    sget-object v0, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->sSimManagerList:Ljava/util/List;

    new-instance v1, Lcom/sec/internal/ims/core/sim/SimManagerFactory$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory$$ExternalSyntheticLambda10;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 146
    sget-object v0, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/core/sim/SimManagerFactory$$ExternalSyntheticLambda11;

    invoke-direct {v1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory$$ExternalSyntheticLambda11;-><init>()V

    .line 147
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 149
    sget-object v0, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mSubMan:Landroid/telephony/SubscriptionManager;

    sget-object v1, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Ljava/util/concurrent/Executor;Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    return-void
.end method

.method private static isActiveDataSubscriptionChanged(II)Z
    .locals 1

    .line 99
    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->isSubIdAndPhoneIdVaild(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->isSubIdOrPhoneIdChanged(II)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isOutboundSim(I)Z
    .locals 1

    .line 251
    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/ims/core/sim/SimManagerFactory$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory$$ExternalSyntheticLambda15;-><init>()V

    .line 252
    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    .line 253
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static isSubIdAndPhoneIdVaild(II)Z
    .locals 0

    if-ltz p1, :cond_0

    .line 103
    invoke-static {p0}, Lcom/sec/internal/helper/SimUtil;->isValidSimSlot(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isSubIdOrPhoneIdChanged(II)Z
    .locals 1

    .line 107
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    if-ne v0, p0, :cond_1

    sget p0, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mDefaultSimSubId:I

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static synthetic lambda$getPhoneId$8(Ljava/lang/String;Lcom/sec/internal/ims/core/sim/SimManager;)Z
    .locals 0

    .line 230
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/sim/SimManager;->getImsi()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getSimManager$1(Lcom/sec/internal/ims/core/sim/SimManager;)Z
    .locals 1

    .line 158
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimSlotIndex()I

    move-result p0

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$getSimManager$2()Lcom/sec/internal/ims/core/sim/SimManager;
    .locals 2

    .line 161
    sget-object v0, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->sSimManagerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v1, "SimManagerFactory"

    if-nez v0, :cond_0

    const-string v0, "Not matched. Return slot 0\'s."

    .line 162
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    sget-object v0, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->sSimManagerList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/sim/SimManager;

    return-object v0

    :cond_0
    const-string v0, "SimManager is not yet initiated!"

    .line 165
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method private static synthetic lambda$getSimManagerFromSimSlot$3(ILcom/sec/internal/ims/core/sim/SimManager;)Z
    .locals 0

    .line 172
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimSlotIndex()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$getSimManagerFromSimSlot$4(I)Lcom/sec/internal/ims/core/sim/SimManager;
    .locals 2

    const-string v0, "SimManagerFactory"

    const-string v1, "getSimManagerFromSimSlot, No matched ISimManager. Return null.."

    .line 175
    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic lambda$getSimManagerFromSubId$5(ILcom/sec/internal/ims/core/sim/SimManager;)Z
    .locals 0

    .line 182
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$getSimManagerFromSubId$6(ILcom/sec/internal/ims/core/sim/SimManager;)Z
    .locals 0

    .line 183
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/sim/SimManager;->hasNoSim()Z

    move-result p1

    if-eqz p1, :cond_1

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static synthetic lambda$getSimManagerFromSubId$7(I)Lcom/sec/internal/ims/core/sim/SimManager;
    .locals 2

    const-string v0, "SimManagerFactory"

    const-string v1, "getSimManagerFromSubId, No matched ISimManager. Return null.."

    .line 186
    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic lambda$initInstances$0(Landroid/telephony/TelephonyManager;)V
    .locals 2

    .line 147
    sget-object v0, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mTelephonyCallbackListener:Lcom/sec/internal/ims/core/sim/SimManagerFactory$TelephonyCallbackListener;

    invoke-virtual {p0, v0, v1}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    return-void
.end method

.method public static notifySubscriptionIdChanged(Landroid/telephony/SubscriptionInfo;)V
    .locals 1

    .line 218
    sget-object v0, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mSubIdChangeRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p0}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method public static registerForADSChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    .line 192
    sget-object v0, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mADSChangeRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v1, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public static registerForSubIdChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    .line 196
    sget-object v0, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mSubIdChangeRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v1, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method private static setActiveDataPhoneIdAndSubIdThenNotify(II)V
    .locals 0

    .line 204
    invoke-static {p0}, Lcom/sec/internal/helper/SimUtil;->setActiveDataPhoneId(I)V

    .line 205
    sput p1, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mDefaultSimSubId:I

    .line 207
    sget-boolean p0, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mIsMultiSimSupported:Z

    if-eqz p0, :cond_0

    .line 208
    sget-object p0, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mADSChangeRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants()V

    :cond_0
    return-void
.end method

.method public static unregisterForADSChange(Landroid/os/Handler;)V
    .locals 1

    .line 200
    sget-object v0, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mADSChangeRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p0}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method private static updateActiveDataSubscription(I)V
    .locals 3

    .line 91
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v0

    .line 92
    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->isActiveDataSubscriptionChanged(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateActiveDataSubscription: Data subscription changed: subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SimManagerFactory"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 94
    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->setActiveDataPhoneIdAndSubIdThenNotify(II)V

    :cond_0
    return-void
.end method

.method public static updateAdsSlot()V
    .locals 1

    .line 85
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveDataSubscriptionId()I

    move-result v0

    .line 86
    invoke-static {v0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->updateActiveDataSubscription(I)V

    return-void
.end method
