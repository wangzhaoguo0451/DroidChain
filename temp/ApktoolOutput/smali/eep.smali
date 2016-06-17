.class public abstract Leep;
.super Ljava/lang/Object;
.source "DownloadInfoGroup.java"

# interfaces
.implements Lcom/wandoujia/launcher_base/download/DownloadInfo;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/launcher_base/download/DownloadInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Leep;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Leep;->a:Ljava/util/List;

    .line 100
    return-void
.end method


# virtual methods
.method public final a(Lcom/wandoujia/launcher_base/download/DownloadInfo;)V
    .locals 2
    .parameter

    .prologue
    .line 21
    if-nez p1, :cond_0

    .line 26
    :goto_0
    return-void

    .line 24
    :cond_0
    iget-object v1, p0, Leep;->a:Ljava/util/List;

    monitor-enter v1

    .line 25
    :try_start_0
    iget-object v0, p0, Leep;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final d()J
    .locals 5

    .prologue
    .line 43
    const-wide/16 v0, 0x0

    .line 44
    iget-object v2, p0, Leep;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher_base/download/DownloadInfo;

    .line 45
    invoke-interface {v0}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->d()J

    move-result-wide v0

    add-long/2addr v0, v2

    move-wide v2, v0

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    return-wide v2
.end method

.method public final e()J
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    .line 61
    .line 62
    iget-object v0, p0, Leep;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide v2, v4

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher_base/download/DownloadInfo;

    .line 63
    if-nez v0, :cond_0

    move-wide v0, v4

    :goto_1
    add-long/2addr v0, v2

    move-wide v2, v0

    .line 64
    goto :goto_0

    .line 63
    :cond_0
    invoke-interface {v0}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->e()J

    move-result-wide v0

    goto :goto_1

    .line 65
    :cond_1
    return-wide v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 144
    if-ne p0, p1, :cond_1

    move v1, v2

    .line 162
    :cond_0
    :goto_0
    return v1

    .line 147
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v0, v3, :cond_0

    .line 151
    check-cast p1, Leep;

    .line 152
    iget-object v0, p0, Leep;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v3, p1, Leep;->a:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v0, v3, :cond_0

    move v0, v1

    .line 156
    :goto_1
    iget-object v3, p0, Leep;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 157
    iget-object v3, p0, Leep;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p1, Leep;->a:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/http/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    .line 162
    goto :goto_0
.end method

.method public final h()Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;
    .locals 5

    .prologue
    .line 70
    sget-object v0, Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;->SUCCESS:Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    .line 71
    iget-object v1, p0, Leep;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher_base/download/DownloadInfo;

    .line 72
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->h()Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->h()Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;->getPriority()I

    move-result v3

    invoke-virtual {v1}, Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;->getPriority()I

    move-result v4

    if-le v3, v4, :cond_1

    .line 74
    invoke-interface {v0}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->h()Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    move-result-object v1

    move-object v0, v1

    :goto_1
    move-object v1, v0

    .line 76
    goto :goto_0

    .line 77
    :cond_0
    return-object v1

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 167
    iget-object v1, p0, Leep;->a:Ljava/util/List;

    if-nez v1, :cond_0

    .line 174
    :goto_0
    return v0

    .line 171
    :cond_0
    iget-object v1, p0, Leep;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher_base/download/DownloadInfo;

    .line 172
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 173
    goto :goto_1

    :cond_1
    move v0, v1

    .line 174
    goto :goto_0
.end method
