.class public final Lhac;
.super Ljava/lang/Object;
.source "PushService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:J

.field private synthetic c:Lcom/wandoujia/push2/PushService;


# direct methods
.method public constructor <init>(Lcom/wandoujia/push2/PushService;Ljava/lang/String;J)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lhac;->c:Lcom/wandoujia/push2/PushService;

    iput-object p2, p0, Lhac;->a:Ljava/lang/String;

    iput-wide p3, p0, Lhac;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .prologue
    const/4 v2, 0x0

    const/4 v12, 0x1

    .line 187
    invoke-static {}, Lcom/wandoujia/push2/PushService;->b()Landroid/util/Pair;

    move-result-object v1

    .line 188
    if-nez v1, :cond_0

    .line 189
    iget-object v0, p0, Lhac;->c:Lcom/wandoujia/push2/PushService;

    invoke-static {v0}, Lcom/wandoujia/push2/PushService;->d(Lcom/wandoujia/push2/PushService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 261
    :goto_0
    return-void

    .line 192
    :cond_0
    const/16 v0, 0x400

    new-array v6, v0, [B

    .line 195
    new-instance v7, Lcom/squareup/wire/Wire;

    new-array v0, v2, [Ljava/lang/Class;

    invoke-direct {v7, v0}, Lcom/squareup/wire/Wire;-><init>([Ljava/lang/Class;)V

    .line 196
    const/16 v2, 0x384

    .line 199
    :try_start_0
    new-instance v8, Ljava/net/Socket;

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v8, v0, v1}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    .line 200
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x384

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {v8, v0}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 208
    :try_start_1
    new-instance v9, Ljava/io/DataInputStream;

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {v8}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v9, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 210
    new-instance v10, Ljava/io/DataOutputStream;

    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-virtual {v8}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v10, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 213
    iget-object v0, p0, Lhac;->a:Ljava/lang/String;

    iget-wide v4, p0, Lhac;->b:J

    invoke-static {v0, v4, v5}, Lcom/wandoujia/push2/PushService;->a(Ljava/lang/String;J)Lcom/wandoujia/push2/protocol/proto/Upload;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/wandoujia/push2/PushService;->a(Ljava/io/DataOutputStream;Lcom/squareup/wire/Message;)V

    move-object v0, v6

    .line 215
    :goto_1
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 216
    array-length v1, v0

    if-ge v1, v3, :cond_4

    .line 217
    new-array v0, v3, [B

    move-object v6, v0

    .line 219
    :goto_2
    const/4 v0, 0x0

    invoke-virtual {v9, v6, v0, v3}, Ljava/io/DataInputStream;->readFully([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4

    .line 221
    const/4 v1, 0x0

    .line 223
    const/4 v0, 0x0

    :try_start_2
    const-class v4, Lcom/wandoujia/push2/protocol/proto/Download;

    invoke-virtual {v7, v6, v0, v3, v4}, Lcom/squareup/wire/Wire;->parseFrom([BIILjava/lang/Class;)Lcom/squareup/wire/Message;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/push2/protocol/proto/Download;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_4

    move-object v3, v0

    .line 225
    :goto_3
    const-wide/16 v0, 0x0

    .line 226
    if-eqz v3, :cond_3

    .line 227
    :try_start_3
    iget-object v4, v3, Lcom/wandoujia/push2/protocol/proto/Download;->messages:Ljava/util/List;

    if-eqz v4, :cond_2

    iget-object v4, v3, Lcom/wandoujia/push2/protocol/proto/Download;->messages:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 228
    new-instance v0, Lgzq;

    invoke-direct {v0}, Lgzq;-><init>()V

    .line 229
    const-string v1, "count"

    iget-object v4, v3, Lcom/wandoujia/push2/protocol/proto/Download;->messages:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lgzq;->a(Ljava/lang/String;Ljava/lang/String;)Lgzq;

    .line 230
    sget-object v1, Lcom/wandoujia/push2/LogHelper$Action;->RECV_MSG_FROM_SERVER:Lcom/wandoujia/push2/LogHelper$Action;

    invoke-static {v1, v0}, Ld;->a(Lcom/wandoujia/push2/LogHelper$Action;Lgzq;)V

    .line 232
    iget-object v0, v3, Lcom/wandoujia/push2/protocol/proto/Download;->messages:Ljava/util/List;

    iget-object v1, v3, Lcom/wandoujia/push2/protocol/proto/Download;->messages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/push2/protocol/proto/Download$Msg;

    iget-object v0, v0, Lcom/wandoujia/push2/protocol/proto/Download$Msg;->id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 233
    iget-object v0, v3, Lcom/wandoujia/push2/protocol/proto/Download;->messages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/push2/protocol/proto/Download$Msg;

    .line 234
    iget-object v11, p0, Lhac;->c:Lcom/wandoujia/push2/PushService;

    invoke-static {v11, v0}, Lcom/wandoujia/push2/PushService;->a(Lcom/wandoujia/push2/PushService;Lcom/wandoujia/push2/protocol/proto/Download$Msg;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_4

    :catch_0
    move-exception v0

    .line 247
    :try_start_4
    invoke-virtual {v8}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 257
    :goto_5
    iget-object v0, p0, Lhac;->c:Lcom/wandoujia/push2/PushService;

    invoke-static {v0}, Lcom/wandoujia/push2/PushService;->d(Lcom/wandoujia/push2/PushService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 202
    :catch_1
    move-exception v0

    iget-object v0, p0, Lhac;->c:Lcom/wandoujia/push2/PushService;

    invoke-static {v0}, Lcom/wandoujia/push2/PushService;->d(Lcom/wandoujia/push2/PushService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :catch_2
    move-exception v0

    move-object v3, v1

    goto :goto_3

    :cond_1
    move-wide v0, v4

    .line 238
    :cond_2
    :try_start_5
    iget-object v4, v3, Lcom/wandoujia/push2/protocol/proto/Download;->conf:Lcom/wandoujia/push2/protocol/proto/Download$Conf;

    if-eqz v4, :cond_3

    iget-object v4, v3, Lcom/wandoujia/push2/protocol/proto/Download;->conf:Lcom/wandoujia/push2/protocol/proto/Download$Conf;

    iget-object v4, v4, Lcom/wandoujia/push2/protocol/proto/Download$Conf;->timeout:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v2, :cond_3

    .line 239
    iget-object v2, v3, Lcom/wandoujia/push2/protocol/proto/Download;->conf:Lcom/wandoujia/push2/protocol/proto/Download$Conf;

    iget-object v2, v2, Lcom/wandoujia/push2/protocol/proto/Download$Conf;->timeout:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 240
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v4, v2

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    long-to-int v3, v4

    invoke-virtual {v8, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 244
    :cond_3
    invoke-static {v0, v1}, Lcom/wandoujia/push2/PushService;->a(J)Lcom/wandoujia/push2/protocol/proto/Upload;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/wandoujia/push2/PushService;->a(Ljava/io/DataOutputStream;Lcom/squareup/wire/Message;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_4

    move-object v0, v6

    .line 245
    goto/16 :goto_1

    :catch_3
    move-exception v0

    .line 249
    :try_start_6
    invoke-virtual {v8}, Ljava/net/Socket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 257
    :goto_6
    iget-object v0, p0, Lhac;->c:Lcom/wandoujia/push2/PushService;

    invoke-static {v0}, Lcom/wandoujia/push2/PushService;->d(Lcom/wandoujia/push2/PushService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :catch_4
    move-exception v0

    .line 251
    :try_start_7
    invoke-virtual {v8}, Ljava/net/Socket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    .line 257
    :goto_7
    iget-object v0, p0, Lhac;->c:Lcom/wandoujia/push2/PushService;

    invoke-static {v0}, Lcom/wandoujia/push2/PushService;->d(Lcom/wandoujia/push2/PushService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 253
    :catchall_0
    move-exception v0

    .line 255
    :try_start_8
    invoke-virtual {v8}, Ljava/net/Socket;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    .line 257
    :goto_8
    iget-object v1, p0, Lhac;->c:Lcom/wandoujia/push2/PushService;

    invoke-static {v1}, Lcom/wandoujia/push2/PushService;->d(Lcom/wandoujia/push2/PushService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    throw v0

    :catch_5
    move-exception v0

    goto :goto_5

    :catch_6
    move-exception v0

    goto :goto_6

    :catch_7
    move-exception v0

    goto :goto_7

    :catch_8
    move-exception v1

    goto :goto_8

    :cond_4
    move-object v6, v0

    goto/16 :goto_2
.end method
