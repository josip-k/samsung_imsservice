.class Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler$RcsDbSessionObserver;
.super Landroid/database/ContentObserver;
.source "RcsScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RcsDbSessionObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;Landroid/os/Handler;)V
    .locals 0

    .line 1213
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler$RcsDbSessionObserver;->this$0:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    .line 1214
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 17

    move-object/from16 v0, p0

    const-string/jumbo v1, "status"

    const-string v2, "icon_timestamp"

    const-string v3, "icon_participant"

    const-string v4, "contribution_id"

    const-string v5, "conversation_id"

    const-string v6, "icon_path"

    const-string/jumbo v7, "session_uri"

    const-string v8, "inserted_time_stamp"

    .line 1219
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v9

    .line 1220
    iget-object v10, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler$RcsDbSessionObserver;->this$0:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-static {v10}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "RcsDbSessionObserver chatId: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 1223
    iget-object v11, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler$RcsDbSessionObserver;->this$0:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    iget-object v11, v11, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v11, v9}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->querySessionUsingChatId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    if-eqz v11, :cond_6

    .line 1224
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-eqz v12, :cond_6

    const-string/jumbo v12, "sim_imsi"

    .line 1225
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1226
    iget-object v13, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler$RcsDbSessionObserver;->this$0:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    iget-object v13, v13, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v13}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCurrentIMSI()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 1227
    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler$RcsDbSessionObserver;->this$0:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "different sim imsi return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1268
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    return-void

    .line 1230
    :cond_0
    :try_start_1
    invoke-interface {v11, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1231
    invoke-interface {v11, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v11, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1232
    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v11, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1233
    iget-object v15, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler$RcsDbSessionObserver;->this$0:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-static {v15}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 p1, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v5

    const-string v5, "onChange iconPath:  "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1235
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1236
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1237
    invoke-virtual {v10, v6, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1238
    invoke-virtual {v10, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    invoke-virtual {v10, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1241
    :cond_1
    invoke-interface {v11, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1242
    iget-object v3, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler$RcsDbSessionObserver;->this$0:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    iget-object v3, v3, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v3, v9}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->queryBufferDBSessionByChatId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v3, :cond_4

    .line 1243
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1244
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1245
    iget-object v6, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler$RcsDbSessionObserver;->this$0:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-static {v6}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;)Ljava/lang/String;

    move-result-object v6

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "on Change existiongSessionUri: "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1247
    invoke-interface {v11, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1248
    iget-object v6, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler$RcsDbSessionObserver;->this$0:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-static {v6}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;)Ljava/lang/String;

    move-result-object v6

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onChange sessionUri: "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "is_group_chat"

    const/4 v12, 0x1

    .line 1250
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v6, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1251
    invoke-virtual {v10, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1254
    :cond_2
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1255
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_0

    :cond_3
    const-wide/16 v5, 0x0

    :goto_0
    cmp-long v5, v1, v5

    if-lez v5, :cond_4

    .line 1257
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 1242
    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1

    :cond_4
    :goto_2
    if-eqz v3, :cond_5

    .line 1260
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1261
    :cond_5
    invoke-virtual {v10, v4, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, v16

    .line 1262
    invoke-virtual {v10, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, p1

    .line 1263
    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1264
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1266
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler$RcsDbSessionObserver;->this$0:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    iget-object v1, v1, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v1, v9, v10}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->updateSessionBufferDb(Ljava/lang/String;Landroid/content/ContentValues;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v1, v0

    .line 1223
    :try_start_5
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v1

    :cond_6
    :goto_4
    if-eqz v11, :cond_7

    .line 1268
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1269
    :cond_7
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1270
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler$RcsDbSessionObserver;->this$0:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    iget-object v2, v2, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v2, v9}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->queryParticipantsUsingChatId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    const-string/jumbo v3, "uri"

    if-eqz v2, :cond_8

    .line 1272
    :goto_5
    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1273
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1274
    invoke-static {v4}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_5

    :catchall_4
    move-exception v0

    move-object v1, v0

    .line 1270
    :try_start_7
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_6

    :catchall_5
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw v1

    :cond_8
    if-eqz v2, :cond_9

    .line 1277
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1279
    :cond_9
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler$RcsDbSessionObserver;->this$0:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    iget-object v2, v2, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v2, v9}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->queryParticipantsFromBufferDb(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 1281
    :goto_7
    :try_start_8
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1282
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1283
    iget-object v5, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler$RcsDbSessionObserver;->this$0:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    iget-object v6, v5, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mContext:Landroid/content/Context;

    iget-object v5, v5, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 1284
    invoke-interface {v5}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v5

    invoke-static {v6, v5}, Lcom/sec/internal/ims/cmstore/utils/Util;->getSimCountryCode(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    .line 1283
    invoke-static {v4, v5}, Lcom/sec/internal/ims/cmstore/utils/Util;->getNormalizedTelUri(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    .line 1285
    iget-object v6, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler$RcsDbSessionObserver;->this$0:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-static {v6}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "participant = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", telUri = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v5, :cond_a

    goto :goto_7

    .line 1290
    :cond_a
    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1291
    invoke-interface {v1, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_7

    .line 1293
    :cond_b
    iget-object v5, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler$RcsDbSessionObserver;->this$0:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-static {v5}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "remove participant = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    iget-object v5, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler$RcsDbSessionObserver;->this$0:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    iget-object v5, v5, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v5, v4, v9}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->deleteParticipantsFromBufferDb(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :catchall_6
    move-exception v0

    move-object v1, v0

    goto :goto_8

    .line 1299
    :cond_c
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    if-lez v3, :cond_d

    .line 1300
    iget-object v3, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler$RcsDbSessionObserver;->this$0:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "insert new participant"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler$RcsDbSessionObserver;->this$0:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v0, v1, v9}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->insertNewParticipantToBufferDB(Ljava/util/Set;Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    :cond_d
    if-eqz v2, :cond_e

    .line 1303
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_e
    return-void

    :goto_8
    if-eqz v2, :cond_f

    .line 1279
    :try_start_9
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    goto :goto_9

    :catchall_7
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_f
    :goto_9
    throw v1
.end method
