.class public final Ldng;
.super Lhic;
.source "FeedLiteCoverPresenter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lhic;-><init>()V

    return-void
.end method

.method private static a(Ljava/util/List;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/Image;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-static {p0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/api/proto/Image;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Image;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected final a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const v3, 0x7f020246

    .line 28
    invoke-virtual {p0}, Ldng;->e()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 29
    new-instance v2, Lhma;

    invoke-direct {v2}, Lhma;-><init>()V

    .line 30
    if-nez p1, :cond_0

    .line 31
    invoke-virtual {v2, v0, v5, v3}, Lhma;->a(Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 46
    :goto_0
    return-void

    .line 32
    :cond_0
    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/model/Model;->e()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ldng;->a(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 33
    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/model/Model;->d()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ldng;->a(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Entity$Builder;->title:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 35
    :cond_1
    invoke-virtual {v2, v0, v5, v3}, Lhma;->a(Landroid/widget/ImageView;Ljava/lang/String;I)V

    goto :goto_0

    .line 38
    :cond_2
    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/model/Model;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/api/proto/Image;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Image;->url:Ljava/lang/String;

    invoke-virtual {v2, v0, v1, v3}, Lhma;->a(Landroid/widget/ImageView;Ljava/lang/String;I)V

    goto :goto_0

    .line 43
    :cond_3
    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/model/Model;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/api/proto/Image;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Image;->url:Ljava/lang/String;

    invoke-virtual {v2, v0, v1, v3}, Lhma;->a(Landroid/widget/ImageView;Ljava/lang/String;I)V

    goto :goto_0
.end method
