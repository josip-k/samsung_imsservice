.class public Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;
.super Landroid/content/ContentProvider;
.source "EntitlementConfigProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final CREATE_DEVICE_CONFIG_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS entitlement_config(_id INTEGER PRIMARY KEY AUTOINCREMENT,version TEXT, imsi TEXT NOT NULL, device_config TEXT,backup_version TEXT,validity TEXT,next_config_time TEXT,token TEXT,completed TEXT,tc_popup_user_accept TEXT);"

.field private static final DATABASE_NAME:Ljava/lang/String; = "entitlement_config.db"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final DEFAULT_SIM_SLOT_IDX:I = 0x0

.field private static final DEVICE_CONFIG_TABLE:Ljava/lang/String; = "entitlement_config"

.field private static final ENTITLEMENT_FORCE_UPDATE_EXPIRATION_TIME:J = 0x493e0L

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final PROVIDER_NAME:Ljava/lang/String; = "com.samsung.ims.entitlementconfig.provider"

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private configUpdateDate:Ljava/util/Date;

.field protected mContext:Landroid/content/Context;

.field private mDatabaseHelper:Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$DatabaseHelper;

.field private final mLock:Ljava/lang/Object;

.field protected mService:Landroid/os/Messenger;

.field private mSvcConn:Landroid/content/ServiceConnection;


# direct methods
.method static bridge synthetic -$$Nest$fputmDatabaseHelper(Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$DatabaseHelper;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$DatabaseHelper;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 42
    const-class v0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->LOG_TAG:Ljava/lang/String;

    .line 53
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "config"

    const/4 v2, 0x1

    const-string v3, "com.samsung.ims.entitlementconfig.provider"

    .line 78
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "config/xpath"

    const/4 v2, 0x3

    .line 79
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "config/jansky_config"

    const/4 v2, 0x2

    .line 80
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "config/rcs_config"

    const/4 v2, 0x4

    .line 81
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "config/force_update"

    const/4 v2, 0x5

    .line 82
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "config/entitlement_url"

    const/4 v2, 0x6

    .line 83
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v1, "reconnect_db"

    const/4 v2, 0x7

    .line 84
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "binding_service"

    const/16 v2, 0x8

    .line 85
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "config/tag"

    const/16 v2, 0x9

    .line 86
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mContext:Landroid/content/Context;

    .line 51
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$DatabaseHelper;

    .line 61
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->configUpdateDate:Ljava/util/Date;

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private NotifyDeleteDb()V
    .locals 3

    .line 245
    :try_start_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0xca

    .line 246
    iput v1, v0, Landroid/os/Message;->what:I

    .line 247
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mService:Landroid/os/Messenger;

    invoke-virtual {p0, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 249
    sget-object v0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NotifyDeleteDb: failed to request"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private declared-synchronized connectToEntitlementConfigService()V
    .locals 5

    monitor-enter p0

    .line 448
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->LOG_TAG:Ljava/lang/String;

    const-string v1, "connectToEntitlementConfigService()"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.imsservice"

    const-string v2, "com.sec.internal.ims.entitlement.config.EntitlementConfigService"

    .line 462
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 463
    new-instance v1, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$1;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$1;-><init>(Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;)V

    iput-object v1, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mSvcConn:Landroid/content/ServiceConnection;

    .line 480
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mSvcConn:Landroid/content/ServiceConnection;

    sget-object v3, Lcom/sec/ims/extensions/ContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    const/4 v4, 0x1

    invoke-static {v1, v0, v2, v4, v3}, Lcom/sec/ims/extensions/ContextExt;->bindServiceAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 481
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getJanskyConfigXmlBlock()Landroid/database/Cursor;
    .locals 1

    const-string v0, "//janskyConfig"

    .line 404
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->getXmlConfigByTag(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method private getNsdsElementsWithXPath(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 14

    .line 349
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 353
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_1
    const-string/jumbo v6, "tag_name"

    .line 355
    invoke-virtual {p1, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 356
    :try_start_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 357
    sget-object p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Empty tag name. Return null"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 387
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    return-object v5

    :cond_0
    :try_start_4
    const-string/jumbo v7, "slot"

    .line 360
    invoke-virtual {p1, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array v9, v3, [Ljava/lang/String;

    const-string v7, "device_config"

    aput-object v7, v9, v4

    .line 363
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 364
    sget-object p1, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->LOG_TAG:Ljava/lang/String;

    const-string v7, "Empty slot. query regardless slot"

    invoke-static {p1, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/sec/internal/constants/ims/entitilement/EntitlementConfigContract$DeviceConfig;->CONTENT_URI:Landroid/net/Uri;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    goto :goto_2

    .line 367
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 368
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, ""

    goto :goto_0

    .line 369
    :cond_2
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string v7, "imsi = ?"

    .line 371
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v8

    .line 372
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    move-object v10, v5

    move-object v11, v10

    goto :goto_1

    :cond_3
    move-object v10, v7

    move-object v11, v8

    .line 376
    :goto_1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/sec/internal/constants/ims/entitilement/EntitlementConfigContract$DeviceConfig;->CONTENT_URI:Landroid/net/Uri;

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_2
    if-eqz p0, :cond_4

    .line 378
    :try_start_5
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 379
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    move-object v5, p0

    move-object p0, p1

    goto/16 :goto_8

    :catch_0
    move-exception p1

    move-object v13, p1

    move-object p1, p0

    move-object p0, v13

    goto :goto_5

    :cond_4
    :goto_3
    if-eqz p0, :cond_5

    .line 385
    :try_start_6
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 387
    :cond_5
    :goto_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_6

    :catch_1
    move-exception p0

    move-object p1, v5

    goto :goto_5

    :catchall_1
    move-exception p0

    goto :goto_8

    :catch_2
    move-exception p0

    move-object p1, v5

    move-object v6, p1

    .line 382
    :goto_5
    :try_start_7
    sget-object v7, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SQL exception while parseDeviceConfig "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz p1, :cond_5

    .line 385
    :try_start_8
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .line 390
    :goto_6
    new-instance p0, Landroid/database/MatrixCursor;

    const/4 p1, 0x2

    new-array v1, p1, [Ljava/lang/String;

    const-string v2, "element_name"

    aput-object v2, v1, v4

    const-string v2, "element_value"

    aput-object v2, v1, v3

    invoke-direct {p0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v5, :cond_6

    .line 392
    invoke-static {v5, v6}, Lcom/sec/internal/ims/entitlement/util/ConfigElementExtractor;->getAllElements(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 393
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-array v6, p1, [Ljava/lang/String;

    aput-object v5, v6, v4

    .line 394
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v6, v3

    invoke-virtual {p0, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_7

    .line 397
    :cond_6
    sget-object p1, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Device Config is null: "

    invoke-static {p1, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    :cond_7
    monitor-exit v0

    return-object p0

    :catchall_2
    move-exception p0

    move-object v5, p1

    :goto_8
    if-eqz v5, :cond_8

    .line 385
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 387
    :cond_8
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 388
    throw p0

    :catchall_3
    move-exception p0

    .line 400
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw p0
.end method

.method private getRcsConfigXmlBlock()Landroid/database/Cursor;
    .locals 1

    const-string v0, "//RCSConfig/wap-provisioningdoc|//wap-provisioningdoc"

    .line 408
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->getXmlConfigByTag(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method private getXmlConfigByTag(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "device_config"

    const/4 v8, 0x0

    aput-object v0, v4, v8

    .line 425
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/entitilement/EntitlementConfigContract$DeviceConfig;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 426
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz p0, :cond_1

    .line 433
    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_1
    move-exception v0

    move-object p0, v1

    .line 430
    :goto_2
    :try_start_2
    sget-object v2, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SQL exception while parseDeviceConfig "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p0, :cond_1

    goto :goto_1

    .line 437
    :cond_1
    :goto_3
    new-instance p0, Landroid/database/MatrixCursor;

    const-string/jumbo v0, "xml_config"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v1, :cond_2

    .line 439
    invoke-static {v1, p1}, Lcom/sec/internal/ims/entitlement/util/CompleteXMLBlockExtractor;->getXmlBlockForElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 440
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_4

    .line 442
    :cond_2
    sget-object p1, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Device Config is null: "

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-object p0

    :catchall_1
    move-exception p1

    move-object v1, p0

    :goto_5
    if-eqz v1, :cond_3

    .line 433
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 435
    :cond_3
    throw p1
.end method

.method private getXmlConfigbyTagUri(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 1

    const-string/jumbo v0, "tag_name"

    .line 412
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 413
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    sget-object p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Empty tag name. Return null"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 417
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->getXmlConfigByTag(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method private insertDeviceConfig(Landroid/content/ContentValues;)J
    .locals 5

    .line 174
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$DatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 175
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-wide/16 v0, -0x1

    :try_start_0
    const-string v2, "entitlement_config"

    const/4 v3, 0x0

    .line 178
    invoke-virtual {p0, v2, v3, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 179
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    :goto_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 181
    :try_start_1
    sget-object v2, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not insert into device_config table:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-wide v0

    .line 183
    :goto_2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 184
    throw p1
.end method

.method private updateDeviceConfig(Landroid/content/ContentValues;)I
    .locals 4

    .line 195
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$DatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 196
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "entitlement_config"

    const/4 v2, 0x0

    .line 199
    invoke-virtual {p0, v1, p1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 200
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    :goto_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 202
    :try_start_1
    sget-object v1, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not update connectivity_parameters table:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return v0

    .line 204
    :goto_2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 205
    throw p1
.end method

.method private updateEntitlementUrl(Landroid/net/Uri;)V
    .locals 3

    const-string v0, "entitlement_url"

    .line 229
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 232
    :try_start_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0xc9

    .line 233
    iput v1, v0, Landroid/os/Message;->what:I

    .line 234
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "URL"

    .line 235
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 237
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mService:Landroid/os/Messenger;

    invoke-virtual {p0, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 239
    sget-object p1, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateEntitlementUrl: failed to request"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    .line 114
    sget-object v0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$DatabaseHelper;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_4

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$DatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 123
    :try_start_0
    sget-object v2, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    goto :goto_0

    .line 126
    :cond_1
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->NotifyDeleteDb()V

    const-string p0, "entitlement_config"

    .line 127
    invoke-virtual {v0, p0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 132
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    :goto_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 134
    :try_start_1
    sget-object p1, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Could not delete:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    return v1

    .line 136
    :goto_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 137
    throw p0

    :cond_2
    :goto_4
    return v1
.end method

.method public forceConfigUpdate()V
    .locals 4

    .line 210
    sget-object v0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->LOG_TAG:Ljava/lang/String;

    const-string v1, "forceConfigUpdate()"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->configUpdateDate:Ljava/util/Date;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 215
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->configUpdateDate:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x493e0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 217
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->configUpdateDate:Ljava/util/Date;

    .line 218
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x6c

    .line 219
    iput v1, v0, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    .line 220
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 221
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mService:Landroid/os/Messenger;

    invoke-virtual {p0, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 223
    sget-object v0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not force update config"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3

    .line 148
    sget-object v0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insert:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$DatabaseHelper;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 154
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 156
    :cond_1
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->insertDeviceConfig(Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 157
    invoke-static {v0, v1}, Lcom/sec/internal/constants/ims/entitilement/EntitlementConfigContract$DeviceConfig;->buildDeviceConfigUri(J)Landroid/net/Uri;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    .line 163
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->notifyChange(Landroid/net/Uri;)V

    :cond_2
    :goto_1
    return-object v1
.end method

.method public notifyChange(Landroid/net/Uri;)V
    .locals 1

    .line 169
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onCreate()Z
    .locals 1

    .line 255
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 256
    invoke-virtual {v0}, Landroid/content/Context;->createCredentialProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mContext:Landroid/content/Context;

    const/4 p0, 0x1

    return p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10

    .line 262
    sget-object v0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "query "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$DatabaseHelper;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$DatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 269
    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 270
    sget-object v0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_5

    const/4 p2, 0x2

    if-eq v0, p2, :cond_4

    const/4 p2, 0x3

    if-eq v0, p2, :cond_3

    const/4 p2, 0x4

    if-eq v0, p2, :cond_2

    const/16 p2, 0x9

    if-eq v0, p2, :cond_1

    goto :goto_0

    .line 285
    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->getXmlConfigbyTagUri(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0

    .line 282
    :cond_2
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->getRcsConfigXmlBlock()Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0

    .line 276
    :cond_3
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->getNsdsElementsWithXPath(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0

    .line 279
    :cond_4
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->getJanskyConfigXmlBlock()Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0

    :cond_5
    const-string p0, "entitlement_config"

    .line 272
    invoke-virtual {v2, p0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v9, p5

    .line 273
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :cond_6
    :goto_0
    return-object v1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    .line 295
    sget-object p3, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->LOG_TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "update "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    sget-object p4, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const-string p1, "Binding to EntitlementConfigService"

    .line 299
    invoke-static {p3, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->connectToEntitlementConfigService()V

    return v2

    .line 304
    :cond_0
    invoke-virtual {p4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    const-string p1, "Reconnect DB for DatabaseHelper"

    .line 305
    invoke-static {p3, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$DatabaseHelper;

    if-eqz p1, :cond_1

    const-string p1, "Reconnect DB after closing the previous DB"

    .line 307
    invoke-static {p3, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$DatabaseHelper;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 310
    :cond_1
    new-instance p1, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$DatabaseHelper;

    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$DatabaseHelper;

    return v2

    .line 314
    :cond_2
    iget-object p3, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$DatabaseHelper;

    if-eqz p3, :cond_8

    iget-object p3, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;->isUserUnlocked(Landroid/content/Context;)Z

    move-result p3

    if-nez p3, :cond_3

    goto :goto_4

    .line 318
    :cond_3
    iget-object p3, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$DatabaseHelper;

    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p3

    .line 319
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 321
    :try_start_0
    invoke-virtual {p4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p4

    const/4 v0, 0x1

    if-eq p4, v0, :cond_6

    const/4 p2, 0x5

    if-eq p4, p2, :cond_5

    const/4 p2, 0x6

    if-eq p4, p2, :cond_4

    goto :goto_0

    .line 329
    :cond_4
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->updateEntitlementUrl(Landroid/net/Uri;)V

    goto :goto_0

    .line 326
    :cond_5
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->forceConfigUpdate()V

    goto :goto_0

    .line 323
    :cond_6
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->updateDeviceConfig(Landroid/content/ContentValues;)I

    move-result v2

    .line 334
    :goto_0
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    :goto_1
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p2

    .line 336
    :try_start_1
    sget-object p4, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not update table:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p4, p2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    if-eqz v2, :cond_7

    .line 342
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->notifyChange(Landroid/net/Uri;)V

    :cond_7
    return v2

    .line 338
    :goto_3
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 339
    throw p0

    :cond_8
    :goto_4
    return v2
.end method
