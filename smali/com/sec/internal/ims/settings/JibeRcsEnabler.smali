.class public Lcom/sec/internal/ims/settings/JibeRcsEnabler;
.super Ljava/lang/Object;
.source "JibeRcsEnabler.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/ISequentialInitializable;


# static fields
.field private static final JSON_KEY_GLOBALSETTING:Ljava/lang/String; = "globalsetting"

.field private static final JSON_KEY_GLOBALSETTINGS_UPDATE:Ljava/lang/String; = "globalsettings_update"

.field private static final JSON_KEY_IMSPROFILE_UPDATE:Ljava/lang/String; = "imsprofile_update"

.field private static final JSON_KEY_MNONAME:Ljava/lang/String; = "mnoname"

.field private static final JSON_KEY_PROFILE:Ljava/lang/String; = "profile"

.field private static final LOG_TAG:Ljava/lang/String; = "JibeRcsEnabler"

.field private static sJibeUpdates:Lcom/google/gson/JsonElement;

.field protected static final sJibeUpdatesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected mHasPrivilegedSamsungMessage:Z


# direct methods
.method public static synthetic $r8$lambda$1gQHBNipjmdw03aq94q-WwOXy3s(Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonElement;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/settings/JibeRcsEnabler;->lambda$fetchJibeUpdates$0(Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonElement;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$EmnDQxla7An1W_bDqlVPt_YLHo8(Lcom/sec/internal/ims/settings/JibeRcsEnabler;Ljava/lang/String;Lcom/google/gson/JsonArray;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/settings/JibeRcsEnabler;->lambda$hasJibeImsProfileUpdate$5(Ljava/lang/String;Lcom/google/gson/JsonArray;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$FMuOT132xlzq7s9WdJZ2EuFs6PM(Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonElement;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/settings/JibeRcsEnabler;->lambda$hasJibeImsProfileUpdate$4(Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonElement;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$PINe3xL-j9NTBX22b1sDvnJIQ8g(Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonElement;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/settings/JibeRcsEnabler;->lambda$hasMatchedUpdate$8(Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonElement;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$_nKz4DtHMpzzL4sDismet2B02oI(Lcom/google/gson/JsonObject;Lcom/google/gson/JsonElement;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/ims/settings/JibeRcsEnabler;->lambda$fetchJibeUpdates$3(Lcom/google/gson/JsonObject;Lcom/google/gson/JsonElement;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jy81BZdAArKK6rNcOIRJvLjOCkY(Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonElement;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/settings/JibeRcsEnabler;->lambda$fetchJibeUpdates$2(Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonElement;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$uX3kvpu571P0eFYGTZduYBYL2Nc(Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonElement;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/settings/JibeRcsEnabler;->lambda$hasJibeGlobalSettingUpdate$6(Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonElement;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$wcuTxIERPKfy8T27wpa8hjHSscE(Lcom/google/gson/JsonObject;Lcom/google/gson/JsonElement;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/ims/settings/JibeRcsEnabler;->lambda$fetchJibeUpdates$1(Lcom/google/gson/JsonObject;Lcom/google/gson/JsonElement;)V

    return-void
.end method

.method public static synthetic $r8$lambda$z_y3lk-ZUxv8Vsqzwt0Suli7438(Lcom/sec/internal/ims/settings/JibeRcsEnabler;Ljava/lang/String;Lcom/google/gson/JsonArray;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/settings/JibeRcsEnabler;->lambda$hasJibeGlobalSettingUpdate$7(Ljava/lang/String;Lcom/google/gson/JsonArray;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/settings/JibeRcsEnabler;->sJibeUpdatesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/sec/internal/ims/settings/JibeRcsEnabler;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.messaging"

    .line 53
    invoke-static {p1, v0}, Lcom/sec/internal/helper/os/PackageUtils;->hasPrivilegedPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/internal/ims/settings/JibeRcsEnabler;->mHasPrivilegedSamsungMessage:Z

    return-void
.end method

.method private fetchJibeUpdates()Lcom/google/gson/JsonElement;
    .locals 3

    .line 102
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const v1, 0x7f060009

    .line 104
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/settings/JibeRcsEnabler;->loadJibeResource(I)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/ims/settings/JibeRcsEnabler$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/sec/internal/ims/settings/JibeRcsEnabler$$ExternalSyntheticLambda0;-><init>()V

    .line 105
    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/ims/settings/JibeRcsEnabler$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/sec/internal/ims/settings/JibeRcsEnabler$$ExternalSyntheticLambda4;-><init>()V

    .line 106
    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/ims/settings/JibeRcsEnabler$$ExternalSyntheticLambda5;

    invoke-direct {v2, v0}, Lcom/sec/internal/ims/settings/JibeRcsEnabler$$ExternalSyntheticLambda5;-><init>(Lcom/google/gson/JsonObject;)V

    .line 107
    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const v1, 0x7f060007

    .line 112
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/settings/JibeRcsEnabler;->loadJibeResource(I)Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v1, Lcom/sec/internal/ims/settings/JibeRcsEnabler$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/sec/internal/ims/settings/JibeRcsEnabler$$ExternalSyntheticLambda0;-><init>()V

    .line 113
    invoke-virtual {p0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v1, Lcom/sec/internal/ims/settings/JibeRcsEnabler$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/sec/internal/ims/settings/JibeRcsEnabler$$ExternalSyntheticLambda6;-><init>()V

    .line 114
    invoke-virtual {p0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v1, Lcom/sec/internal/ims/settings/JibeRcsEnabler$$ExternalSyntheticLambda7;

    invoke-direct {v1, v0}, Lcom/sec/internal/ims/settings/JibeRcsEnabler$$ExternalSyntheticLambda7;-><init>(Lcom/google/gson/JsonObject;)V

    .line 115
    invoke-virtual {p0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method private declared-synchronized fetchJibeUpdatesIfNecessary()V
    .locals 2

    monitor-enter p0

    .line 90
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/settings/JibeRcsEnabler;->sJibeUpdates:Lcom/google/gson/JsonElement;

    if-nez v0, :cond_0

    const-string v0, "JibeRcsEnabler"

    const-string v1, "fetchJibeUpdatesIfNecessary: Fetch Jibe updates now."

    .line 91
    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    sget-object v0, Lcom/sec/internal/ims/settings/JibeRcsEnabler;->sJibeUpdatesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 93
    invoke-direct {p0}, Lcom/sec/internal/ims/settings/JibeRcsEnabler;->fetchJibeUpdates()Lcom/google/gson/JsonElement;

    move-result-object v1

    sput-object v1, Lcom/sec/internal/ims/settings/JibeRcsEnabler;->sJibeUpdates:Lcom/google/gson/JsonElement;

    .line 94
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_0

    :cond_0
    const-string v0, "JibeRcsEnabler"

    const-string v1, "fetchJibeUpdatesIfNecessary: Use fetched updates."

    .line 96
    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private hasJibeGlobalSettingUpdate(Ljava/lang/String;)Z
    .locals 2

    .line 171
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/JibeRcsEnabler;->getJibeUpdatesLocked()Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    const-string v1, "globalsettings_update"

    .line 172
    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/settings/JibeRcsEnabler$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/sec/internal/ims/settings/JibeRcsEnabler$$ExternalSyntheticLambda0;-><init>()V

    .line 173
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/settings/JibeRcsEnabler$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/sec/internal/ims/settings/JibeRcsEnabler$$ExternalSyntheticLambda1;-><init>()V

    .line 174
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/settings/JibeRcsEnabler$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/sec/internal/ims/settings/JibeRcsEnabler$$ExternalSyntheticLambda2;-><init>()V

    .line 175
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/settings/JibeRcsEnabler$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/settings/JibeRcsEnabler$$ExternalSyntheticLambda3;-><init>(Lcom/sec/internal/ims/settings/JibeRcsEnabler;Ljava/lang/String;)V

    .line 176
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    .line 177
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 179
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "hasJibeGlobalSettingUpdate failed! "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "JibeRcsEnabler"

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private hasJibeImsProfileUpdate(Ljava/lang/String;)Z
    .locals 2

    .line 156
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/JibeRcsEnabler;->getJibeUpdatesLocked()Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    const-string v1, "imsprofile_update"

    .line 157
    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/settings/JibeRcsEnabler$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/sec/internal/ims/settings/JibeRcsEnabler$$ExternalSyntheticLambda0;-><init>()V

    .line 158
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/settings/JibeRcsEnabler$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lcom/sec/internal/ims/settings/JibeRcsEnabler$$ExternalSyntheticLambda9;-><init>()V

    .line 159
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/settings/JibeRcsEnabler$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/sec/internal/ims/settings/JibeRcsEnabler$$ExternalSyntheticLambda2;-><init>()V

    .line 160
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/settings/JibeRcsEnabler$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/settings/JibeRcsEnabler$$ExternalSyntheticLambda10;-><init>(Lcom/sec/internal/ims/settings/JibeRcsEnabler;Ljava/lang/String;)V

    .line 161
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    .line 162
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 164
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "hasJibeImsProfileUpdate failed! "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "JibeRcsEnabler"

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private hasJibeUpdatesForSim(I)Z
    .locals 1

    .line 148
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/sec/internal/helper/SimUtil$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/sec/internal/helper/SimUtil$$ExternalSyntheticLambda0;-><init>()V

    .line 149
    invoke-virtual {p1, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    sget-object v0, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    .line 150
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 151
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/settings/JibeRcsEnabler;->hasJibeImsProfileUpdate(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/settings/JibeRcsEnabler;->hasJibeGlobalSettingUpdate(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

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

.method private hasMatchedUpdate(Lcom/google/gson/JsonArray;Ljava/lang/String;)Z
    .locals 0

    .line 185
    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->spliterator()Ljava/util/Spliterator;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p0, p1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/settings/JibeRcsEnabler$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/sec/internal/ims/settings/JibeRcsEnabler$$ExternalSyntheticLambda0;-><init>()V

    .line 186
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/settings/JibeRcsEnabler$$ExternalSyntheticLambda8;

    invoke-direct {p1}, Lcom/sec/internal/ims/settings/JibeRcsEnabler$$ExternalSyntheticLambda8;-><init>()V

    .line 187
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/constants/ims/config/StringArrayCarrierConfig$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/sec/internal/constants/ims/config/StringArrayCarrierConfig$$ExternalSyntheticLambda0;-><init>()V

    .line 188
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 189
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/sec/internal/ims/settings/DeviceConfigManager$$ExternalSyntheticLambda1;

    invoke-direct {p1, p2}, Lcom/sec/internal/ims/settings/DeviceConfigManager$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$fetchJibeUpdates$0(Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonElement;
    .locals 1

    const-string v0, "imsprofile_update"

    .line 106
    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$fetchJibeUpdates$1(Lcom/google/gson/JsonObject;Lcom/google/gson/JsonElement;)V
    .locals 2

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init: profile size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonObject;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JibeRcsEnabler"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "imsprofile_update"

    .line 109
    invoke-virtual {p0, v0, p1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    return-void
.end method

.method private static synthetic lambda$fetchJibeUpdates$2(Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonElement;
    .locals 1

    const-string v0, "globalsettings_update"

    .line 114
    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$fetchJibeUpdates$3(Lcom/google/gson/JsonObject;Lcom/google/gson/JsonElement;)V
    .locals 2

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init: globalsettings size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonObject;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JibeRcsEnabler"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "globalsettings_update"

    .line 117
    invoke-virtual {p0, v0, p1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    return-void
.end method

.method private static synthetic lambda$hasJibeGlobalSettingUpdate$6(Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonElement;
    .locals 1

    const-string v0, "globalsetting"

    .line 174
    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$hasJibeGlobalSettingUpdate$7(Ljava/lang/String;Lcom/google/gson/JsonArray;)Ljava/lang/Boolean;
    .locals 0

    .line 176
    invoke-direct {p0, p2, p1}, Lcom/sec/internal/ims/settings/JibeRcsEnabler;->hasMatchedUpdate(Lcom/google/gson/JsonArray;Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$hasJibeImsProfileUpdate$4(Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonElement;
    .locals 1

    const-string/jumbo v0, "profile"

    .line 159
    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$hasJibeImsProfileUpdate$5(Ljava/lang/String;Lcom/google/gson/JsonArray;)Ljava/lang/Boolean;
    .locals 0

    .line 161
    invoke-direct {p0, p2, p1}, Lcom/sec/internal/ims/settings/JibeRcsEnabler;->hasMatchedUpdate(Lcom/google/gson/JsonArray;Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$hasMatchedUpdate$8(Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonElement;
    .locals 1

    const-string v0, "mnoname"

    .line 187
    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    return-object p0
.end method

.method private loadJibeResource(I)Lcom/google/gson/JsonElement;
    .locals 5

    .line 129
    iget-object p0, p0, Lcom/sec/internal/ims/settings/JibeRcsEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadJibeUpdates: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "JibeRcsEnabler"

    invoke-static {v2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :try_start_0
    new-instance v0, Lcom/google/gson/stream/JsonReader;

    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    .line 133
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v4, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {v0, v3}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/gson/JsonIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :try_start_1
    new-instance p0, Lcom/google/gson/JsonParser;

    invoke-direct {p0}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonParser;->parse(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    .line 135
    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/gson/JsonElement;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    :try_start_2
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/google/gson/JsonIOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 132
    :try_start_3
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/google/gson/JsonIOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 137
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    sget-object p0, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    return-object p0
.end method


# virtual methods
.method getJibeUpdates()Lcom/google/gson/JsonElement;
    .locals 0

    .line 63
    sget-object p0, Lcom/sec/internal/ims/settings/JibeRcsEnabler;->sJibeUpdates:Lcom/google/gson/JsonElement;

    return-object p0
.end method

.method getJibeUpdatesLocked()Lcom/google/gson/JsonElement;
    .locals 2

    .line 68
    :try_start_0
    sget-object p0, Lcom/sec/internal/ims/settings/JibeRcsEnabler;->sJibeUpdatesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 69
    sget-object v0, Lcom/sec/internal/ims/settings/JibeRcsEnabler;->sJibeUpdates:Lcom/google/gson/JsonElement;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    .line 70
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception p0

    sget-object v0, Lcom/sec/internal/ims/settings/JibeRcsEnabler;->sJibeUpdatesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 73
    throw p0
.end method

.method protected getUpdates()Lcom/google/gson/JsonElement;
    .locals 3

    .line 77
    iget-boolean v0, p0, Lcom/sec/internal/ims/settings/JibeRcsEnabler;->mHasPrivilegedSamsungMessage:Z

    if-eqz v0, :cond_0

    .line 78
    sget-object p0, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    return-object p0

    .line 81
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/settings/JibeRcsEnabler;->fetchJibeUpdatesIfNecessary()V

    .line 83
    iget-object v0, p0, Lcom/sec/internal/ims/settings/JibeRcsEnabler;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/internal/ims/util/ConfigUtil;->isSecDmaPackageInuse(Landroid/content/Context;I)Z

    move-result v0

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUpdates: DMA is SamsungMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "JibeRcsEnabler"

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 86
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/JibeRcsEnabler;->getJibeUpdatesLocked()Lcom/google/gson/JsonElement;

    move-result-object p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    :goto_0
    return-object p0
.end method

.method public initSequentially()V
    .locals 0

    .line 125
    invoke-direct {p0}, Lcom/sec/internal/ims/settings/JibeRcsEnabler;->fetchJibeUpdatesIfNecessary()V

    return-void
.end method

.method protected isDynamicJibeSupported(I)Z
    .locals 1

    .line 144
    iget-boolean v0, p0, Lcom/sec/internal/ims/settings/JibeRcsEnabler;->mHasPrivilegedSamsungMessage:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/settings/JibeRcsEnabler;->hasJibeUpdatesForSim(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method setJibeUpdates(Lcom/google/gson/JsonElement;)V
    .locals 0

    .line 58
    sput-object p1, Lcom/sec/internal/ims/settings/JibeRcsEnabler;->sJibeUpdates:Lcom/google/gson/JsonElement;

    return-void
.end method
