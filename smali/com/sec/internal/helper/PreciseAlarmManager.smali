.class public Lcom/sec/internal/helper/PreciseAlarmManager;
.super Ljava/lang/Object;
.source "PreciseAlarmManager.java"


# static fields
.field protected static final INTENT_ALARM_TIMEOUT:Ljava/lang/String; = "com.sec.internal.ims.imsservice.alarmmanager"

.field private static final KEEPALIVE_ALARM:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "PreciseAlarmManager"

.field private static final NON_KEEPALIVE_ALARM:I = 0x1

.field private static final PRECISION:I = 0xfa

.field private static final WAKE_LOCK_TIMEOUT:I = 0x2710

.field private static volatile sInstance:Lcom/sec/internal/helper/PreciseAlarmManager;


# instance fields
.field mContext:Landroid/content/Context;

.field private final mExpiredMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/internal/helper/DelayedMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field mLog:Lcom/sec/internal/helper/SimpleEventLog;

.field mThread:Ljava/lang/Thread;

.field private final mTimers:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lcom/sec/internal/helper/DelayedMessage;",
            ">;"
        }
    .end annotation
.end field

.field mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static synthetic $r8$lambda$SBpQ6tJKRK5HvoO6YcKV5xVQ3sU(Lcom/sec/internal/helper/DelayedMessage;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/helper/PreciseAlarmManager;->lambda$registerAlarmManager$0(Lcom/sec/internal/helper/DelayedMessage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$v2jIxvn0v-GwlnCFgVCVxrbiouA(Lcom/sec/internal/helper/PreciseAlarmManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/helper/PreciseAlarmManager;->lambda$start$1()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mContext:Landroid/content/Context;

    .line 44
    iput-object v0, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mThread:Ljava/lang/Thread;

    .line 46
    new-instance v1, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mTimers:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 48
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mExpiredMessages:Ljava/util/ArrayList;

    .line 55
    iput-object v0, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 219
    new-instance v0, Lcom/sec/internal/helper/PreciseAlarmManager$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/helper/PreciseAlarmManager$1;-><init>(Lcom/sec/internal/helper/PreciseAlarmManager;)V

    iput-object v0, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 77
    iput-object p1, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mContext:Landroid/content/Context;

    .line 78
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.sec.internal.ims.imsservice.alarmmanager"

    .line 79
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    iget-object v2, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 81
    invoke-direct {p0}, Lcom/sec/internal/helper/PreciseAlarmManager;->createWakelock()V

    .line 83
    new-instance v0, Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "PreciseAlarmManager"

    const/16 v2, 0x1f4

    invoke-direct {v0, p1, v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mLog:Lcom/sec/internal/helper/SimpleEventLog;

    return-void
.end method

.method private checkNonKAMessageAndReleaseWakeLock()V
    .locals 7

    .line 233
    iget-object v0, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mExpiredMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 234
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/helper/DelayedMessage;

    .line 235
    invoke-virtual {v1}, Lcom/sec/internal/helper/DelayedMessage;->getTimeout()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/16 v5, 0x2710

    sub-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 236
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 240
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "remained recently expired timers are "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mExpiredMessages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PreciseAlarmManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v0, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mExpiredMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 242
    iget-object p0, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_2
    return-void
.end method

.method private createWakelock()V
    .locals 3

    .line 215
    iget-object v0, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "ImsService"

    .line 216
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/PreciseAlarmManager;
    .locals 3

    const-class v0, Lcom/sec/internal/helper/PreciseAlarmManager;

    monitor-enter v0

    .line 58
    :try_start_0
    sget-object v1, Lcom/sec/internal/helper/PreciseAlarmManager;->sInstance:Lcom/sec/internal/helper/PreciseAlarmManager;

    if-nez v1, :cond_1

    .line 59
    const-class v1, Lcom/sec/internal/helper/PreciseAlarmManager;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 60
    :try_start_1
    sget-object v2, Lcom/sec/internal/helper/PreciseAlarmManager;->sInstance:Lcom/sec/internal/helper/PreciseAlarmManager;

    if-nez v2, :cond_0

    .line 61
    new-instance v2, Lcom/sec/internal/helper/PreciseAlarmManager;

    invoke-direct {v2, p0}, Lcom/sec/internal/helper/PreciseAlarmManager;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/sec/internal/helper/PreciseAlarmManager;->sInstance:Lcom/sec/internal/helper/PreciseAlarmManager;

    .line 62
    invoke-static {}, Lcom/sec/internal/helper/PreciseAlarmManager;->isRoboUnitTest()Z

    move-result p0

    if-nez p0, :cond_0

    .line 63
    sget-object p0, Lcom/sec/internal/helper/PreciseAlarmManager;->sInstance:Lcom/sec/internal/helper/PreciseAlarmManager;

    invoke-direct {p0}, Lcom/sec/internal/helper/PreciseAlarmManager;->start()V

    .line 66
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

    .line 69
    :cond_1
    :goto_0
    sget-object p0, Lcom/sec/internal/helper/PreciseAlarmManager;->sInstance:Lcom/sec/internal/helper/PreciseAlarmManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static isRoboUnitTest()Z
    .locals 2

    const-string/jumbo v0, "robolectric"

    .line 73
    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static synthetic lambda$registerAlarmManager$0(Lcom/sec/internal/helper/DelayedMessage;)V
    .locals 2

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "registerAlarmManager: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PreciseAlarmManager"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic lambda$start$1()V
    .locals 10

    .line 166
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mTimers:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/PriorityBlockingQueue;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 168
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 170
    iget-object v3, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mTimers:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/PriorityBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 171
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 172
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/helper/DelayedMessage;

    .line 174
    invoke-virtual {v4}, Lcom/sec/internal/helper/DelayedMessage;->getMsg()Landroid/os/Message;

    move-result-object v5

    const-string v6, "PreciseAlarmManager"

    if-eqz v5, :cond_2

    .line 175
    invoke-virtual {v5}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v7

    if-nez v7, :cond_0

    goto :goto_2

    .line 181
    :cond_0
    invoke-virtual {v4}, Lcom/sec/internal/helper/DelayedMessage;->getTimeout()J

    move-result-wide v7

    cmp-long v7, v7, v1

    if-gez v7, :cond_3

    .line 182
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Expiring "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v7, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v8, 0x2710

    invoke-virtual {v7, v8, v9}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 184
    iget v7, v5, Landroid/os/Message;->arg2:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 185
    iget-object v7, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mExpiredMessages:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_1
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 188
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 189
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "remaining timers "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mTimers:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/PriorityBlockingQueue;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    :goto_2
    const-string v4, "message is wrong do not handle"

    .line 176
    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 194
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mTimers:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/PriorityBlockingQueue;->size()I

    move-result v1

    if-eq v1, v0, :cond_4

    .line 197
    invoke-direct {p0}, Lcom/sec/internal/helper/PreciseAlarmManager;->registerAlarmManager()V

    :cond_4
    const-wide/16 v0, 0xfa

    .line 204
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 206
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private registerAlarmManager()V
    .locals 9

    .line 88
    iget-object v0, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mTimers:Ljava/util/concurrent/PriorityBlockingQueue;

    monitor-enter v0

    .line 89
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mTimers:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/PriorityBlockingQueue;->size()I

    move-result v1

    const/high16 v2, 0x2000000

    const/4 v3, 0x0

    if-lez v1, :cond_4

    .line 90
    iget-object v1, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mTimers:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/PriorityBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 92
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 93
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/helper/DelayedMessage;

    .line 95
    invoke-virtual {v4}, Lcom/sec/internal/helper/DelayedMessage;->getMsg()Landroid/os/Message;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 96
    invoke-virtual {v5}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    const-string v5, "PreciseAlarmManager"

    .line 101
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "next the soonest timer: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {v4}, Lcom/sec/internal/helper/DelayedMessage;->getTimeout()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_0

    .line 105
    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.sec.internal.ims.imsservice.alarmmanager"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 106
    iget-object v6, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    iget-object v6, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mContext:Landroid/content/Context;

    invoke-static {v6, v3, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 109
    iget-object v2, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, v4, v5}, Lcom/sec/internal/helper/AlarmTimer;->start(Landroid/content/Context;Landroid/app/PendingIntent;J)V

    goto :goto_2

    :cond_2
    :goto_1
    const-string v4, "PreciseAlarmManager"

    const-string v5, "message is wrong do not handle"

    .line 97
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    :goto_2
    const/4 v1, 0x1

    .line 114
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->isShipBuild(Z)Z

    move-result v2

    if-nez v2, :cond_5

    .line 116
    iget-object v2, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mTimers:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/PriorityBlockingQueue;->size()I

    move-result v2

    const-string v4, "PreciseAlarmManager"

    .line 117
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v6, "registerAlarmManager: remaining top %d(size: %d)"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v8, 0xa

    .line 119
    invoke-static {v8, v2}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    .line 117
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object p0, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mTimers:Ljava/util/concurrent/PriorityBlockingQueue;

    new-array v1, v3, [Lcom/sec/internal/helper/DelayedMessage;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sec/internal/helper/DelayedMessage;

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 121
    invoke-interface {p0}, Ljava/util/stream/Stream;->sorted()Ljava/util/stream/Stream;

    move-result-object p0

    const-wide/16 v1, 0xa

    .line 122
    invoke-interface {p0, v1, v2}, Ljava/util/stream/Stream;->limit(J)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/sec/internal/helper/PreciseAlarmManager$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/sec/internal/helper/PreciseAlarmManager$$ExternalSyntheticLambda0;-><init>()V

    .line 123
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_3

    :cond_4
    const-string v1, "PreciseAlarmManager"

    const-string v4, "No pended alarm Timer. remove the registered timer from alarmManager."

    .line 127
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.sec.internal.ims.imsservice.alarmmanager"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 130
    iget-object v4, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    iget-object v4, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mContext:Landroid/content/Context;

    invoke-static {v4, v3, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 133
    iget-object p0, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mContext:Landroid/content/Context;

    invoke-static {p0, v1}, Lcom/sec/internal/helper/AlarmTimer;->stop(Landroid/content/Context;Landroid/app/PendingIntent;)V

    .line 135
    :cond_5
    :goto_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private start()V
    .locals 2

    .line 162
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/internal/helper/PreciseAlarmManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/sec/internal/helper/PreciseAlarmManager$$ExternalSyntheticLambda1;-><init>(Lcom/sec/internal/helper/PreciseAlarmManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mThread:Ljava/lang/Thread;

    .line 211
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public dump()V
    .locals 2

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dump of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PreciseAlarmManager"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object p0, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {p0}, Lcom/sec/internal/helper/SimpleEventLog;->dump()V

    return-void
.end method

.method public declared-synchronized removeMessage(Landroid/os/Message;)V
    .locals 1

    monitor-enter p0

    .line 151
    :try_start_0
    new-instance v0, Lcom/sec/internal/helper/DelayedMessage;

    invoke-direct {v0, p1}, Lcom/sec/internal/helper/DelayedMessage;-><init>(Landroid/os/Message;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/PreciseAlarmManager;->removeMessage(Lcom/sec/internal/helper/DelayedMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeMessage(Lcom/sec/internal/helper/DelayedMessage;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "PreciseAlarmManager"

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v0, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mTimers:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 158
    invoke-direct {p0}, Lcom/sec/internal/helper/PreciseAlarmManager;->registerAlarmManager()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized sendMessageDelayed(Landroid/os/Message;J)Lcom/sec/internal/helper/DelayedMessage;
    .locals 3

    monitor-enter p0

    .line 139
    :try_start_0
    new-instance v0, Lcom/sec/internal/helper/DelayedMessage;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    add-long/2addr p2, v1

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/DelayedMessage;-><init>(Landroid/os/Message;J)V

    .line 140
    iget-object p2, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mTimers:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {p2, v0}, Ljava/util/concurrent/PriorityBlockingQueue;->put(Ljava/lang/Object;)V

    .line 141
    iget-object p2, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendMessageDelayed: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", remaining timers: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mTimers:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/PriorityBlockingQueue;->size()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 142
    invoke-direct {p0}, Lcom/sec/internal/helper/PreciseAlarmManager;->registerAlarmManager()V

    .line 144
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-nez p1, :cond_0

    .line 145
    invoke-direct {p0}, Lcom/sec/internal/helper/PreciseAlarmManager;->checkNonKAMessageAndReleaseWakeLock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
