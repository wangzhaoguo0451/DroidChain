.class public final Ldnx;
.super Lhic;
.source "GuessTriggerPresenter.java"


# instance fields
.field a:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lhic;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Ldnx;->a:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 111
    invoke-super {p0}, Lhic;->a()V

    .line 112
    return-void
.end method

.method protected final a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 2
    .parameter

    .prologue
    .line 34
    iget-object v0, p1, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity$Builder;->closed_guess:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    iget-object v0, p0, Lhic;->i:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v0

    iget-object v0, v0, Lcom/wandoujia/api/proto/AppDetail;->apk:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    :cond_0
    :goto_1
    return-void

    .line 34
    :cond_1
    iget-object v0, p1, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity$Builder;->closed_guess:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 37
    :cond_2
    iget-object v0, p0, Lhic;->i:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v0

    iget-object v0, v0, Lcom/wandoujia/api/proto/AppDetail;->apk:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {p0}, Ldnx;->e()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/wandoujia/ripple_framework/view/StatefulButton;

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p0}, Ldnx;->e()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/view/StatefulButton;

    .line 42
    iget-object v1, p0, Ldnx;->a:Landroid/view/View$OnClickListener;

    if-nez v1, :cond_0

    .line 43
    new-instance v1, Ldny;

    invoke-direct {v1, p0, v0, p1}, Ldny;-><init>(Ldnx;Lcom/wandoujia/ripple_framework/view/StatefulButton;Lcom/wandoujia/ripple_framework/model/Model;)V

    iput-object v1, p0, Ldnx;->a:Landroid/view/View$OnClickListener;

    .line 93
    iget-object v1, p0, Ldnx;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/StatefulButton;->a(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method
