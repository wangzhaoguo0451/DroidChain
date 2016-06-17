.class public final Lduj;
.super Ljava/lang/Object;
.source "SubscribeOnBoardFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/view/View;

.field private synthetic b:Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lduj;->b:Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;

    iput-object p2, p0, Lduj;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 69
    iget-object v0, p0, Lduj;->b:Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;->a(Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;)Ljava/util/List;

    move-result-object v0

    .line 70
    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e016b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 82
    :goto_0
    return-void

    .line 77
    :cond_0
    new-instance v1, Ldtk;

    iget-object v2, p0, Lduj;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/wandoujia/p4/subscribe/http/model/SubscribeOnBoardModel$OnBoardType;->BUNDLE_PUBLISHER:Lcom/wandoujia/p4/subscribe/http/model/SubscribeOnBoardModel$OnBoardType;

    invoke-direct {v1, v2, v3, v0}, Ldtk;-><init>(Landroid/content/Context;Lcom/wandoujia/p4/subscribe/http/model/SubscribeOnBoardModel$OnBoardType;Ljava/util/List;)V

    .line 79
    invoke-static {}, Lcom/wandoujia/p4/subscribe/core/SubscribeManager;->a()Lcom/wandoujia/p4/subscribe/core/SubscribeManager;

    move-result-object v0

    iget-object v2, p0, Lduj;->b:Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;

    invoke-static {v2}, Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;->b(Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;)Lgcj;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/wandoujia/p4/subscribe/core/SubscribeManager;->a(Lgcj;)V

    .line 80
    invoke-static {}, Lcom/wandoujia/p4/subscribe/core/SubscribeManager;->a()Lcom/wandoujia/p4/subscribe/core/SubscribeManager;

    move-result-object v0

    iget-object v2, p0, Lduj;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/wandoujia/p4/subscribe/core/SubscribeManager;->b(Landroid/content/Context;Lgcd;)V

    .line 81
    iget-object v0, p0, Lduj;->b:Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;->c(Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method
