.class final Ldhp;
.super Ljava/lang/Object;
.source "AppUpgradeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/wandoujia/ripple_framework/model/Model;

.field private synthetic b:Ldho;


# direct methods
.method constructor <init>(Ldho;Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 296
    iput-object p1, p0, Ldhp;->b:Ldho;

    iput-object p2, p0, Ldhp;->a:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 299
    const/4 v1, -0x1

    .line 300
    iget-object v0, p0, Ldhp;->b:Ldho;

    iget-object v0, v0, Ldho;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    .line 301
    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v3

    iget-object v3, v3, Lcom/wandoujia/api/proto/AppDetail;->package_name:Ljava/lang/String;

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v3

    iget-object v3, v3, Lcom/wandoujia/api/proto/AppDetail;->package_name:Ljava/lang/String;

    iget-object v4, p0, Ldhp;->a:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-virtual {v4}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v4

    iget-object v4, v4, Lcom/wandoujia/api/proto/AppDetail;->package_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 303
    iget-object v1, p0, Ldhp;->b:Ldho;

    iget-object v1, v1, Ldho;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 307
    :goto_0
    if-lez v0, :cond_1

    .line 308
    iget-object v1, p0, Ldhp;->b:Ldho;

    iget-object v1, v1, Ldho;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    .line 309
    const v1, 0x7f0c000d

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/wandoujia/ripple_framework/model/Model;->a(ILjava/lang/Object;)V

    .line 311
    iget-object v1, p0, Ldhp;->b:Ldho;

    iget-object v1, v1, Ldho;->a:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 312
    iget-object v0, p0, Ldhp;->b:Ldho;

    iget-object v0, v0, Ldho;->a:Ljava/util/List;

    iget-object v1, p0, Ldhp;->a:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-interface {v0, v5, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 313
    iget-object v0, p0, Ldhp;->b:Ldho;

    iget-object v0, v0, Ldho;->b:Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;->c(Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;)Leqw;

    move-result-object v0

    check-cast v0, Ldcc;

    iget-object v1, p0, Ldhp;->b:Ldho;

    iget-object v1, v1, Ldho;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ldcc;->a(Ljava/util/List;)V

    .line 315
    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method
