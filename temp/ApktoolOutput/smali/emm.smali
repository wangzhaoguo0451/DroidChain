.class public final Lemm;
.super Ljava/lang/Object;
.source "LogReporter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/wandoujia/log/LogEventModel;

.field private synthetic b:Lcom/wandoujia/log/LogReporter;


# direct methods
.method private constructor <init>(Lcom/wandoujia/log/LogReporter;Lcom/wandoujia/log/LogEventModel;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lemm;->b:Lcom/wandoujia/log/LogReporter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    iput-object p2, p0, Lemm;->a:Lcom/wandoujia/log/LogEventModel;

    .line 192
    return-void
.end method

.method public synthetic constructor <init>(Lcom/wandoujia/log/LogReporter;Lcom/wandoujia/log/LogEventModel;B)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 187
    invoke-direct {p0, p1, p2}, Lemm;-><init>(Lcom/wandoujia/log/LogReporter;Lcom/wandoujia/log/LogEventModel;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .prologue
    const-wide/32 v12, 0x100000

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 196
    iget-object v2, p0, Lemm;->b:Lcom/wandoujia/log/LogReporter;

    iget-object v3, p0, Lemm;->a:Lcom/wandoujia/log/LogEventModel;

    iget-object v3, v3, Lcom/wandoujia/log/LogEventModel;->b:Ljava/util/Map;

    #calls: Lcom/wandoujia/log/LogReporter;->addCommonParams(Ljava/util/Map;)V
    invoke-static {v2, v3}, Lcom/wandoujia/log/LogReporter;->access$200(Lcom/wandoujia/log/LogReporter;Ljava/util/Map;)V

    .line 197
    iget-object v2, p0, Lemm;->b:Lcom/wandoujia/log/LogReporter;

    #getter for: Lcom/wandoujia/log/LogReporter;->logStorage:Lemr;
    invoke-static {v2}, Lcom/wandoujia/log/LogReporter;->access$300(Lcom/wandoujia/log/LogReporter;)Lemr;

    move-result-object v3

    iget-object v4, p0, Lemm;->a:Lcom/wandoujia/log/LogEventModel;

    iget-object v5, v3, Lemr;->e:[B

    monitor-enter v5

    :try_start_0
    iget-boolean v2, v3, Lemr;->f:Z

    if-nez v2, :cond_3

    new-instance v2, Ljava/io/File;

    iget-object v6, v3, Lemr;->d:Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    array-length v7, v6

    move v2, v1

    :goto_0
    if-ge v2, v7, :cond_2

    aget-object v8, v6, v2

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    const-string v10, "-v2.log"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v3, v8}, Lemr;->a(Ljava/io/File;)V

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v10, v3, Lemr;->d:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, v3, Lemr;->c:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, v3, Lemr;->b:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v3, v8}, Lemr;->a(Ljava/io/File;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, v3, Lemr;->f:Z

    :cond_3
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_4

    new-instance v2, Ljava/io/File;

    iget-object v5, v3, Lemr;->d:Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v5, v6, v12

    if-ltz v5, :cond_5

    invoke-virtual {v3}, Lemr;->a()V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v2, v6, v12

    if-ltz v2, :cond_5

    move v2, v1

    :goto_2
    if-eqz v2, :cond_4

    iget-object v2, v3, Lemr;->a:Lcvo;

    iget-object v5, v4, Lcom/wandoujia/log/LogEventModel;->b:Ljava/util/Map;

    new-instance v6, Lemj;

    invoke-direct {v6}, Lemj;-><init>()V

    invoke-virtual {v6}, Lemj;->getType()Ljava/lang/reflect/Type;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcvo;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "\t"

    const-string v6, " "

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v4, Lcom/wandoujia/log/LogEventModel;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\t"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "\t"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v4, Lcom/wandoujia/log/LogEventModel;->c:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "\t"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v4, Lcom/wandoujia/log/LogEventModel;->d:Lcom/wandoujia/log/LogEventModel$Priority;

    invoke-virtual {v2}, Lcom/wandoujia/log/LogEventModel$Priority;->getLevel()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, v3, Lemr;->e:[B

    monitor-enter v4

    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/io/FileOutputStream;

    iget-object v3, v3, Lemr;->d:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-direct {v5, v3, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-static {v2, v5}, Lcom/wandoujia/base/utils/IOUtils;->writeString(Ljava/lang/String;Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 198
    :cond_4
    iget-object v2, p0, Lemm;->a:Lcom/wandoujia/log/LogEventModel;

    iget-object v2, v2, Lcom/wandoujia/log/LogEventModel;->d:Lcom/wandoujia/log/LogEventModel$Priority;

    sget-object v3, Lcom/wandoujia/log/LogEventModel$Priority;->REAL_TIME:Lcom/wandoujia/log/LogEventModel$Priority;

    if-ne v2, v3, :cond_6

    .line 200
    :goto_4
    iget-object v1, p0, Lemm;->b:Lcom/wandoujia/log/LogReporter;

    #getter for: Lcom/wandoujia/log/LogReporter;->logSender:Lcom/wandoujia/log/LogSender;
    invoke-static {v1}, Lcom/wandoujia/log/LogReporter;->access$400(Lcom/wandoujia/log/LogReporter;)Lcom/wandoujia/log/LogSender;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/wandoujia/log/LogSender;->triggerSend(Z)V

    .line 201
    return-void

    :cond_5
    move v2, v0

    .line 197
    goto/16 :goto_2

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :cond_6
    move v0, v1

    .line 198
    goto :goto_4

    :catch_0
    move-exception v2

    goto :goto_3
.end method
