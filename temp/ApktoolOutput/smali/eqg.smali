.class final Leqg;
.super Lcom/wandoujia/net/HttpTransaction;
.source "StringDownloader.java"


# direct methods
.method public constructor <init>(Lepb;JLcom/wandoujia/net/AsyncHttpRequest;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 8
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/wandoujia/net/HttpTransaction;-><init>(Lepb;JLcom/wandoujia/net/AsyncHttpRequest;)V

    .line 9
    return-void
.end method


# virtual methods
.method protected final a(Z)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 26
    invoke-virtual {p0}, Leqg;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    iget v0, p0, Leqg;->h:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Leqg;->h:I

    .line 30
    iget-object v0, p0, Leqg;->d:Lepb;

    iget v1, p0, Leqg;->h:I

    rsub-int/lit8 v1, v1, 0x2

    mul-int/lit16 v1, v1, 0xbb8

    int-to-long v2, v1

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p0, v1, v4

    invoke-virtual {v0, v2, v3, v1}, Lepb;->a(J[Ljava/lang/Object;)V

    .line 35
    :goto_0
    return-void

    .line 33
    :cond_0
    iget-object v0, p0, Leqg;->d:Lepb;

    const/4 v1, 0x6

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p0, v2, v4

    invoke-virtual {v0, v1, v2}, Lepb;->a(I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected final e()V
    .locals 6

    .prologue
    .line 14
    iget-object v0, p0, Leqg;->d:Lepb;

    const/4 v1, 0x4

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Leqg;->b:Lepj;

    invoke-virtual {v4}, Lepj;->b()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lepb;->a(I[Ljava/lang/Object;)V

    .line 15
    invoke-virtual {p0}, Leqg;->j()V

    .line 16
    return-void
.end method

.method protected final f()V
    .locals 4

    .prologue
    .line 20
    iget-object v0, p0, Leqg;->b:Lepj;

    invoke-virtual {p0}, Leqg;->k()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lepj;->c:Ljava/lang/String;

    .line 21
    iget-object v0, p0, Leqg;->d:Lepb;

    const/4 v1, 0x7

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lepb;->a(I[Ljava/lang/Object;)V

    .line 22
    return-void
.end method

.method protected final g()Lcom/wandoujia/net/HttpTransaction;
    .locals 5

    .prologue
    .line 39
    new-instance v0, Leqg;

    iget-object v1, p0, Leqg;->d:Lepb;

    iget-wide v2, p0, Leqg;->e:J

    iget-object v4, p0, Leqg;->c:Lcom/wandoujia/net/AsyncHttpRequest;

    invoke-direct {v0, v1, v2, v3, v4}, Leqg;-><init>(Lepb;JLcom/wandoujia/net/AsyncHttpRequest;)V

    .line 40
    iget v1, p0, Leqg;->h:I

    iput v1, v0, Leqg;->h:I

    .line 41
    return-object v0
.end method
