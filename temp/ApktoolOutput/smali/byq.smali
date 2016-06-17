.class public final Lbyq;
.super Ljava/lang/Object;
.source "HttpEngine.java"

# interfaces
.implements Lhth;


# instance fields
.field private a:Z

.field private synthetic b:Lhss;

.field private synthetic c:Lcom/squareup/okhttp/internal/http/CacheRequest;

.field private synthetic d:Lhsr;


# direct methods
.method public constructor <init>(Lhss;Lcom/squareup/okhttp/internal/http/CacheRequest;Lhsr;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 862
    iput-object p1, p0, Lbyq;->b:Lhss;

    iput-object p2, p0, Lbyq;->c:Lcom/squareup/okhttp/internal/http/CacheRequest;

    iput-object p3, p0, Lbyq;->d:Lhsr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lhsp;J)J
    .locals 6
    .parameter
    .parameter

    .prologue
    const-wide/16 v0, -0x1

    const/4 v3, 0x1

    .line 868
    :try_start_0
    iget-object v2, p0, Lbyq;->b:Lhss;

    invoke-interface {v2, p1, p2, p3}, Lhss;->a(Lhsp;J)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 877
    cmp-long v2, v4, v0

    if-nez v2, :cond_2

    .line 878
    iget-boolean v2, p0, Lbyq;->a:Z

    if-nez v2, :cond_0

    .line 879
    iput-boolean v3, p0, Lbyq;->a:Z

    .line 880
    iget-object v2, p0, Lbyq;->d:Lhsr;

    invoke-interface {v2}, Lhsr;->close()V

    :cond_0
    move-wide v4, v0

    .line 887
    :goto_0
    return-wide v4

    .line 869
    :catch_0
    move-exception v0

    .line 870
    iget-boolean v1, p0, Lbyq;->a:Z

    if-nez v1, :cond_1

    .line 871
    iput-boolean v3, p0, Lbyq;->a:Z

    .line 872
    iget-object v1, p0, Lbyq;->c:Lcom/squareup/okhttp/internal/http/CacheRequest;

    invoke-interface {v1}, Lcom/squareup/okhttp/internal/http/CacheRequest;->abort()V

    .line 874
    :cond_1
    throw v0

    .line 885
    :cond_2
    iget-object v0, p0, Lbyq;->d:Lhsr;

    invoke-interface {v0}, Lhsr;->b()Lhsp;

    move-result-object v1

    iget-wide v2, p1, Lhsp;->b:J

    sub-long/2addr v2, v4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lhsp;->a(Lhsp;JJ)Lhsp;

    .line 886
    iget-object v0, p0, Lbyq;->d:Lhsr;

    invoke-interface {v0}, Lhsr;->o()Lhsr;

    goto :goto_0
.end method

.method public final a()Lhti;
    .locals 1

    .prologue
    .line 891
    iget-object v0, p0, Lbyq;->b:Lhss;

    invoke-interface {v0}, Lhss;->a()Lhti;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .locals 1

    .prologue
    .line 895
    iget-boolean v0, p0, Lbyq;->a:Z

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 896
    invoke-static {p0, v0}, Lbya;->a(Lhth;Ljava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 897
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbyq;->a:Z

    .line 898
    iget-object v0, p0, Lbyq;->c:Lcom/squareup/okhttp/internal/http/CacheRequest;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/http/CacheRequest;->abort()V

    .line 900
    :cond_0
    iget-object v0, p0, Lbyq;->b:Lhss;

    invoke-interface {v0}, Lhss;->close()V

    .line 901
    return-void
.end method
