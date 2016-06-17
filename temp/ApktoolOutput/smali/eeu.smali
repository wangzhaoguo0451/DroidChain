.class public final Leeu;
.super Ljava/lang/Object;
.source "DownloadUtils.java"


# static fields
.field private static final a:Leeq;

.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/wandoujia/launcher_base/download/DownloadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static c:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Leev;

    invoke-direct {v0}, Leev;-><init>()V

    sput-object v0, Leeu;->a:Leeq;

    .line 114
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Leeu;->c:[B

    return-void
.end method

.method public static a(Leiu;Lcom/wandoujia/entities/app/ApkObbInfo;Lcom/wandoujia/entities/app/DownloadUrl;)Lcom/wandoujia/launcher_base/download/DownloadRequest;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 191
    if-eqz p0, :cond_0

    invoke-interface {p0}, Leiu;->p()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v3

    .line 223
    :goto_0
    return-object v0

    .line 194
    :cond_1
    invoke-interface {p0}, Leiu;->c()J

    move-result-wide v0

    .line 195
    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-eqz v4, :cond_3

    invoke-static {}, Lg;->m()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-gtz v0, :cond_3

    const/4 v0, 0x1

    move v1, v0

    .line 198
    :goto_1
    invoke-interface {p0}, Leiu;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/launcher_base/download/DownloadRequest;->b(Ljava/lang/String;)Leer;

    move-result-object v4

    .line 200
    if-nez p1, :cond_2

    .line 201
    invoke-interface {p0}, Leiu;->p()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/app/ApkObbInfo;

    move-object p1, v0

    .line 203
    :cond_2
    if-nez p2, :cond_4

    move-object v0, v3

    .line 204
    goto :goto_0

    :cond_3
    move v1, v2

    .line 195
    goto :goto_1

    .line 206
    :cond_4
    sget-object v0, Lcom/wandoujia/launcher_base/download/DownloadInfo$ContentType;->UNKNOWN:Lcom/wandoujia/launcher_base/download/DownloadInfo$ContentType;

    .line 207
    const-string v2, "DPK"

    invoke-virtual {p1}, Lcom/wandoujia/entities/app/ApkObbInfo;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 208
    sget-object v0, Lcom/wandoujia/launcher_base/download/DownloadInfo$ContentType;->DPK:Lcom/wandoujia/launcher_base/download/DownloadInfo$ContentType;

    .line 212
    :cond_5
    :goto_2
    invoke-virtual {p2}, Lcom/wandoujia/entities/app/DownloadUrl;->getUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lees;->a:Ljava/lang/String;

    iput-object v0, v4, Lees;->e:Lcom/wandoujia/launcher_base/download/DownloadInfo$ContentType;

    sget-object v0, Lcom/wandoujia/launcher_base/download/DownloadRequest$VerifyType;->PF5:Lcom/wandoujia/launcher_base/download/DownloadRequest$VerifyType;

    invoke-virtual {p1}, Lcom/wandoujia/entities/app/ApkObbInfo;->getPf5()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Lees;->a(Lcom/wandoujia/launcher_base/download/DownloadRequest$VerifyType;Ljava/lang/String;)Lees;

    move-result-object v0

    invoke-interface {p0}, Leiu;->d()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lees;->c:Ljava/lang/String;

    invoke-interface {p0}, Leiu;->b()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lees;->h:Ljava/lang/String;

    invoke-interface {p0}, Leiu;->a()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lees;->b:Ljava/lang/String;

    iput-boolean v1, v0, Lees;->f:Z

    invoke-virtual {p1}, Lcom/wandoujia/entities/app/ApkObbInfo;->getSize()J

    move-result-wide v2

    iput-wide v2, v0, Lees;->g:J

    const-string v1, "extra.packet.dst.path"

    invoke-virtual {p1}, Lcom/wandoujia/entities/app/ApkObbInfo;->getSrcPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lees;->a(Ljava/lang/String;Ljava/lang/String;)Lees;

    move-result-object v0

    const-string v1, "extra.packet.src.path"

    invoke-virtual {p1}, Lcom/wandoujia/entities/app/ApkObbInfo;->getDstPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lees;->a(Ljava/lang/String;Ljava/lang/String;)Lees;

    .line 222
    invoke-interface {p0}, Leiu;->f()I

    move-result v0

    invoke-virtual {v4, v0}, Leer;->a(I)Lees;

    .line 223
    invoke-virtual {v4}, Leer;->a()Lcom/wandoujia/launcher_base/download/DownloadRequest;

    move-result-object v0

    goto/16 :goto_0

    .line 209
    :cond_6
    const-string v2, "GPK"

    invoke-virtual {p1}, Lcom/wandoujia/entities/app/ApkObbInfo;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 210
    sget-object v0, Lcom/wandoujia/launcher_base/download/DownloadInfo$ContentType;->GPK:Lcom/wandoujia/launcher_base/download/DownloadInfo$ContentType;

    goto :goto_2
.end method

.method public static a(Leiu;Ljava/lang/String;)Lcom/wandoujia/launcher_base/download/DownloadRequest;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 152
    if-nez p0, :cond_0

    .line 153
    const/4 v0, 0x0

    .line 178
    :goto_0
    return-object v0

    .line 155
    :cond_0
    invoke-interface {p0}, Leiu;->c()J

    move-result-wide v2

    .line 156
    const-wide/16 v0, -0x1

    cmp-long v0, v2, v0

    if-eqz v0, :cond_1

    invoke-static {}, Lg;->m()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    .line 159
    :goto_1
    invoke-interface {p0}, Leiu;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wandoujia/launcher_base/download/DownloadRequest;->b(Ljava/lang/String;)Leer;

    move-result-object v1

    .line 161
    invoke-interface {p0}, Leiu;->e()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lees;->a:Ljava/lang/String;

    sget-object v4, Lcom/wandoujia/launcher_base/download/DownloadInfo$ContentType;->APP:Lcom/wandoujia/launcher_base/download/DownloadInfo$ContentType;

    iput-object v4, v1, Lees;->e:Lcom/wandoujia/launcher_base/download/DownloadInfo$ContentType;

    sget-object v4, Lcom/wandoujia/launcher_base/download/DownloadRequest$VerifyType;->MD5:Lcom/wandoujia/launcher_base/download/DownloadRequest$VerifyType;

    invoke-interface {p0}, Leiu;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lees;->a(Lcom/wandoujia/launcher_base/download/DownloadRequest$VerifyType;Ljava/lang/String;)Lees;

    move-result-object v4

    invoke-interface {p0}, Leiu;->d()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lees;->c:Ljava/lang/String;

    invoke-interface {p0}, Leiu;->b()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lees;->h:Ljava/lang/String;

    invoke-interface {p0}, Leiu;->a()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lees;->b:Ljava/lang/String;

    iput-boolean v0, v4, Lees;->f:Z

    invoke-static {v2, v3}, Ld;->a(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lees;->j:Ljava/lang/String;

    iput-wide v2, v4, Lees;->g:J

    .line 171
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 172
    invoke-interface {p0}, Leiu;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lees;->b:Ljava/lang/String;

    .line 177
    :goto_2
    invoke-interface {p0}, Leiu;->f()I

    move-result v0

    invoke-virtual {v1, v0}, Leer;->a(I)Lees;

    .line 178
    invoke-virtual {v1}, Leer;->a()Lcom/wandoujia/launcher_base/download/DownloadRequest;

    move-result-object v0

    goto :goto_0

    .line 156
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 174
    :cond_2
    iput-object p1, v1, Lees;->b:Ljava/lang/String;

    goto :goto_2
.end method

.method public static a()V
    .locals 5

    .prologue
    .line 252
    sget-object v1, Leeu;->c:[B

    monitor-enter v1

    .line 253
    :try_start_0
    sget-object v0, Leeu;->b:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 254
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Leeu;->b:Ljava/util/Map;

    .line 255
    invoke-static {}, Legx;->f()Leen;

    move-result-object v0

    invoke-interface {v0}, Leen;->a()Ljava/util/List;

    move-result-object v0

    .line 257
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher_base/download/DownloadInfo;

    .line 258
    sget-object v3, Leeu;->b:Ljava/util/Map;

    invoke-interface {v0}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->c()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 262
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 260
    :cond_0
    :try_start_1
    invoke-static {}, Legx;->f()Leen;

    move-result-object v0

    sget-object v2, Leeu;->a:Leeq;

    invoke-interface {v0, v2}, Leen;->a(Leeq;)V

    .line 262
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public static a(Ljava/lang/String;Leey;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 228
    sget-object v1, Leeu;->c:[B

    monitor-enter v1

    .line 229
    :try_start_0
    sget-object v0, Leeu;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 230
    sget-object v0, Leeu;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher_base/download/DownloadInfo;

    invoke-interface {p1, v0}, Leey;->a(Lcom/wandoujia/launcher_base/download/DownloadInfo;)V

    .line 231
    monitor-exit v1

    .line 249
    :goto_0
    return-void

    .line 233
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    new-instance v0, Leew;

    invoke-direct {v0, p0, p1}, Leew;-><init>(Ljava/lang/String;Leey;)V

    .line 248
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/wandoujia/base/utils/AsyncTaskUtils;->runAsyncTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    goto :goto_0

    .line 233
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(Lcom/wandoujia/launcher_base/download/DownloadInfo;)Z
    .locals 2
    .parameter

    .prologue
    .line 122
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->i()Lcom/wandoujia/launcher_base/download/DownloadInfo$ContentType;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/launcher_base/download/DownloadInfo$ContentType;->APP:Lcom/wandoujia/launcher_base/download/DownloadInfo$ContentType;

    if-eq v0, v1, :cond_0

    invoke-interface {p0}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->i()Lcom/wandoujia/launcher_base/download/DownloadInfo$ContentType;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/launcher_base/download/DownloadInfo$ContentType;->PATCH:Lcom/wandoujia/launcher_base/download/DownloadInfo$ContentType;

    if-eq v0, v1, :cond_0

    invoke-interface {p0}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->i()Lcom/wandoujia/launcher_base/download/DownloadInfo$ContentType;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/launcher_base/download/DownloadInfo$ContentType;->DPK:Lcom/wandoujia/launcher_base/download/DownloadInfo$ContentType;

    if-eq v0, v1, :cond_0

    invoke-interface {p0}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->i()Lcom/wandoujia/launcher_base/download/DownloadInfo$ContentType;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/launcher_base/download/DownloadInfo$ContentType;->GPK:Lcom/wandoujia/launcher_base/download/DownloadInfo$ContentType;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b()Ljava/util/Map;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Leeu;->b:Ljava/util/Map;

    return-object v0
.end method

.method public static b(Lcom/wandoujia/launcher_base/download/DownloadInfo;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 143
    if-nez p0, :cond_1

    .line 147
    :cond_0
    :goto_0
    return v0

    .line 146
    :cond_1
    invoke-interface {p0}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->h()Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    move-result-object v1

    .line 147
    sget-object v2, Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;->CREATED:Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    if-eq v1, v2, :cond_2

    sget-object v2, Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;->DOWNLOADING:Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    if-eq v1, v2, :cond_2

    sget-object v2, Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;->PAUSED:Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    if-eq v1, v2, :cond_2

    sget-object v2, Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;->PENDING:Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    if-ne v1, v2, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic c(Lcom/wandoujia/launcher_base/download/DownloadInfo;)Z
    .locals 2
    .parameter

    .prologue
    .line 31
    invoke-interface {p0}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->i()Lcom/wandoujia/launcher_base/download/DownloadInfo$ContentType;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/launcher_base/download/DownloadInfo$ContentType;->VIDEO:Lcom/wandoujia/launcher_base/download/DownloadInfo$ContentType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c()[B
    .locals 1

    .prologue
    .line 31
    sget-object v0, Leeu;->c:[B

    return-object v0
.end method

.method static synthetic d()Ljava/util/Map;
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic e()Ljava/util/Map;
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic f()Ljava/util/Map;
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    return-object v0
.end method
