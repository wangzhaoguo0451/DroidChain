.class public final Lddj;
.super Ljava/lang/Object;
.source "CategoryDetailFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/wandoujia/ripple_framework/model/Model;

.field private synthetic b:Lcom/wandoujia/jupiter/category/fragment/CategoryDetailFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/jupiter/category/fragment/CategoryDetailFragment;Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lddj;->b:Lcom/wandoujia/jupiter/category/fragment/CategoryDetailFragment;

    iput-object p2, p0, Lddj;->a:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 70
    iget-object v0, p0, Lddj;->b:Lcom/wandoujia/jupiter/category/fragment/CategoryDetailFragment;

    iget-object v1, p0, Lddj;->a:Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v1, v1, Lcom/wandoujia/ripple_framework/model/Model;->i:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/wandoujia/jupiter/category/fragment/CategoryDetailFragment;->a(Lcom/wandoujia/jupiter/category/fragment/CategoryDetailFragment;Ljava/util/List;)V

    .line 72
    iget-object v0, p0, Lddj;->b:Lcom/wandoujia/jupiter/category/fragment/CategoryDetailFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/category/fragment/CategoryDetailFragment;->a(Lcom/wandoujia/jupiter/category/fragment/CategoryDetailFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    const/4 v0, 0x0

    .line 74
    iget-object v1, p0, Lddj;->a:Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v1, v1, Lcom/wandoujia/ripple_framework/model/Model;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    .line 75
    iget-object v3, p0, Lddj;->b:Lcom/wandoujia/jupiter/category/fragment/CategoryDetailFragment;

    invoke-static {v3}, Lcom/wandoujia/jupiter/category/fragment/CategoryDetailFragment;->a(Lcom/wandoujia/jupiter/category/fragment/CategoryDetailFragment;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity$Builder;->title:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lddj;->b:Lcom/wandoujia/jupiter/category/fragment/CategoryDetailFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/category/fragment/CategoryDetailFragment;->b(Lcom/wandoujia/jupiter/category/fragment/CategoryDetailFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 83
    :cond_0
    return-void

    .line 79
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 80
    goto :goto_0
.end method
