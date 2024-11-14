.class public Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;
.super Ljava/lang/Object;
.source "CapabilityStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$CapabilitiesTable;,
        Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;,
        Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;
    }
.end annotation


# static fields
.field private static final APPLY_BATCH_MAX_SIZE:I = 0x64

.field private static final APPLY_BATCH_TIMEOUT:I = 0x3e8

.field private static final LOG_TAG:Ljava/lang/String; = "CapabilityStorage"

.field private static final MIMETYPE_RCSE:Ljava/lang/String; = "vnd.android.cursor.item/rcs_data"


# instance fields
.field private mCapabilitiesCache:Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

.field protected mContext:Landroid/content/Context;

.field private final mDbHelper:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

.field private mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field private mIsKor:Z

.field private mNeedResetRcsData:Z

.field mPhoneId:I

.field private final mUpdater:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;

.field mUserId:I

.field projection:[Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmEventLog(Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;)Lcom/sec/internal/helper/SimpleEventLog;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUpdater(Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;)Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mUpdater:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;I)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    .line 96
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    .line 82
    iput v3, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mUserId:I

    .line 83
    iput v3, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    .line 84
    iput-boolean v3, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mIsKor:Z

    .line 85
    iput-boolean v3, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mNeedResetRcsData:Z

    const-string v4, "_id"

    const-string v5, "contact_id"

    const-string/jumbo v6, "uri"

    const-string v7, "available"

    const-string/jumbo v8, "timestamp"

    const-string v9, "display_name"

    const-string v10, "number"

    const-string/jumbo v11, "phone_id"

    const-string v12, "features"

    const-string v13, "avail_features"

    const-string v14, "ext_features"

    const-string/jumbo v15, "presence_support"

    const-string v16, "legacy_latching"

    const-string v17, "isexpired"

    const-string v18, "lastseen"

    const-string v19, "botserviceid"

    const-string/jumbo v20, "passertedidset"

    const-string/jumbo v21, "pidf"

    .line 326
    filled-new-array/range {v4 .. v21}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->projection:[Ljava/lang/String;

    .line 97
    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mContext:Landroid/content/Context;

    .line 98
    new-instance v3, Lcom/sec/internal/helper/SimpleEventLog;

    const-string v4, "CapabilityStorage"

    const/4 v5, 0x5

    invoke-direct {v3, v1, v2, v4, v5}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;ILjava/lang/String;I)V

    iput-object v3, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    move-object/from16 v1, p2

    .line 100
    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mCapabilitiesCache:Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    .line 102
    new-instance v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

    .line 103
    new-instance v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;

    invoke-direct {v1, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;)V

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mUpdater:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;

    .line 105
    iput v2, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    return-void
.end method

.method private convertCursorToCapex(Landroid/database/Cursor;)Lcom/sec/ims/options/Capabilities;
    .locals 7

    .line 348
    new-instance p0, Lcom/sec/ims/options/Capabilities;

    const-string/jumbo v0, "uri"

    .line 349
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    const-string v0, "number"

    .line 350
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "contact_id"

    .line 351
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v0, "_id"

    .line 352
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v4, v0

    const-string v0, "display_name"

    .line 353
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/ims/options/Capabilities;-><init>(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    const-string v0, "features"

    .line 356
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/options/Capabilities;->setFeatures(J)V

    const-string v0, "avail_features"

    .line 357
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/options/Capabilities;->setAvailableFeatures(J)V

    const-string/jumbo v0, "phone_id"

    .line 358
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/options/Capabilities;->setPhoneId(I)V

    .line 360
    new-instance v0, Ljava/util/Date;

    const-string/jumbo v1, "timestamp"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Lcom/sec/ims/options/Capabilities;->setTimestamp(Ljava/util/Date;)V

    const-string/jumbo v0, "presence_support"

    .line 361
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/ims/options/Capabilities;->setPresenceSupport(Z)V

    const-string v0, "available"

    .line 362
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/sec/ims/options/Capabilities;->setAvailiable(Z)V

    const-string v0, "legacy_latching"

    .line 363
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v2, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    invoke-virtual {p0, v0}, Lcom/sec/ims/options/Capabilities;->setLegacyLatching(Z)V

    .line 365
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "ext_features"

    .line 366
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    if-eqz v3, :cond_3

    .line 367
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 368
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 369
    invoke-virtual {p0, v0}, Lcom/sec/ims/options/Capabilities;->setExtFeature(Ljava/util/List;)V

    :cond_3
    const-string v0, "isexpired"

    .line 371
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v2, :cond_4

    goto :goto_3

    :cond_4
    move v2, v1

    :goto_3
    invoke-virtual {p0, v2}, Lcom/sec/ims/options/Capabilities;->setExpired(Z)V

    const-string v0, "lastseen"

    .line 372
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/options/Capabilities;->setLastSeen(J)V

    const-string v0, "botserviceid"

    .line 373
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/options/Capabilities;->setBotServiceId(Ljava/lang/String;)V

    const-string/jumbo v0, "passertedidset"

    .line 375
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 376
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_6

    .line 377
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 378
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    :goto_4
    if-ge v1, v3, :cond_6

    aget-object v4, v0, v1

    .line 379
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    .line 380
    new-instance v5, Lcom/sec/ims/util/ImsUri;

    invoke-direct {v5, v4}, Lcom/sec/ims/util/ImsUri;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 384
    :cond_6
    invoke-virtual {p0, v2}, Lcom/sec/ims/options/Capabilities;->setPAssertedId(Ljava/util/List;)V

    const-string/jumbo v0, "pidf"

    .line 386
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/ims/options/Capabilities;->setPidf(Ljava/lang/String;)V

    return-object p0
.end method

.method private endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const-string p0, "CapabilityStorage"

    if-nez p1, :cond_0

    const-string p1, "endTransaction: db is null"

    .line 252
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 257
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endTransaction: SQLException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endTransaction: SQLiteFullException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception p1

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endTransaction: SQLiteDatabaseCorruptException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_3
    move-exception p1

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endTransaction: IllegalStateException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private fillCapexInfo(Landroid/content/ContentValues;Lcom/sec/ims/options/Capabilities;)V
    .locals 4

    .line 270
    invoke-virtual {p2}, Lcom/sec/ims/options/Capabilities;->getContactId()Ljava/lang/String;

    move-result-object p0

    const-string v0, "contact_id"

    invoke-virtual {p1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-virtual {p2}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "uri"

    invoke-virtual {p1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-virtual {p2}, Lcom/sec/ims/options/Capabilities;->isAvailable()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v0, "available"

    invoke-virtual {p1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 273
    invoke-virtual {p2}, Lcom/sec/ims/options/Capabilities;->getTimestamp()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string/jumbo v0, "timestamp"

    invoke-virtual {p1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p0, "display_name"

    .line 274
    invoke-virtual {p2}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "number"

    .line 275
    invoke-virtual {p2}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-virtual {p2}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string v0, "features"

    invoke-virtual {p1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 277
    invoke-virtual {p2}, Lcom/sec/ims/options/Capabilities;->getAvailableFeatures()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string v0, "avail_features"

    invoke-virtual {p1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 278
    invoke-virtual {p2}, Lcom/sec/ims/options/Capabilities;->getPhoneId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string/jumbo v0, "phone_id"

    invoke-virtual {p1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 280
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 281
    invoke-virtual {p2}, Lcom/sec/ims/options/Capabilities;->getExtFeature()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 282
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/16 v2, 0x2c

    if-eqz v1, :cond_1

    .line 283
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 284
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 285
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v0, "ext_features"

    .line 291
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    invoke-virtual {p2}, Lcom/sec/ims/options/Capabilities;->hasPresenceSupport()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string/jumbo v0, "presence_support"

    invoke-virtual {p1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 293
    invoke-virtual {p2}, Lcom/sec/ims/options/Capabilities;->getLegacyLatching()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v0, "legacy_latching"

    invoke-virtual {p1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 295
    invoke-virtual {p2}, Lcom/sec/ims/options/Capabilities;->getExpired()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v0, "isexpired"

    invoke-virtual {p1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 296
    invoke-virtual {p2}, Lcom/sec/ims/options/Capabilities;->getLastSeen()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string v0, "lastseen"

    invoke-virtual {p1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p0, "botserviceid"

    .line 297
    invoke-virtual {p2}, Lcom/sec/ims/options/Capabilities;->getBotServiceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p0, "pidf"

    .line 298
    invoke-virtual {p2}, Lcom/sec/ims/options/Capabilities;->getPidf()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 301
    invoke-virtual {p2}, Lcom/sec/ims/options/Capabilities;->getPAssertedId()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 302
    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 303
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/util/ImsUri;

    if-eqz v0, :cond_2

    .line 305
    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->getHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 306
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 307
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 309
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const-string/jumbo p2, "passertedidset"

    .line 314
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private putCapabilityToContactDB(Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/options/Capabilities;Z)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    .line 799
    iget v1, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "putCapabilityToContactDB: phoneNumber = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CapabilityStorage"

    invoke-static {v3, v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 801
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 802
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 807
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->setRemoteUri()Landroid/net/Uri;

    move-result-object v14

    .line 808
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->setProjection()[Ljava/lang/String;

    move-result-object v15

    .line 809
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->setSelection()Ljava/lang/String;

    move-result-object v16

    if-nez v14, :cond_0

    const-string/jumbo v0, "putCapabilityToContactDB: remoteUri is null"

    .line 812
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 816
    :cond_0
    iget v1, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "putCapabilityToContactDB: remoteUri = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const-string/jumbo v1, "vnd.android.cursor.item/phone_v2"

    const-string/jumbo v2, "vnd.android.cursor.item/rcs_data"

    .line 818
    filled-new-array {v8, v1, v2}, [Ljava/lang/String;

    move-result-object v17

    .line 822
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 823
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 824
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v13 .. v19}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v4

    if-nez v4, :cond_2

    :try_start_0
    const-string/jumbo v0, "putCapabilityToContactDB: cursor is null"

    .line 826
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    .line 852
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void

    .line 830
    :cond_2
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_5

    .line 831
    :cond_3
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x0

    .line 832
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    .line 833
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v13, 0x2

    .line 834
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x3

    .line 835
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x4

    .line 837
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    if-eqz v6, :cond_3

    .line 840
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 841
    invoke-static {v15, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 842
    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 843
    invoke-interface {v11, v5, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 844
    invoke-interface {v12, v5, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 847
    :cond_4
    invoke-interface {v7, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 852
    :cond_5
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 854
    iget v2, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "putCapabilityToContactDB: rawIds = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", rcsRawIds = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 856
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_7

    invoke-virtual {v0, v10}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->checkCapability(Lcom/sec/ims/options/Capabilities;)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_7

    .line 857
    invoke-virtual {v0, v10}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->isOppositeCapexNull(Lcom/sec/ims/options/Capabilities;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v1, "putCapabilityToContactDB: delete from contact db"

    .line 858
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    invoke-virtual/range {p0 .. p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->deleteFromContactDB(Ljava/lang/String;)V

    :cond_6
    return-void

    .line 864
    :cond_7
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Ljava/lang/String;

    move-object/from16 v1, p0

    move/from16 v2, p4

    move-object v3, v14

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    move-object v6, v11

    move-object v15, v7

    move-object v7, v12

    .line 865
    invoke-virtual/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->needUpdateToContactDB(ZLjava/lang/String;Ljava/lang/String;Lcom/sec/ims/options/Capabilities;Ljava/util/Map;Ljava/util/Map;)V

    .line 866
    invoke-interface {v15, v14}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-object v7, v15

    goto :goto_1

    :cond_8
    move-object v15, v7

    .line 868
    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 869
    invoke-virtual {v0, v2, v8, v9, v10}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->insertToContactDB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/options/Capabilities;)V

    goto :goto_2

    :cond_9
    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    if-eqz v4, :cond_a

    .line 824
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a
    :goto_3
    throw v1
.end method

.method private remove(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)V"
        }
    .end annotation

    .line 221
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "remove: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Capabilities"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapabilityStorage"

    invoke-static {v1, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 223
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/ims/util/ImsUri;

    .line 225
    invoke-virtual {p2}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    const-string v0, "capabilities"

    const-string/jumbo v1, "uri=?"

    invoke-virtual {p1, v0, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setContentValues(Lcom/sec/ims/options/Capabilities;)Landroid/content/ContentValues;
    .locals 1

    .line 999
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->checkCapability(Lcom/sec/ims/options/Capabilities;)I

    move-result v0

    .line 1000
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->setContentValues(Lcom/sec/ims/options/Capabilities;I)Landroid/content/ContentValues;

    move-result-object p0

    return-object p0
.end method

.method private setRemoteUri()Landroid/net/Uri;
    .locals 1

    .line 908
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mUserId:I

    if-nez v0, :cond_0

    .line 909
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->getRemoteUriwithUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    goto :goto_0

    .line 911
    :cond_0
    sget-object v0, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->getRemoteUriwithUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private setSelection()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "data1 = ? AND (mimetype = ? OR mimetype = ?)"

    return-object p0
.end method

.method private update(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/List<",
            "Lcom/sec/ims/options/Capabilities;",
            ">;)V"
        }
    .end annotation

    .line 230
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 232
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Capabilities"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CapabilityStorage"

    invoke-static {v3, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 234
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/options/Capabilities;

    .line 235
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 237
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->fillCapexInfo(Landroid/content/ContentValues;Lcom/sec/ims/options/Capabilities;)V

    .line 239
    invoke-virtual {v1}, Lcom/sec/ims/options/Capabilities;->getId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const-string v3, "capabilities"

    if-ltz v2, :cond_0

    .line 241
    invoke-virtual {v1}, Lcom/sec/ims/options/Capabilities;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "_id = ?"

    .line 242
    invoke-virtual {p1, v3, v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 244
    invoke-virtual {p1, v3, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 245
    invoke-virtual {v1, v2, v3}, Lcom/sec/ims/options/Capabilities;->setId(J)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method checkAndDeleteGarbageRcsData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    .line 1128
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->getRemoteUriwithUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    const-string v8, "CapabilityStorage"

    if-nez v0, :cond_0

    const-string p0, "checkAndDeleteGarbageRcsData: remoteUri is null"

    .line 1131
    invoke-static {v8, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v1, "data1"

    .line 1135
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "raw_contact_id = ? AND data1 <> ? AND mimetype = ?"

    const-string/jumbo v9, "vnd.android.cursor.item/rcs_data"

    .line 1139
    filled-new-array {p1, p2, v9}, [Ljava/lang/String;

    move-result-object v5

    .line 1141
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    invoke-virtual/range {v1 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p2

    if-nez p2, :cond_2

    if-eqz p2, :cond_1

    .line 1179
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void

    .line 1147
    :cond_2
    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v1, :cond_3

    .line 1179
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    return-void

    .line 1152
    :cond_3
    :goto_0
    :try_start_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v10, 0x0

    .line 1153
    invoke-interface {p2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const-string/jumbo v2, "raw_contact_id"

    aput-object v2, v3, v10

    const-string/jumbo v4, "raw_contact_id = ? AND data1 = ? AND mimetype <> ?"

    const/4 v2, 0x3

    new-array v5, v2, [Ljava/lang/String;

    aput-object p1, v5, v10

    aput-object v11, v5, v1

    const/4 v1, 0x2

    aput-object v9, v5, v1

    .line 1161
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    invoke-virtual/range {v1 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v1, :cond_4

    .line 1165
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_4

    .line 1166
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1167
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1168
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkAndDeleteGarbageRcsData: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " has rawContactId("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "), so this is not garbage data"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1173
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 1161
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_5
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0

    :cond_4
    if-eqz v1, :cond_5

    .line 1173
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1175
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkAndDeleteGarbageRcsData: remove garbageNumber("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "), rawContactId("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") from Contact DB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    invoke-virtual {p0, p1, v11}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->deleteFromContactDB(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto/16 :goto_0

    .line 1179
    :cond_6
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_2
    move-exception p0

    .line 1141
    :try_start_6
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
.end method

.method checkCapability(Lcom/sec/ims/options/Capabilities;)I
    .locals 2

    .line 1235
    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL_VIDEO:I

    invoke-virtual {p1, v0}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1236
    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->isAvailable()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x6

    return p0

    :cond_0
    const/4 p0, 0x7

    return p0

    .line 1241
    :cond_1
    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_CPM:I

    invoke-virtual {p1, v0}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v0

    if-nez v0, :cond_5

    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_SIMPLE_IM:I

    .line 1242
    invoke-virtual {p1, v0}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 1244
    :cond_2
    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_NON_RCS_USER:I

    invoke-virtual {p1, v0}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v0

    if-nez v0, :cond_4

    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_NOT_UPDATED:I

    .line 1245
    invoke-virtual {p1, v0}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mIsKor:Z

    if-eqz p0, :cond_3

    .line 1246
    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide p0

    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_OFFLINE_RCS_USER:I

    int-to-long v0, v0

    cmp-long p0, p0, v0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return p0

    :cond_4
    :goto_0
    const/4 p0, -0x1

    return p0

    :cond_5
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method deleteAllRcsDataFromContactDB()V
    .locals 3

    .line 1057
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    const-string v1, "deleteAllRcsDataFromContactDB:"

    const-string v2, "CapabilityStorage"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1058
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->getRemoteUriwithUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "mimetype = ?"

    const-string/jumbo v2, "vnd.android.cursor.item/rcs_data"

    .line 1061
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 1064
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1066
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method deleteFromContactDB(Ljava/lang/String;)V
    .locals 3

    .line 1027
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteFromContactDB: phoneNumber : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CapabilityStorage"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 1028
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->getRemoteUriwithUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "Data.DATA1 = ? AND mimetype_id = (SELECT _id FROM mimetypes WHERE mimetype = ?)"

    const-string/jumbo v2, "vnd.android.cursor.item/rcs_data"

    .line 1031
    filled-new-array {p1, v2}, [Ljava/lang/String;

    move-result-object p1

    .line 1034
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, v0, v1, p1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1036
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method deleteFromContactDB(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1041
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteFromContactDB: phoneNumber = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", rawContactId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CapabilityStorage"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 1042
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->getRemoteUriwithUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v1, "raw_contact_id = ? AND data1 = ? AND mimetype_id = (SELECT _id FROM mimetypes WHERE mimetype = ?)"

    const-string/jumbo v2, "vnd.android.cursor.item/rcs_data"

    .line 1047
    filled-new-array {p1, p2, v2}, [Ljava/lang/String;

    move-result-object p1

    .line 1050
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, v0, v1, p1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1052
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public deleteNonRcsDataFromContactDB()V
    .locals 13

    .line 1071
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    const-string v1, "deleteNonRcsDataFromContactDB:"

    const-string v2, "CapabilityStorage"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1073
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->getRemoteUriwithUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "(((data5 = ? OR data5 = ?) AND data9 is null ) OR ((data9 = ? OR data9 = ?) AND data5 is null ) OR ((data5 = ? OR data5 = ?) AND (data9 = ? OR data9 = ?))) AND mimetype_id = (SELECT _id FROM mimetypes WHERE mimetype = ?)"

    .line 1087
    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_NON_RCS_USER:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_NOT_UPDATED:I

    .line 1088
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_NON_RCS_USER:I

    .line 1089
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_NOT_UPDATED:I

    .line 1090
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_NON_RCS_USER:I

    .line 1091
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_NOT_UPDATED:I

    .line 1092
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_NON_RCS_USER:I

    .line 1093
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_NOT_UPDATED:I

    .line 1094
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "vnd.android.cursor.item/rcs_data"

    filled-new-array/range {v4 .. v12}, [Ljava/lang/String;

    move-result-object v3

    .line 1097
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, v0, v1, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1099
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->printStackTrace()V

    const/4 p0, 0x0

    .line 1101
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteNonRcsDataFromContactDB: deleted rows = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "N,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const v0, 0x12040002

    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    return-void
.end method

.method public get(J)Lcom/sec/ims/options/Capabilities;
    .locals 7

    const-string v0, "get id: "

    const-string v1, "CapabilityStorage"

    const-string/jumbo v2, "phone_id = ? AND _id = ?"

    .line 448
    iget v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v3, p1}, [Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 450
    :try_start_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;->incrementRefCount()V

    .line 451
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

    const-string v4, "capabilities"

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->projection:[Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v2, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;->getCursor(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 452
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 453
    iget v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " capabilities record."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 454
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 455
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->convertCursorToCapex(Landroid/database/Cursor;)Lcom/sec/ims/options/Capabilities;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_2

    .line 462
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;->safeClose(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_0
    move-exception p1

    move-object v6, p2

    move-object p2, p1

    move-object p1, v6

    goto :goto_4

    :catch_2
    move-exception v2

    move-object p1, p2

    .line 460
    :goto_1
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_3
    move-exception v2

    move-object p1, p2

    .line 458
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :goto_3
    return-object p2

    :catchall_1
    move-exception p2

    .line 462
    :goto_4
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;->safeClose(Ljava/io/Closeable;)V

    .line 463
    throw p2
.end method

.method public get(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/options/Capabilities;
    .locals 7

    const-string v0, "get uri: "

    const-string v1, "CapabilityStorage"

    const-string/jumbo v2, "phone_id = ? AND uri = ?"

    .line 423
    iget v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v3, p1}, [Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    .line 425
    :try_start_0
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;->incrementRefCount()V

    .line 426
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

    const-string v5, "capabilities"

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->projection:[Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v2, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;->getCursor(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 427
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 428
    iget v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get uri : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " capabilities record."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 429
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 430
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->convertCursorToCapex(Landroid/database/Cursor;)Lcom/sec/ims/options/Capabilities;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v3, v0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_2

    .line 437
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;->safeClose(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v2

    move-object p1, v3

    .line 435
    :goto_1
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_3
    move-exception v2

    move-object p1, v3

    .line 433
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :goto_3
    return-object v3

    :catchall_1
    move-exception v0

    move-object v3, p1

    .line 437
    :goto_4
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;->safeClose(Ljava/io/Closeable;)V

    .line 438
    throw v0
.end method

.method public getAllCapabilities()Ljava/util/Collection;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/sec/ims/options/Capabilities;",
            ">;"
        }
    .end annotation

    const-string v0, "getAllCapabilities: "

    .line 469
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    const-string v2, "getAllCapabilities"

    const-string v3, "CapabilityStorage"

    invoke-static {v3, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 471
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    const-string/jumbo v2, "phone_id = ? "

    .line 475
    iget v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 478
    :try_start_0
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;->incrementRefCount()V

    .line 479
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

    const-string v7, "capabilities"

    iget-object v8, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->projection:[Ljava/lang/String;

    invoke-virtual {v6, v7, v8, v2, v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;->getCursor(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 480
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 481
    iget v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " capabilities record."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 482
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 484
    :cond_0
    invoke-direct {p0, v5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->convertCursorToCapex(Landroid/database/Cursor;)Lcom/sec/ims/options/Capabilities;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 485
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 490
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

    invoke-virtual {v0, v5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;->safeClose(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 488
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 493
    :goto_1
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    const-string v0, "getAllCapabilities done."

    invoke-static {v3, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-object v1

    .line 490
    :goto_2
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;->safeClose(Ljava/io/Closeable;)V

    .line 491
    throw v0
.end method

.method public getAmountCapabilities()I
    .locals 4

    const-string v0, "_id"

    .line 111
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;->incrementRefCount()V

    .line 115
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

    const-string v2, "capabilities"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;->getCursor(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 119
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;->safeClose(Ljava/io/Closeable;)V

    .line 121
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAmountCapabilities: Total "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " capabilities records"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CapabilityStorage"

    invoke-static {v2, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v1
.end method

.method public getAmountRcsCapabilities()I
    .locals 5

    const-string v0, "_id"

    .line 128
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 134
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_OFFLINE_RCS_USER:I

    .line 135
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_NON_RCS_USER:I

    .line 136
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_NOT_UPDATED:I

    .line 137
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 139
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;->incrementRefCount()V

    .line 140
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

    const-string v3, "capabilities"

    const-string v4, "avail_features <> ? AND avail_features <> ? AND avail_features <> ?"

    invoke-virtual {v2, v3, v0, v4, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;->getCursor(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 144
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;->safeClose(Ljava/io/Closeable;)V

    .line 146
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAmountRcsCapabilities: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " RCS capabilities records"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CapabilityStorage"

    invoke-static {v2, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v1
.end method

.method public getCapabilitiesForPolling(IJJJZ)Ljava/util/TreeMap;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJJZ)",
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation

    move-object v1, p0

    .line 530
    iget v0, v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    const-string v2, "getCapabilitiesForPolling"

    const-string v3, "CapabilityStorage"

    invoke-static {v3, v0, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 532
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 535
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 536
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 537
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 538
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SELECT "

    .line 539
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_id"

    .line 540
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "uri"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " FROM capabilities WHERE _id > ? AND contact_id <> ? AND "

    .line 541
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "phone_id"

    .line 542
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " = ? "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const-string v9, ""

    .line 545
    invoke-virtual {v0, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 546
    iget v9, v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    if-nez p8, :cond_0

    const-string v9, " AND ((features = ? AND timestamp < ? ) OR (features <> ? AND timestamp < ? )) "

    .line 549
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    sget v9, Lcom/sec/ims/options/Capabilities;->FEATURE_NON_RCS_USER:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const-wide/16 v9, 0x3e8

    mul-long v11, p4, v9

    sub-long v11, v4, v11

    .line 551
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 552
    sget v11, Lcom/sec/ims/options/Capabilities;->FEATURE_NON_RCS_USER:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    mul-long v9, v9, p6

    sub-long/2addr v4, v9

    .line 553
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v4, " ORDER BY _id "

    .line 556
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez p1, :cond_1

    const-string v4, " ASC Limit ? "

    .line 558
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    .line 562
    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 564
    iget v5, v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getCapabilitiesForPolling query "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " args "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/LinkedList;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v5, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v5, 0x0

    .line 567
    :try_start_0
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;->incrementRefCount()V

    .line 568
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 570
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 571
    iget v0, v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCapabilitiesForPolling : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " capabilities record."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 572
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 574
    :cond_2
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 575
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    .line 574
    invoke-virtual {v2, v0, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    .line 581
    :cond_3
    :goto_0
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

    invoke-virtual {v0, v5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;->safeClose(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 579
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCapabilitiesForPolling: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 584
    :goto_1
    iget v0, v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    const-string v1, "getCapabilitiesForPolling done."

    invoke-static {v3, v0, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return-object v2

    .line 581
    :goto_2
    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

    invoke-virtual {v1, v5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;->safeClose(Ljava/io/Closeable;)V

    .line 582
    throw v0
.end method

.method public getCapabilitiesNumberWithContactId()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "number"

    .line 499
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    const-string v2, "getCapabilitiesNumberWithContactId"

    const-string v3, "CapabilityStorage"

    invoke-static {v3, v1, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 501
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    const-string/jumbo v2, "phone_id = ? AND contact_id != \'\'"

    .line 505
    iget v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 508
    :try_start_0
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;->incrementRefCount()V

    .line 509
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

    const-string v7, "capabilities"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    invoke-virtual {v6, v7, v8, v2, v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;->getCursor(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 510
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 511
    iget v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCapabilitiesNumberWithContactId : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " capabilities record."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 512
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 514
    :cond_0
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 516
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 521
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

    invoke-virtual {v0, v5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;->safeClose(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 519
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCapabilitiesNumberWithContactId: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 524
    :goto_1
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    const-string v0, "getCapabilitiesNumberWithContactId done."

    invoke-static {v3, p0, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return-object v1

    .line 521
    :goto_2
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;->safeClose(Ljava/io/Closeable;)V

    .line 522
    throw v0
.end method

.method getRemoteUriwithUserId(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    .line 1184
    invoke-static {}, Lcom/sec/ims/extensions/Extensions$ActivityManager;->getCurrentUser()I

    move-result p0

    .line 1185
    invoke-static {p1, p0}, Lcom/sec/ims/extensions/Extensions$ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method insertToContactDB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/options/Capabilities;)V
    .locals 4

    .line 1106
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertToContactDB: phoneNumber = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", rawContactId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CapabilityStorage"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 1107
    invoke-virtual {p0, p4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->checkCapability(Lcom/sec/ims/options/Capabilities;)I

    move-result v0

    .line 1108
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 1109
    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isRjil()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1113
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->checkAndDeleteGarbageRcsData(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    invoke-virtual {p0, p4, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->setContentValues(Lcom/sec/ims/options/Capabilities;I)Landroid/content/ContentValues;

    move-result-object p4

    const-string v0, "mimetype"

    const-string/jumbo v1, "vnd.android.cursor.item/rcs_data"

    .line 1116
    invoke-virtual {p4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "raw_contact_id"

    .line 1117
    invoke-virtual {p4, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "data1"

    .line 1118
    invoke-virtual {p4, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "data2"

    .line 1119
    invoke-virtual {p4, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    sget-object p1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->getRemoteUriwithUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 1123
    invoke-static {p1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p1

    .line 1124
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mUpdater:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;->tryPut(Landroid/content/ContentProviderOperation;)V

    return-void

    .line 1110
    :cond_1
    :goto_0
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    const-string p1, "insertToContactDB: Ignore inserting CAPABLE_NULL or CAPABLE_NONE"

    invoke-static {v2, p0, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method isOppositeCapexNull(Lcom/sec/ims/options/Capabilities;)Z
    .locals 5

    .line 960
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsReg()Z

    move-result v0

    const-string v1, "CapabilityStorage"

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 961
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    const-string p1, "dual rcs is not enabled."

    invoke-static {v1, p0, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    .line 964
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getPhoneId()I

    move-result v0

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    .line 965
    :goto_0
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getCapabilityDiscoveryModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    move-result-object v4

    .line 966
    invoke-interface {v4, v0}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->getCapabilitiesCache(I)Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->get(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/options/Capabilities;

    move-result-object p1

    if-nez p1, :cond_2

    .line 968
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    const-string/jumbo p1, "oppositeCapex is null."

    invoke-static {v1, p0, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    .line 970
    :cond_2
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->checkCapability(Lcom/sec/ims/options/Capabilities;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    .line 971
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    const-string/jumbo p1, "oppositeCapex is CAPABLE_NULL."

    invoke-static {v1, p0, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    .line 974
    :cond_3
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    const-string/jumbo p1, "oppositeCapex is not CAPABLE_NULL."

    invoke-static {v1, p0, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    return v3
.end method

.method public load()V
    .locals 7

    .line 391
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    const-string v1, "load"

    const-string v2, "CapabilityStorage"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 392
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->setIsKor()V

    const-string/jumbo v0, "phone_id = ?"

    .line 396
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    .line 399
    :try_start_0
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;->incrementRefCount()V

    .line 400
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

    const-string v5, "capabilities"

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->projection:[Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v0, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;->getCursor(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 401
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 402
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loading : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " capabilities record."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 403
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    .line 405
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mCapabilitiesCache:Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    invoke-direct {p0, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->convertCursorToCapex(Landroid/database/Cursor;)Lcom/sec/ims/options/Capabilities;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->add(Lcom/sec/ims/options/Capabilities;)V

    add-int/lit8 v0, v0, 0x1

    .line 407
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->getMaxCacheSize()I

    move-result v1
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v1, :cond_0

    .line 412
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;->safeClose(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 410
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "persist: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 415
    :goto_1
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    const-string v0, "load done."

    invoke-static {v2, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 412
    :goto_2
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;->safeClose(Ljava/io/Closeable;)V

    .line 413
    throw v0
.end method

.method needUpdateToContactDB(ZLjava/lang/String;Ljava/lang/String;Lcom/sec/ims/options/Capabilities;Ljava/util/Map;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/sec/ims/options/Capabilities;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 875
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 876
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/internal/ims/util/ConfigUtil;->isJibeAs(I)Z

    move-result v1

    if-eqz p1, :cond_0

    .line 878
    invoke-virtual {p0, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->updateToContactDB(Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/options/Capabilities;)V

    goto/16 :goto_0

    .line 879
    :cond_0
    sget-object p1, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    const-string v2, "N,"

    const-string v3, "CapabilityStorage"

    const-string v4, ","

    if-eq v0, p1, :cond_1

    sget-object p1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v0, p1, :cond_2

    :cond_1
    if-eqz v1, :cond_3

    :cond_2
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    invoke-interface {p5, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 880
    invoke-interface {p5, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p4}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 881
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "needUpdateToContactDB: capex(longFeatures) is different with contact db = "

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p5, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/String;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p5, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide p5

    invoke-virtual {p1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const p5, 0x12040004

    invoke-static {p5, p1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 883
    invoke-virtual {p0, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->updateToContactDB(Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/options/Capabilities;)V

    goto :goto_0

    .line 884
    :cond_4
    sget-object p1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v0, p1, :cond_5

    if-nez v1, :cond_5

    invoke-interface {p6, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 885
    invoke-interface {p6, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p4}, Lcom/sec/ims/options/Capabilities;->getAvailableFeatures()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 886
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "needUpdateToContactDB: capex(availableFeatures) is different with contact db = "

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 887
    invoke-interface {p6, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 886
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p6, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 889
    invoke-virtual {p4}, Lcom/sec/ims/options/Capabilities;->getAvailableFeatures()J

    move-result-wide p5

    invoke-virtual {p1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const p5, 0x12040005

    .line 888
    invoke-static {p5, p1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 890
    invoke-virtual {p0, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->updateToContactDB(Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/options/Capabilities;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public persist()V
    .locals 7

    .line 151
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    const-string/jumbo v1, "persist: start"

    const-string v2, "CapabilityStorage"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mCapabilitiesCache:Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->getUpdatedUriList()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    .line 154
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mCapabilitiesCache:Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->getTrashedUriList()Ljava/util/List;

    move-result-object v1

    .line 155
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    .line 159
    :try_start_0
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 160
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 162
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;->incrementRefCount()V

    if-eqz v0, :cond_2

    .line 163
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 164
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/ims/util/ImsUri;

    .line 165
    invoke-virtual {v0, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/ims/options/Capabilities;

    if-eqz v6, :cond_0

    .line 167
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string/jumbo v6, "persist: not found in cache."

    .line 169
    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 172
    :cond_1
    invoke-direct {p0, v4, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->update(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V

    :cond_2
    if-eqz v1, :cond_3

    .line 174
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 175
    invoke-direct {p0, v4, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->remove(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V

    .line 177
    :cond_3
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    :goto_1
    invoke-direct {p0, v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    .line 191
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "persist: SQLException: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v0

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "persist: SQLiteException: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_2
    move-exception v0

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "persist: SQLiteDatabaseCorruptException: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_3
    move-exception v0

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "persist: SQLiteFullException: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_4
    move-exception v0

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "persist: SQLiteDiskIOException: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :catch_5
    move-exception v0

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "persist: SQLiteDatabaseLockedException: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseLockedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :catch_6
    move-exception v0

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "persist: IllegalStateException: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 196
    :goto_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;->safeClose(Ljava/io/Closeable;)V

    .line 197
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    const-string/jumbo v0, "persist: end"

    invoke-static {v2, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 193
    :goto_3
    invoke-direct {p0, v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 194
    throw v0
.end method

.method public persistToContactDB(Lcom/sec/ims/options/Capabilities;Z)V
    .locals 10

    .line 745
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mIsKor:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mNeedResetRcsData:Z

    if-eqz v0, :cond_0

    .line 746
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mNeedResetRcsData:Z

    .line 747
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->deleteAllRcsDataFromContactDB()V

    :cond_0
    const-string v0, "CapabilityStorage"

    if-nez p1, :cond_1

    const-string/jumbo p0, "persistToContactDB: capex is null"

    .line 750
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 754
    :cond_1
    iget v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "persistToContactDB: isNotifyUpdated "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 756
    invoke-static {}, Lcom/sec/ims/extensions/Extensions$ActivityManager;->getCurrentUser()I

    move-result v2

    iput v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mUserId:I

    .line 759
    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v2

    .line 761
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "/phone_lookup"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 762
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 763
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->getRemoteUriwithUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    if-nez v5, :cond_2

    const-string/jumbo p0, "persistToContactDB: remoteUri is null"

    .line 766
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 770
    :cond_2
    iget v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "persistToContactDB: remoteUri = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 772
    :try_start_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/String;

    const-string v3, "number"

    aput-object v3, v6, v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_4

    :try_start_1
    const-string/jumbo p0, "persistToContactDB: fail to read contact db"

    .line 777
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_3

    .line 793
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    return-void

    .line 780
    :cond_4
    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_5

    .line 781
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    const-string/jumbo p1, "persistToContactDB: no contact found"

    invoke-static {v0, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 793
    :try_start_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_4 .. :try_end_4} :catch_0

    return-void

    .line 785
    :cond_5
    :try_start_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 786
    :cond_6
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 787
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 788
    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 789
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 790
    invoke-direct {p0, v4, v2, p1, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->putCapabilityToContactDB(Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/options/Capabilities;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 793
    :cond_7
    :try_start_6
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_2

    :catchall_0
    move-exception p0

    if-eqz v3, :cond_8

    .line 772
    :try_start_7
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_8
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_1
    throw p0
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception p0

    .line 794
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public reset()V
    .locals 4

    .line 201
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    const-string/jumbo v1, "reset:"

    const-string v2, "CapabilityStorage"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 205
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 206
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;->incrementRefCount()V

    const-string v1, "capabilities"

    const/4 v3, 0x0

    .line 207
    invoke-virtual {v0, v1, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;->safeClose(Ljava/io/Closeable;)V

    .line 215
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mIsKor:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 216
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mNeedResetRcsData:Z

    :cond_0
    return-void

    :catch_0
    move-exception p0

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reset: SQLiteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method setContentValues(Lcom/sec/ims/options/Capabilities;I)Landroid/content/ContentValues;
    .locals 5

    .line 1004
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    .line 1005
    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getTimestamp()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 1006
    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 1007
    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getAvailableFeatures()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    .line 1009
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1010
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsReg()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    const-string v3, "data7"

    .line 1016
    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "data8"

    .line 1017
    invoke-virtual {v2, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "data9"

    .line 1018
    invoke-virtual {v2, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "data10"

    .line 1019
    invoke-virtual {v2, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string v3, "data3"

    .line 1011
    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "data4"

    .line 1012
    invoke-virtual {v2, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "data5"

    .line 1013
    invoke-virtual {v2, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "data6"

    .line 1014
    invoke-virtual {v2, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    :cond_2
    :goto_1
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setContentValues: longFeatures = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", longAvailableFeatures = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CapabilityStorage"

    invoke-static {p2, p0, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    return-object v2
.end method

.method setIsKor()V
    .locals 2

    .line 318
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CapabilityStorage"

    const-string/jumbo v1, "setIsKor: true"

    .line 319
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 320
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mIsKor:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 322
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mIsKor:Z

    :goto_0
    return-void
.end method

.method setProjection()[Ljava/lang/String;
    .locals 9

    .line 919
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mUserId:I

    const-string v1, "data10"

    const-string v2, "data9"

    const/4 v3, 0x1

    const-string v4, "data6"

    const-string v5, "data5"

    const-string v6, "data2"

    const-string v7, "mimetype"

    if-nez v0, :cond_2

    .line 920
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsReg()Z

    move-result v0

    const-string/jumbo v8, "raw_contact_id"

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    if-ne p0, v3, :cond_4

    .line 929
    filled-new-array {v8, v7, v2, v1, v6}, [Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 921
    :cond_1
    :goto_0
    filled-new-array {v8, v7, v5, v4, v6}, [Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 938
    :cond_2
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsReg()Z

    move-result v0

    const-string v8, "_id"

    if-eqz v0, :cond_5

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    if-ne p0, v3, :cond_4

    .line 947
    filled-new-array {v8, v7, v2, v1, v6}, [Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_4
    const/4 p0, 0x0

    goto :goto_2

    .line 939
    :cond_5
    :goto_1
    filled-new-array {v8, v7, v5, v4, v6}, [Ljava/lang/String;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method updateToContactDB(Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/options/Capabilities;)V
    .locals 3

    .line 980
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateToContactDB: phoneNumber : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CapabilityStorage"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 981
    invoke-direct {p0, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->setContentValues(Lcom/sec/ims/options/Capabilities;)Landroid/content/ContentValues;

    move-result-object p3

    .line 983
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->getRemoteUriwithUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 986
    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 987
    invoke-virtual {v0, p3}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p3

    const-string/jumbo v0, "vnd.android.cursor.item/rcs_data"

    filled-new-array {p1, p2, v0}, [Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "raw_contact_id = ? AND data1 = ? AND mimetype = ?"

    .line 988
    invoke-virtual {p3, p2, p1}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p1

    .line 994
    invoke-virtual {p1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p1

    .line 995
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mUpdater:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;->tryPut(Landroid/content/ContentProviderOperation;)V

    return-void
.end method
