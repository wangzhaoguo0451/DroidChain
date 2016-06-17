.class public final Ldiy;
.super Lhic;
.source "AppInstalledOpenSpinnerPresenter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lhic;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 4
    .parameter

    .prologue
    .line 24
    invoke-virtual {p0}, Ldiy;->e()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 25
    new-instance v1, Ldgu;

    invoke-direct {v1, v0}, Ldgu;-><init>(Landroid/view/View;)V

    .line 26
    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v2

    iget-object v2, v2, Lcom/wandoujia/api/proto/AppDetail;->package_name:Ljava/lang/String;

    iput-object v2, v1, Ldgu;->b:Ljava/lang/String;

    .line 28
    sget-object v2, Lham;->f:Lham;

    const-string v3, "app"

    invoke-virtual {v2, v3}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v2

    iget-object v2, v2, Lcom/wandoujia/api/proto/AppDetail;->package_name:Ljava/lang/String;

    invoke-static {v2}, Lcom/wandoujia/appmanager/AppManager;->c(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_0

    .line 30
    invoke-virtual {p0}, Ldiy;->e()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080015

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Ldgu;->a:Ljava/util/List;

    .line 36
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 37
    new-instance v1, Ldiz;

    invoke-direct {v1}, Ldiz;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 46
    return-void

    .line 33
    :cond_0
    invoke-virtual {p0}, Ldiy;->e()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080017

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Ldgu;->a:Ljava/util/List;

    goto :goto_0
.end method
