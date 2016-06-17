.class public final Ldtu;
.super Lhhl;
.source "PublisherButtonPresenter.java"


# instance fields
.field private synthetic a:Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter;


# direct methods
.method public constructor <init>(Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter;Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Ldtu;->a:Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter;

    invoke-direct {p0, p2}, Lhhl;-><init>(Lcom/wandoujia/ripple_framework/model/Model;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Z
    .locals 7
    .parameter

    .prologue
    .line 132
    invoke-static {}, Lcom/wandoujia/p4/subscribe/core/SubscribeManager;->a()Lcom/wandoujia/p4/subscribe/core/SubscribeManager;

    move-result-object v0

    iget-object v1, p0, Ldtu;->a:Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter;

    iget-object v1, v1, Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter;->b:Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    invoke-virtual {v1}, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Ldtu;->a:Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter;

    iget-object v2, v2, Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter;->a:Lgcd;

    invoke-virtual {v0, v1, v2}, Lcom/wandoujia/p4/subscribe/core/SubscribeManager;->b(Landroid/content/Context;Lgcd;)V

    .line 133
    sget-object v2, Lcom/wandoujia/ripple_framework/log/Logger$Module;->FOLLOW:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    sget-object v3, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->BUTTON:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    sget-object v4, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->SUBSCRIBE:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    iget-object v0, p0, Ldtu;->a:Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter;

    iget-object v0, v0, Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter;->c:Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v5, v0, Lcom/wandoujia/api/proto/Entity$Builder;->title:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Ldtu;->a(Landroid/view/View;Lcom/wandoujia/ripple_framework/log/Logger$Module;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;Ljava/lang/Long;)Lhhl;

    .line 139
    const/4 v0, 0x1

    return v0
.end method
