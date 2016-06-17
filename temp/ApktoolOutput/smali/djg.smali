.class public final Ldjg;
.super Lhic;
.source "AppUpgradeOpenSpinnerPresenter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lhic;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 4
    .parameter

    .prologue
    .line 21
    iget-object v0, p1, Lcom/wandoujia/ripple_framework/model/Model;->l:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    sget-object v1, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->UPGRADE_APP:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    if-ne v0, v1, :cond_1

    .line 22
    invoke-virtual {p0}, Ldjg;->e()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 23
    new-instance v1, Ldgv;

    invoke-direct {v1, v0}, Ldgv;-><init>(Landroid/view/View;)V

    .line 24
    invoke-virtual {p0}, Ldjg;->e()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080025

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iget-object v3, v1, Ldgv;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 26
    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v2

    iget-object v2, v2, Lcom/wandoujia/api/proto/AppDetail;->package_name:Ljava/lang/String;

    iput-object v2, v1, Ldgv;->b:Ljava/lang/String;

    .line 27
    iget-object v2, p1, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v2, v2, Lcom/wandoujia/api/proto/Entity$Builder;->title:Ljava/lang/String;

    iput-object v2, v1, Ldgv;->c:Ljava/lang/String;

    .line 28
    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 40
    :cond_0
    :goto_0
    return-void

    .line 29
    :cond_1
    iget-object v0, p1, Lcom/wandoujia/ripple_framework/model/Model;->l:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    sget-object v1, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->IGNORE_UPGRADE_APP:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    if-ne v0, v1, :cond_0

    .line 30
    invoke-virtual {p0}, Ldjg;->e()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 31
    new-instance v1, Ldgs;

    invoke-direct {v1, v0}, Ldgs;-><init>(Landroid/view/View;)V

    .line 33
    invoke-virtual {p0}, Ldjg;->e()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iget-object v3, v1, Ldgs;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 35
    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v2

    iget-object v2, v2, Lcom/wandoujia/api/proto/AppDetail;->package_name:Ljava/lang/String;

    iput-object v2, v1, Ldgs;->b:Ljava/lang/String;

    .line 36
    iget-object v2, p1, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v2, v2, Lcom/wandoujia/api/proto/Entity$Builder;->title:Ljava/lang/String;

    iput-object v2, v1, Ldgs;->c:Ljava/lang/String;

    .line 37
    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    goto :goto_0
.end method
