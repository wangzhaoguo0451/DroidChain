.class final Lfyu;
.super Ljava/lang/Object;
.source "JupiterDownloadAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lega;

.field private synthetic c:Lfyi;


# direct methods
.method constructor <init>(Lfyi;Ljava/lang/String;Lega;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 285
    iput-object p1, p0, Lfyu;->c:Lfyi;

    iput-object p2, p0, Lfyu;->a:Ljava/lang/String;

    iput-object p3, p0, Lfyu;->b:Lega;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 288
    iget-object v0, p0, Lfyu;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfyu;->b:Lega;

    if-nez v0, :cond_1

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    iget-object v0, p0, Lfyu;->c:Lfyi;

    iget-object v0, v0, Lfyi;->b:Ljava/util/Map;

    iget-object v1, p0, Lfyu;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 292
    iget-object v0, p0, Lfyu;->c:Lfyi;

    iget-object v0, v0, Lfyi;->b:Ljava/util/Map;

    iget-object v1, p0, Lfyu;->a:Ljava/lang/String;

    new-instance v2, Lgdw;

    invoke-direct {v2}, Lgdw;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    :cond_2
    iget-object v0, p0, Lfyu;->c:Lfyi;

    iget-object v0, v0, Lfyi;->b:Ljava/util/Map;

    iget-object v1, p0, Lfyu;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgdw;

    iget-object v1, p0, Lfyu;->b:Lega;

    invoke-virtual {v0, v1}, Lgdw;->a(Ljava/lang/Object;)V

    .line 295
    iget-object v0, p0, Lfyu;->c:Lfyi;

    iget-object v0, v0, Lfyi;->c:Ljava/util/Set;

    iget-object v1, p0, Lfyu;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 296
    sget-object v0, Lham;->f:Lham;

    const-string v1, "app_task"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;

    iget-object v1, p0, Lfyu;->a:Ljava/lang/String;

    iget-object v2, p0, Lfyu;->c:Lfyi;

    invoke-virtual {v0, v1, v2}, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->a(Ljava/lang/String;Lhfq;)V

    .line 299
    iget-object v0, p0, Lfyu;->c:Lfyi;

    iget-object v0, v0, Lfyi;->c:Ljava/util/Set;

    iget-object v1, p0, Lfyu;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
