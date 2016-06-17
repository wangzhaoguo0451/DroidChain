.class public final Ldph;
.super Ldkv;
.source "ListPresenterFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 329
    invoke-direct {p0}, Ldkv;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 2
    .parameter

    .prologue
    .line 332
    invoke-virtual {p0}, Ldph;->e()Landroid/view/View;

    move-result-object v0

    iget-object v1, p1, Lcom/wandoujia/ripple_framework/model/Model;->b:Lcom/wandoujia/api/proto/Entity;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Entity;->action:Lcom/wandoujia/api/proto/Action;

    invoke-static {v0, v1, p1}, Ldph;->a(Landroid/view/View;Lcom/wandoujia/api/proto/Action;Lcom/wandoujia/ripple_framework/model/Model;)V

    .line 333
    return-void
.end method
