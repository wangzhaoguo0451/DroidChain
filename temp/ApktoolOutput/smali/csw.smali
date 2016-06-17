.class public abstract Lcsw;
.super Ljava/lang/Object;
.source "DownloadTask2.java"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lepb;

.field public final c:Lcom/wandoujia/download2/DownloadInfo2;

.field public d:J

.field public e:J

.field public final f:Lcsz;

.field public g:J


# direct methods
.method public constructor <init>(Lcom/wandoujia/download2/DownloadRequestParam;Ljava/lang/String;Lepb;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcsz;

    invoke-direct {v0}, Lcsz;-><init>()V

    iput-object v0, p0, Lcsw;->f:Lcsz;

    .line 20
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcsw;->g:J

    .line 23
    iput-object p2, p0, Lcsw;->a:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcsw;->b:Lepb;

    .line 25
    new-instance v0, Lcom/wandoujia/download2/DownloadInfo2;

    invoke-direct {v0, p1}, Lcom/wandoujia/download2/DownloadInfo2;-><init>(Lcom/wandoujia/download2/DownloadRequestParam;)V

    iput-object v0, p0, Lcsw;->c:Lcom/wandoujia/download2/DownloadInfo2;

    .line 26
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract b()V
.end method

.method public abstract c()V
.end method

.method public abstract d()V
.end method

.method public abstract e()V
.end method

.method public abstract f()V
.end method

.method public abstract g()V
.end method

.method public h()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/net/TrackInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcsw;->b:Lepb;

    iget-wide v2, p0, Lcsw;->g:J

    invoke-virtual {v0, v2, v3}, Lepb;->a(J)Lepj;

    move-result-object v0

    iget-object v0, v0, Lepj;->h:Leps;

    iget-object v0, v0, Leps;->a:Ljava/util/List;

    return-object v0
.end method

.method final j()J
    .locals 4

    .prologue
    .line 43
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcsw;->e:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method final k()J
    .locals 4

    .prologue
    .line 47
    iget-object v0, p0, Lcsw;->c:Lcom/wandoujia/download2/DownloadInfo2;

    iget-wide v0, v0, Lcom/wandoujia/download2/DownloadInfo2;->d:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcsw;->c:Lcom/wandoujia/download2/DownloadInfo2;

    iget-wide v0, v0, Lcom/wandoujia/download2/DownloadInfo2;->e:J

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcsw;->c:Lcom/wandoujia/download2/DownloadInfo2;

    iget-wide v0, v0, Lcom/wandoujia/download2/DownloadInfo2;->d:J

    iget-wide v2, p0, Lcsw;->d:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method final l()J
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lcsw;->g:J

    return-wide v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcsw;->c:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v0, v0, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    iget-object v0, v0, Lcom/wandoujia/download2/DownloadRequestParam;->b:Ljava/lang/String;

    return-object v0
.end method
