.class final Ldlz;
.super Lhhl;
.source "DetailImagePresenter.java"


# instance fields
.field private synthetic a:Landroid/widget/ImageView;

.field private synthetic b:Lcom/wandoujia/api/proto/Image;

.field private synthetic c:Lcom/wandoujia/ripple_framework/model/Model;

.field private synthetic d:Ldly;


# direct methods
.method constructor <init>(Ldly;Lcom/wandoujia/ripple_framework/model/Model;Landroid/widget/ImageView;Lcom/wandoujia/api/proto/Image;Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Ldlz;->d:Ldly;

    iput-object p3, p0, Ldlz;->a:Landroid/widget/ImageView;

    iput-object p4, p0, Ldlz;->b:Lcom/wandoujia/api/proto/Image;

    iput-object p5, p0, Ldlz;->c:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-direct {p0, p2}, Lhhl;-><init>(Lcom/wandoujia/ripple_framework/model/Model;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 54
    iget-object v0, p0, Ldlz;->d:Ldly;

    iget-boolean v0, v0, Ldly;->a:Z

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Ldlz;->d:Ldly;

    iget-object v2, p0, Ldlz;->a:Landroid/widget/ImageView;

    iget-object v3, p0, Ldlz;->b:Lcom/wandoujia/api/proto/Image;

    invoke-virtual {v0, v2, v3}, Ldly;->a(Landroid/widget/ImageView;Lcom/wandoujia/api/proto/Image;)V

    move v0, v1

    .line 94
    :goto_0
    return v0

    .line 58
    :cond_0
    iget-object v0, p0, Ldlz;->c:Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v2, v0, Lcom/wandoujia/ripple_framework/model/Model;->c:Lcom/wandoujia/ripple_framework/model/Model;

    .line 59
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/wandoujia/ripple_framework/model/Model;->d()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v1

    .line 60
    goto :goto_0

    .line 62
    :cond_2
    iget-object v0, p0, Ldlz;->c:Lcom/wandoujia/ripple_framework/model/Model;

    const v3, 0x7f0c0041

    invoke-virtual {v0, v3}, Lcom/wandoujia/ripple_framework/model/Model;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 63
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gez v3, :cond_8

    .line 64
    :cond_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v1, v0

    .line 67
    :goto_1
    invoke-virtual {v2}, Lcom/wandoujia/ripple_framework/model/Model;->d()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 68
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 69
    invoke-virtual {v2}, Lcom/wandoujia/ripple_framework/model/Model;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/api/proto/Image;

    .line 70
    iget-object v4, v0, Lcom/wandoujia/api/proto/Image;->url:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 71
    iget-object v0, v0, Lcom/wandoujia/api/proto/Image;->url:Ljava/lang/String;

    .line 72
    invoke-static {v0}, Ld;->F(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 73
    invoke-static {v0}, Ld;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    :cond_5
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 78
    :cond_6
    invoke-static {v3}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 80
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v3, v0}, Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerActivity;->a(Ljava/util/List;I)Ljava/lang/String;

    move-result-object v1

    .line 81
    sget-object v0, Lham;->f:Lham;

    const-string v2, "navigation"

    invoke-virtual {v0, v2}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhhy;

    iget-object v2, p0, Ldlz;->d:Ldly;

    invoke-virtual {v2}, Lerg;->e()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v6}, Lhhy;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 84
    iget-object v1, p0, Ldlz;->d:Ldly;

    invoke-virtual {v1}, Lerg;->e()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 85
    sget-object v2, Lcom/wandoujia/ripple_framework/log/Logger$Module;->ITEM:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    sget-object v3, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->ICON:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    sget-object v4, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->REDIRECT:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    const-string v5, "gallery"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Ldlz;->a(Landroid/view/View;Lcom/wandoujia/ripple_framework/log/Logger$Module;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;Ljava/lang/Long;)Lhhl;

    .line 94
    :cond_7
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_8
    move-object v1, v0

    goto :goto_1
.end method
