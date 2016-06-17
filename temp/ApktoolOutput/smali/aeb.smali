.class final Laeb;
.super Ladw;
.source "SourceFile"


# instance fields
.field private synthetic b:Lafs;


# direct methods
.method constructor <init>(Lafs;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Laeb;->b:Lafs;

    .line 450
    invoke-direct {p0}, Ladw;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 454
    const-string v0, "temp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Laeb;->b:Lafs;

    invoke-static {v0}, Lafs;->d(Lafs;)Ljava/lang/String;

    move-result-object v0

    .line 463
    :goto_0
    return-object v0

    .line 456
    :cond_0
    const-string v0, "rules"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 457
    iget-object v0, p0, Laeb;->b:Lafs;

    invoke-static {v0}, Lafs;->e(Lafs;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 458
    :cond_1
    const-string v0, "tmp_group"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 459
    iget-object v0, p0, Laeb;->b:Lafs;

    invoke-static {v0}, Lafs;->f(Lafs;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 460
    :cond_2
    const-string v0, "read_time"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 461
    iget-object v0, p0, Laeb;->b:Lafs;

    invoke-static {v0}, Lafs;->g(Lafs;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 463
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 474
    iget-object v0, p0, Laeb;->b:Lafs;

    invoke-static {v0}, Lafs;->h(Lafs;)Lafc;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/wandoujia/ra;->a(Lafc;)Lcom/alipay/wandoujia/ra;

    move-result-object v0

    .line 475
    sget-object v1, Lcom/alipay/wandoujia/ra;->l:Lcom/alipay/wandoujia/ra;

    if-ne v0, v1, :cond_0

    .line 476
    iget-object v0, p0, Laeb;->b:Lafs;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lafs;->a(Lafs;Ljava/lang/String;Z)V

    .line 477
    iget-object v0, p0, Laeb;->b:Lafs;

    invoke-static {v0}, Lafs;->i(Lafs;)V

    .line 479
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 469
    iget-object v0, p0, Laeb;->b:Lafs;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lafs;->a(Lafs;Ljava/lang/String;Z)V

    .line 470
    return-void
.end method
