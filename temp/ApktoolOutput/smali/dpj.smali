.class public final Ldpj;
.super Lhic;
.source "LocalAppIconPresenter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lhic;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 4
    .parameter

    .prologue
    .line 17
    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/model/Model;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {p0}, Ldpj;->e()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v1

    iget-object v1, v1, Lcom/wandoujia/api/proto/AppDetail;->package_name:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lhma;->a(Landroid/view/View;Ljava/lang/String;I)V

    .line 23
    :goto_0
    return-void

    .line 21
    :cond_0
    new-instance v1, Lhma;

    invoke-direct {v1}, Lhma;-><init>()V

    invoke-virtual {p0}, Ldpj;->e()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/model/Model;->c()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0a00ca

    invoke-virtual {v1, v0, v2, v3}, Lhma;->a(Landroid/widget/ImageView;Ljava/lang/String;I)V

    goto :goto_0
.end method
