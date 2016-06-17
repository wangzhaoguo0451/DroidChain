.class final Ldok;
.super Lhhl;
.source "ListPresenterFactory.java"


# instance fields
.field private synthetic a:Lcom/wandoujia/ripple_framework/model/Model;

.field private synthetic b:Ldoj;


# direct methods
.method constructor <init>(Ldoj;Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 487
    iput-object p1, p0, Ldok;->b:Ldoj;

    iput-object p2, p0, Ldok;->a:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-direct {p0}, Lhhl;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Z
    .locals 4
    .parameter

    .prologue
    .line 490
    new-instance v1, Lfua;

    iget-object v2, p0, Ldok;->a:Lcom/wandoujia/ripple_framework/model/Model;

    new-instance v3, Lcom/wandoujia/p4/gift/http/model/GiftModel;

    iget-object v0, p0, Ldok;->a:Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/model/Model;->b:Lcom/wandoujia/api/proto/Entity;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity;->detail:Lcom/wandoujia/api/proto/Detail;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Detail;->gift_detail:Lcom/wandoujia/api/proto/GiftDetail;

    invoke-direct {v3, v0}, Lcom/wandoujia/p4/gift/http/model/GiftModel;-><init>(Lcom/wandoujia/api/proto/GiftDetail;)V

    iget-object v0, p0, Ldok;->b:Ldoj;

    invoke-virtual {v0}, Ldoj;->e()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v2, v3, v0}, Lfua;-><init>(Lcom/wandoujia/ripple_framework/model/Model;Lcom/wandoujia/p4/gift/http/model/GiftModel;Landroid/app/Activity;)V

    .line 494
    invoke-virtual {v1}, Lfua;->execute()V

    .line 496
    const/4 v0, 0x0

    return v0
.end method
