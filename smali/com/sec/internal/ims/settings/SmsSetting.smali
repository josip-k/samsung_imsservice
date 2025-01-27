.class public Lcom/sec/internal/ims/settings/SmsSetting;
.super Ljava/lang/Object;
.source "SmsSetting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/settings/SmsSetting$Properties;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SmsSetting"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLog:Lcom/sec/internal/helper/SimpleEventLog;

.field private mMnoName:Ljava/lang/String;

.field private mMvnoName:Ljava/lang/String;

.field private mPhoneId:I

.field private mValues:Landroid/content/ContentValues;


# direct methods
.method public static synthetic $r8$lambda$eD5fJbvAOP6deNu6at5UrxDjVE0(Lcom/sec/internal/ims/settings/SmsSetting;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/settings/SmsSetting;->lambda$dump$0(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 53
    iput-object v0, p0, Lcom/sec/internal/ims/settings/SmsSetting;->mMnoName:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/sec/internal/ims/settings/SmsSetting;->mMvnoName:Ljava/lang/String;

    .line 57
    iput-object p1, p0, Lcom/sec/internal/ims/settings/SmsSetting;->mContext:Landroid/content/Context;

    .line 58
    iput p2, p0, Lcom/sec/internal/ims/settings/SmsSetting;->mPhoneId:I

    .line 59
    new-instance v0, Lcom/sec/internal/helper/SimpleEventLog;

    sget-object v1, Lcom/sec/internal/ims/settings/SmsSetting;->LOG_TAG:Ljava/lang/String;

    const/16 v2, 0x1f4

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;ILjava/lang/String;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/settings/SmsSetting;->mLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 60
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/settings/SmsSetting;->mValues:Landroid/content/ContentValues;

    .line 62
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/SmsSetting;->init()Z

    return-void
.end method

.method private synthetic lambda$dump$0(Ljava/lang/String;)V
    .locals 3

    .line 210
    sget-object v0, Lcom/sec/internal/ims/settings/SmsSetting;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->increaseIndent(Ljava/lang/String;)V

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/settings/SmsSetting;->mValues:Landroid/content/ContentValues;

    invoke-virtual {p0, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->decreaseIndent(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dump()V
    .locals 3

    .line 205
    sget-object v0, Lcom/sec/internal/ims/settings/SmsSetting;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Dump of SmsSetting:"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v1, p0, Lcom/sec/internal/ims/settings/SmsSetting;->mLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {v1}, Lcom/sec/internal/helper/SimpleEventLog;->dump()V

    .line 207
    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->increaseIndent(Ljava/lang/String;)V

    const-string v1, "Last value of SmsSetting:"

    .line 208
    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v1, p0, Lcom/sec/internal/ims/settings/SmsSetting;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/ims/settings/SmsSetting$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/settings/SmsSetting$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/settings/SmsSetting;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 214
    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->decreaseIndent(Ljava/lang/String;)V

    return-void
.end method

.method public getAsCursor()Landroid/database/Cursor;
    .locals 3

    .line 198
    new-instance v0, Landroid/database/MatrixCursor;

    iget-object v1, p0, Lcom/sec/internal/ims/settings/SmsSetting;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 199
    iget-object p0, p0, Lcom/sec/internal/ims/settings/SmsSetting;->mValues:Landroid/content/ContentValues;

    invoke-virtual {p0}, Landroid/content/ContentValues;->getValues()Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public init()Z
    .locals 10

    .line 114
    iget-object v0, p0, Lcom/sec/internal/ims/settings/SmsSetting;->mMnoName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 115
    iget v0, p0, Lcom/sec/internal/ims/settings/SmsSetting;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMnoName()Ljava/lang/String;

    move-result-object v0

    sget-char v3, Lcom/sec/internal/constants/Mno;->MVNO_DELIMITER:C

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 118
    aget-object v3, v0, v2

    iput-object v3, p0, Lcom/sec/internal/ims/settings/SmsSetting;->mMnoName:Ljava/lang/String;

    .line 119
    iget-object v3, p0, Lcom/sec/internal/ims/settings/SmsSetting;->mLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v4, p0, Lcom/sec/internal/ims/settings/SmsSetting;->mPhoneId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initialize with SIM "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 120
    array-length v3, v0

    if-le v3, v1, :cond_1

    .line 121
    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/sec/internal/ims/settings/SmsSetting;->mMvnoName:Ljava/lang/String;

    goto :goto_0

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/settings/SmsSetting;->mLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v3, p0, Lcom/sec/internal/ims/settings/SmsSetting;->mPhoneId:I

    const-string v4, "initialize without SIM"

    invoke-virtual {v0, v3, v4}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 125
    iget v0, p0, Lcom/sec/internal/ims/settings/SmsSetting;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/settings/SmsSetting;->mMnoName:Ljava/lang/String;

    const-string v0, ""

    .line 126
    iput-object v0, p0, Lcom/sec/internal/ims/settings/SmsSetting;->mMvnoName:Ljava/lang/String;

    .line 130
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/settings/SmsSetting;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 132
    iget-object v0, p0, Lcom/sec/internal/ims/settings/SmsSetting;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sec/internal/ims/settings/SmsSetting;->mPhoneId:I

    invoke-static {v0, v3}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/ImsAutoUpdate;

    move-result-object v0

    .line 135
    :try_start_0
    new-instance v3, Lcom/google/gson/stream/JsonReader;

    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    iget-object v6, p0, Lcom/sec/internal/ims/settings/SmsSetting;->mContext:Landroid/content/Context;

    .line 136
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060011

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {v3, v4}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/gson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :try_start_1
    new-instance v4, Lcom/google/gson/JsonParser;

    invoke-direct {v4}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-virtual {v4, v3}, Lcom/google/gson/JsonParser;->parse(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    :try_start_2
    invoke-virtual {v3}, Lcom/google/gson/stream/JsonReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/google/gson/JsonParseException; {:try_start_2 .. :try_end_2} :catch_0

    .line 144
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    const-string v4, "default_setting"

    .line 145
    invoke-virtual {v3, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    .line 146
    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 147
    iget-object v0, p0, Lcom/sec/internal/ims/settings/SmsSetting;->mLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget p0, p0, Lcom/sec/internal/ims/settings/SmsSetting;->mPhoneId:I

    const-string v1, "default_setting is not exist"

    invoke-virtual {v0, p0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    return v2

    .line 151
    :cond_2
    invoke-virtual {v0, v5, v4}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getUpdatedSmsSetting(Lcom/google/gson/JsonElement;Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    const-string/jumbo v5, "sms_settings"

    .line 153
    invoke-virtual {v3, v5}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v3

    .line 154
    invoke-static {v3}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 155
    iget-object v0, p0, Lcom/sec/internal/ims/settings/SmsSetting;->mLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget p0, p0, Lcom/sec/internal/ims/settings/SmsSetting;->mPhoneId:I

    const-string/jumbo v1, "sms_settings is not valid"

    invoke-virtual {v0, p0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    return v2

    .line 159
    :cond_3
    iget-object v2, p0, Lcom/sec/internal/ims/settings/SmsSetting;->mMnoName:Ljava/lang/String;

    .line 160
    sget-object v5, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    .line 162
    iget-object v6, p0, Lcom/sec/internal/ims/settings/SmsSetting;->mMvnoName:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 163
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v2, Lcom/sec/internal/constants/Mno;->MVNO_DELIMITER:C

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/settings/SmsSetting;->mMvnoName:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 166
    :cond_4
    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v7, "mnoname"

    if-eqz v6, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/gson/JsonElement;

    .line 167
    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v6

    .line 168
    invoke-virtual {v6, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v8

    .line 169
    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 170
    sget-object v3, Lcom/sec/internal/ims/settings/SmsSetting;->LOG_TAG:Ljava/lang/String;

    iget v5, p0, Lcom/sec/internal/ims/settings/SmsSetting;->mPhoneId:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "find exact sms setting by "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v5, v8}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    move-object v5, v6

    goto :goto_2

    .line 173
    :cond_6
    iget-object v7, p0, Lcom/sec/internal/ims/settings/SmsSetting;->mMnoName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 174
    sget-object v5, Lcom/sec/internal/ims/settings/SmsSetting;->LOG_TAG:Ljava/lang/String;

    iget v7, p0, Lcom/sec/internal/ims/settings/SmsSetting;->mPhoneId:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "find sms setting expected "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " without MVNO"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v7, v8}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    move-object v5, v6

    goto :goto_1

    .line 179
    :cond_7
    :goto_2
    invoke-static {v4, v5}, Lcom/sec/internal/helper/JsonUtil;->merge(Lcom/google/gson/JsonElement;Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;

    move-result-object v3

    .line 180
    invoke-static {v3}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 181
    iget-object v0, p0, Lcom/sec/internal/ims/settings/SmsSetting;->mLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v3, p0, Lcom/sec/internal/ims/settings/SmsSetting;->mPhoneId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not defined sms setting for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    goto :goto_3

    .line 184
    :cond_8
    invoke-virtual {v0, v3, v7}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getUpdatedSmsSetting(Lcom/google/gson/JsonElement;Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    .line 188
    :goto_3
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 189
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 190
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/JsonElement;

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    sget-object v4, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    invoke-virtual {v2, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/JsonElement;

    .line 191
    iget-object v4, p0, Lcom/sec/internal/ims/settings/SmsSetting;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    return v1

    :catchall_0
    move-exception v0

    .line 135
    :try_start_3
    invoke-virtual {v3}, Lcom/google/gson/stream/JsonReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/google/gson/JsonParseException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 139
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 140
    iget-object v1, p0, Lcom/sec/internal/ims/settings/SmsSetting;->mLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget p0, p0, Lcom/sec/internal/ims/settings/SmsSetting;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "smssettings.json parse fail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    return v2
.end method

.method public updateMno(Landroid/content/ContentValues;Z)Z
    .locals 5

    const-string v0, "mnoname"

    .line 66
    iget-object v1, p0, Lcom/sec/internal/ims/settings/SmsSetting;->mMnoName:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/sec/internal/helper/CollectionUtils;->getStringValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mvnoname"

    .line 67
    iget-object v2, p0, Lcom/sec/internal/ims/settings/SmsSetting;->mMvnoName:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/sec/internal/helper/CollectionUtils;->getStringValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 69
    iget-object v1, p0, Lcom/sec/internal/ims/settings/SmsSetting;->mMnoName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/internal/ims/settings/SmsSetting;->mMvnoName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 70
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/settings/SmsSetting;->mLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v2, p0, Lcom/sec/internal/ims/settings/SmsSetting;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateMno "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/settings/SmsSetting;->mMnoName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " force : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 71
    iput-object v0, p0, Lcom/sec/internal/ims/settings/SmsSetting;->mMnoName:Ljava/lang/String;

    .line 72
    iput-object p1, p0, Lcom/sec/internal/ims/settings/SmsSetting;->mMvnoName:Ljava/lang/String;

    .line 73
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/SmsSetting;->updateMnoNameForKorSim()V

    .line 74
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/SmsSetting;->init()Z

    move-result p0

    return p0
.end method

.method public updateMnoNameForKorSim()V
    .locals 5

    .line 81
    iget-object v0, p0, Lcom/sec/internal/ims/settings/SmsSetting;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 82
    iget v0, p0, Lcom/sec/internal/ims/settings/SmsSetting;->mPhoneId:I

    const-string v1, "gsm.sim.operator.numeric"

    const-string v2, "00000"

    invoke-static {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-le v1, v3, :cond_0

    .line 85
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "000"

    :goto_0
    const-string v1, "450"

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 90
    iget v1, p0, Lcom/sec/internal/ims/settings/SmsSetting;->mPhoneId:I

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_5

    .line 92
    sget-object v0, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/sec/internal/ims/settings/SmsSetting;->mMnoName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 93
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_0

    :goto_1
    move v2, v4

    goto :goto_2

    :sswitch_0
    const-string v0, "SKT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    goto :goto_2

    :sswitch_1
    const-string v0, "LGT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x2

    goto :goto_2

    :sswitch_2
    const-string v0, "KTT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x1

    goto :goto_2

    :sswitch_3
    const-string v0, "KOO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    :goto_2
    const-string v0, "SKT_KR"

    packed-switch v2, :pswitch_data_0

    goto :goto_3

    .line 95
    :pswitch_0
    iput-object v0, p0, Lcom/sec/internal/ims/settings/SmsSetting;->mMnoName:Ljava/lang/String;

    goto :goto_3

    :pswitch_1
    const-string v0, "LGU+_KR"

    .line 101
    iput-object v0, p0, Lcom/sec/internal/ims/settings/SmsSetting;->mMnoName:Ljava/lang/String;

    goto :goto_3

    :pswitch_2
    const-string v0, "KT_KR"

    .line 98
    iput-object v0, p0, Lcom/sec/internal/ims/settings/SmsSetting;->mMnoName:Ljava/lang/String;

    goto :goto_3

    .line 104
    :pswitch_3
    iput-object v0, p0, Lcom/sec/internal/ims/settings/SmsSetting;->mMnoName:Ljava/lang/String;

    .line 109
    :goto_3
    iget-object v0, p0, Lcom/sec/internal/ims/settings/SmsSetting;->mLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v1, p0, Lcom/sec/internal/ims/settings/SmsSetting;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateMnoName for KOR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/settings/SmsSetting;->mMnoName:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    :cond_5
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1236b -> :sswitch_3
        0x1240b -> :sswitch_2
        0x12639 -> :sswitch_1
        0x140fc -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
