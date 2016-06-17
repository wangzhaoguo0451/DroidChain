.class final Ldup;
.super Ljava/lang/Object;
.source "SubscribeOnBoardFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/ripple_framework/model/Model;

.field private synthetic b:Lduo;


# direct methods
.method constructor <init>(Lduo;Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Ldup;->b:Lduo;

    iput-object p2, p0, Ldup;->a:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 146
    iget-object v0, p0, Ldup;->a:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-static {v0}, Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;->a(Lcom/wandoujia/ripple_framework/model/Model;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 147
    :goto_0
    iget-object v3, p0, Ldup;->a:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lcom/wandoujia/ripple_framework/model/Model;->a(ILjava/lang/Object;)V

    .line 148
    iget-object v0, p0, Ldup;->b:Lduo;

    invoke-virtual {v0}, Lduo;->f()Leri;

    move-result-object v0

    iget-object v3, p0, Ldup;->a:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-static {v0, v3}, Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;->a(Leri;Lcom/wandoujia/ripple_framework/model/Model;)V

    .line 149
    iget-object v0, p0, Ldup;->b:Lduo;

    iget-object v0, v0, Lduo;->a:Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;->d(Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;)Lhaw;

    move-result-object v0

    iget-object v0, v0, Luh;->a:Lui;

    invoke-virtual {v0}, Lui;->a()V

    .line 150
    iget-object v0, p0, Ldup;->b:Lduo;

    iget-object v0, v0, Lduo;->a:Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;->c(Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Ldup;->b:Lduo;

    iget-object v3, v3, Lduo;->a:Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;

    invoke-static {v3}, Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;->a(Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 151
    return-void

    :cond_0
    move v0, v2

    .line 146
    goto :goto_0

    :cond_1
    move v1, v2

    .line 150
    goto :goto_1
.end method
