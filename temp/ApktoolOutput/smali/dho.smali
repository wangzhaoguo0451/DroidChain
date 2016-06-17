.class public final Ldho;
.super Ljava/lang/Object;
.source "AppUpgradeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;

.field private synthetic c:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 289
    iput-object p1, p0, Ldho;->b:Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;

    iput-object p2, p0, Ldho;->c:Ljava/util/List;

    iput-object p3, p0, Ldho;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 292
    iget-object v0, p0, Ldho;->c:Ljava/util/List;

    invoke-static {v0}, Lg;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 294
    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 295
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    .line 296
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Ldhp;

    invoke-direct {v2, p0, v0}, Ldhp;-><init>(Ldho;Lcom/wandoujia/ripple_framework/model/Model;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 318
    :cond_0
    return-void
.end method
