.class public final Lokio/AsyncTimeout$sink$1;
.super Ljava/lang/Object;
.source "AsyncTimeout.kt"

# interfaces
.implements Lokio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/AsyncTimeout;->sink(Lokio/Sink;)Lokio/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAsyncTimeout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AsyncTimeout.kt\nokio/AsyncTimeout$sink$1\n+ 2 AsyncTimeout.kt\nokio/AsyncTimeout\n*L\n1#1,329:1\n143#2,11:330\n143#2,11:341\n143#2,11:352\n*S KotlinDebug\n*F\n+ 1 AsyncTimeout.kt\nokio/AsyncTimeout$sink$1\n*L\n99#1:330,11\n105#1:341,11\n109#1:352,11\n*E\n"
.end annotation


# instance fields
.field final synthetic $sink:Lokio/Sink;

.field final synthetic this$0:Lokio/AsyncTimeout;


# direct methods
.method constructor <init>(Lokio/AsyncTimeout;Lokio/Sink;)V
    .locals 0

    iput-object p1, p0, Lokio/AsyncTimeout$sink$1;->this$0:Lokio/AsyncTimeout;

    iput-object p2, p0, Lokio/AsyncTimeout$sink$1;->$sink:Lokio/Sink;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 109
    iget-object v0, p0, Lokio/AsyncTimeout$sink$1;->this$0:Lokio/AsyncTimeout;

    iget-object p0, p0, Lokio/AsyncTimeout$sink$1;->$sink:Lokio/Sink;

    .line 144
    invoke-virtual {v0}, Lokio/AsyncTimeout;->enter()V

    .line 109
    :try_start_0
    invoke-interface {p0}, Lokio/Sink;->close()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    invoke-virtual {v0}, Lokio/AsyncTimeout;->exit()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 153
    invoke-virtual {v0, p0}, Lokio/AsyncTimeout;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 150
    :try_start_1
    invoke-virtual {v0}, Lokio/AsyncTimeout;->exit()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p0}, Lokio/AsyncTimeout;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    :goto_0
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    :goto_1
    invoke-virtual {v0}, Lokio/AsyncTimeout;->exit()Z

    move-result v0

    .line 153
    throw p0
.end method

.method public flush()V
    .locals 2

    .line 105
    iget-object v0, p0, Lokio/AsyncTimeout$sink$1;->this$0:Lokio/AsyncTimeout;

    iget-object p0, p0, Lokio/AsyncTimeout$sink$1;->$sink:Lokio/Sink;

    .line 144
    invoke-virtual {v0}, Lokio/AsyncTimeout;->enter()V

    .line 105
    :try_start_0
    invoke-interface {p0}, Lokio/Sink;->flush()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    invoke-virtual {v0}, Lokio/AsyncTimeout;->exit()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 153
    invoke-virtual {v0, p0}, Lokio/AsyncTimeout;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 150
    :try_start_1
    invoke-virtual {v0}, Lokio/AsyncTimeout;->exit()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p0}, Lokio/AsyncTimeout;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    :goto_0
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    :goto_1
    invoke-virtual {v0}, Lokio/AsyncTimeout;->exit()Z

    move-result v0

    .line 153
    throw p0
.end method

.method public timeout()Lokio/AsyncTimeout;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 112
    iget-object p0, p0, Lokio/AsyncTimeout$sink$1;->this$0:Lokio/AsyncTimeout;

    return-object p0
.end method

.method public bridge synthetic timeout()Lokio/Timeout;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lokio/AsyncTimeout$sink$1;->timeout()Lokio/AsyncTimeout;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncTimeout.sink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lokio/AsyncTimeout$sink$1;->$sink:Lokio/Sink;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public write(Lokio/Buffer;J)V
    .locals 7
    .param p1    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Lokio/_UtilKt;->checkOffsetAndCount(JJJ)V

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_4

    .line 87
    iget-object v2, p1, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_1
    const-wide/32 v3, 0x10000

    cmp-long v3, v0, v3

    if-gez v3, :cond_1

    .line 89
    iget v3, v2, Lokio/Segment;->limit:I

    iget v4, v2, Lokio/Segment;->pos:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v0, v3

    cmp-long v3, v0, p2

    if-ltz v3, :cond_0

    move-wide v0, p2

    goto :goto_2

    .line 95
    :cond_0
    iget-object v2, v2, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_1

    .line 99
    :cond_1
    :goto_2
    iget-object v2, p0, Lokio/AsyncTimeout$sink$1;->this$0:Lokio/AsyncTimeout;

    iget-object v3, p0, Lokio/AsyncTimeout$sink$1;->$sink:Lokio/Sink;

    .line 144
    invoke-virtual {v2}, Lokio/AsyncTimeout;->enter()V

    .line 99
    :try_start_0
    invoke-interface {v3, p1, v0, v1}, Lokio/Sink;->write(Lokio/Buffer;J)V

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    invoke-virtual {v2}, Lokio/AsyncTimeout;->exit()Z

    move-result v3

    if-nez v3, :cond_2

    sub-long/2addr p2, v0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    .line 153
    invoke-virtual {v2, p0}, Lokio/AsyncTimeout;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception p0

    .line 150
    :try_start_1
    invoke-virtual {v2}, Lokio/AsyncTimeout;->exit()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v2, p0}, Lokio/AsyncTimeout;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    :goto_3
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    :goto_4
    invoke-virtual {v2}, Lokio/AsyncTimeout;->exit()Z

    move-result p1

    .line 153
    throw p0

    :cond_4
    return-void
.end method
