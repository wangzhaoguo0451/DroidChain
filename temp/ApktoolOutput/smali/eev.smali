.class final Leev;
.super Ljava/lang/Object;
.source "DownloadUtils.java"

# interfaces
.implements Leeq;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/wandoujia/launcher_base/download/DownloadInfo;)V
    .locals 3
    .parameter

    .prologue
    .line 35
    invoke-static {}, Leeu;->b()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 36
    invoke-static {}, Leeu;->c()[B

    move-result-object v1

    monitor-enter v1

    .line 37
    :try_start_0
    invoke-static {}, Leeu;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    monitor-exit v1

    .line 40
    :cond_0
    return-void

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b(Lcom/wandoujia/launcher_base/download/DownloadInfo;)V
    .locals 3
    .parameter

    .prologue
    .line 44
    sget-object v0, Leex;->a:[I

    invoke-interface {p1}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->h()Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 49
    :pswitch_0
    invoke-static {p1}, Leeu;->a(Lcom/wandoujia/launcher_base/download/DownloadInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    invoke-static {}, Leeu;->d()Ljava/util/Map;

    .line 51
    :cond_1
    invoke-static {p1}, Leeu;->c(Lcom/wandoujia/launcher_base/download/DownloadInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 57
    invoke-static {}, Leeu;->e()Ljava/util/Map;

    .line 58
    :cond_2
    invoke-static {p1}, Leeu;->a(Lcom/wandoujia/launcher_base/download/DownloadInfo;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Leeu;->c(Lcom/wandoujia/launcher_base/download/DownloadInfo;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 64
    :cond_3
    invoke-static {}, Leeu;->f()Ljava/util/Map;

    .line 65
    :cond_4
    invoke-static {}, Leeu;->b()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    invoke-static {}, Leeu;->c()[B

    move-result-object v1

    monitor-enter v1

    .line 72
    :try_start_0
    invoke-static {}, Leeu;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 79
    :pswitch_1
    invoke-static {p1}, Leeu;->a(Lcom/wandoujia/launcher_base/download/DownloadInfo;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 80
    invoke-static {}, Leeu;->d()Ljava/util/Map;

    .line 81
    :cond_5
    invoke-static {p1}, Leeu;->c(Lcom/wandoujia/launcher_base/download/DownloadInfo;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 87
    invoke-static {}, Leeu;->e()Ljava/util/Map;

    .line 88
    :cond_6
    invoke-static {p1}, Leeu;->a(Lcom/wandoujia/launcher_base/download/DownloadInfo;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {p1}, Leeu;->c(Lcom/wandoujia/launcher_base/download/DownloadInfo;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 94
    :cond_7
    invoke-static {}, Leeu;->f()Ljava/util/Map;

    .line 95
    :cond_8
    invoke-static {}, Leeu;->b()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    invoke-static {}, Leeu;->c()[B

    move-result-object v1

    monitor-enter v1

    .line 102
    :try_start_1
    invoke-static {}, Leeu;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 44
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
