.class public Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;
.super Lcom/wandoujia/jupiter/homepage/HomeScrollFragment;
.source "SubscribeOnBoardFragment.java"


# instance fields
.field private d:Landroid/widget/TextView;

.field private e:Lgcj;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/wandoujia/jupiter/homepage/HomeScrollFragment;-><init>()V

    .line 200
    new-instance v0, Lduk;

    invoke-direct {v0, p0}, Lduk;-><init>(Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;)V

    iput-object v0, p0, Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;->e:Lgcj;

    .line 230
    return-void
.end method

.method public static synthetic a(Landroid/view/ViewGroup;)Lerf;
    .locals 4
    .parameter

    .prologue
    .line 53
    const v0, 0x7f0301bd

    invoke-static {p0, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v1, Lerf;

    invoke-direct {v1, v0}, Lerf;-><init>(Landroid/view/View;)V

    new-instance v0, Ldlf;

    invoke-direct {v0}, Ldlf;-><init>()V

    const v2, 0x7f0c0016

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic a(Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;Landroid/view/ViewGroup;)Lerf;
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 53
    const v0, 0x7f030144

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ld;->a(Landroid/view/ViewGroup;Lhas;)Lerf;

    move-result-object v0

    new-instance v1, Lduo;

    invoke-direct {v1, p0, v2}, Lduo;-><init>(Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;B)V

    invoke-virtual {v0, v2, v1, v2}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic a(Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;->g()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic a(Leri;Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-static {p1}, Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;->b(Lcom/wandoujia/ripple_framework/model/Model;)Z

    move-result v1

    const v0, 0x7f0c0002

    invoke-virtual {p0, v0}, Leri;->b(I)Leri;

    move-result-object v2

    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v3

    if-eqz v1, :cond_0

    new-instance v0, Landroid/text/SpannableString;

    const-string v4, " "

    invoke-direct {v0, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v4, Landroid/text/style/ImageSpan;

    const v5, 0x7f020475

    invoke-direct {v4, v3, v5}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;I)V

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/16 v6, 0x21

    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :goto_0
    invoke-virtual {v2, v0}, Leri;->a(Ljava/lang/CharSequence;)Leri;

    move-result-object v2

    if-eqz v1, :cond_1

    const v0, 0x7f020341

    :goto_1
    invoke-virtual {v2, v0}, Leri;->g(I)Leri;

    move-result-object v2

    if-eqz v1, :cond_2

    const v0, 0x7f0a0148

    :goto_2
    invoke-virtual {v2, v0}, Leri;->e(I)Leri;

    return-void

    :cond_0
    const v0, 0x7f0e0583

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const v0, 0x7f020347

    goto :goto_1

    :cond_2
    const v0, 0x7f0a01b9

    goto :goto_2
.end method

.method public static synthetic a(Lcom/wandoujia/ripple_framework/model/Model;)Z
    .locals 1
    .parameter

    .prologue
    .line 53
    invoke-static {p0}, Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;->b(Lcom/wandoujia/ripple_framework/model/Model;)Z

    move-result v0

    return v0
.end method

.method public static synthetic b(Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;)Lgcj;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;->e:Lgcj;

    return-object v0
.end method

.method private static b(Lcom/wandoujia/ripple_framework/model/Model;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 178
    invoke-virtual {p0, v2}, Lcom/wandoujia/ripple_framework/model/Model;->a(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 180
    invoke-virtual {p0, v2}, Lcom/wandoujia/ripple_framework/model/Model;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 187
    :cond_0
    :goto_0
    return v0

    .line 181
    :cond_1
    sget-object v1, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->ONBOARD_SINGLE_IMAGE:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    iget-object v2, p0, Lcom/wandoujia/ripple_framework/model/Model;->l:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    invoke-virtual {v1, v2}, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 183
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/model/Model;->m()Lcom/wandoujia/api/proto/PublisherBundleDetail;

    move-result-object v1

    iget-object v1, v1, Lcom/wandoujia/api/proto/PublisherBundleDetail;->defaultSelected:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/model/Model;->m()Lcom/wandoujia/api/proto/PublisherBundleDetail;

    move-result-object v0

    iget-object v0, v0, Lcom/wandoujia/api/proto/PublisherBundleDetail;->defaultSelected:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public static synthetic c(Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method public static synthetic d(Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;)Lhaw;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;->c:Lhaw;

    return-object v0
.end method

.method public static synthetic e(Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;)Lhaz;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;->p:Lhaz;

    return-object v0
.end method

.method public static synthetic f(Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;)Lhaz;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;->p:Lhaz;

    return-object v0
.end method

.method public static synthetic g(Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;)Lhaz;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;->p:Lhaz;

    return-object v0
.end method

.method private g()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/PublisherBundleDetail;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;->p:Lhaz;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;->p:Lhaz;

    iget-object v0, v0, Lerv;->d:Ljava/util/List;

    if-nez v0, :cond_1

    .line 99
    :cond_0
    const/4 v0, 0x0

    .line 107
    :goto_0
    return-object v0

    .line 101
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 102
    iget-object v0, p0, Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;->p:Lhaz;

    iget-object v0, v0, Lerv;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    .line 103
    invoke-static {v0}, Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;->b(Lcom/wandoujia/ripple_framework/model/Model;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 104
    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/model/Model;->m()Lcom/wandoujia/api/proto/PublisherBundleDetail;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 107
    goto :goto_0
.end method


# virtual methods
.method protected final a()Lum;
    .locals 2

    .prologue
    .line 197
    new-instance v0, Ldun;

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;->e()Lhaw;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ldun;-><init>(Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;Lerv;)V

    return-object v0
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 192
    const v0, 0x7f030125

    return v0
.end method

.method protected final e()Lhaw;
    .locals 2

    .prologue
    .line 60
    new-instance v0, Ldum;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ldum;-><init>(Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;B)V

    return-object v0
.end method

.method protected final synthetic f()Lhaz;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;->e()Lhaw;

    move-result-object v0

    return-object v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;->p:Lhaz;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;->p:Lhaz;

    iget-object v0, v0, Lerv;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 92
    iget-object v1, p0, Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;->d:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;->g()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 94
    :cond_0
    invoke-super {p0}, Lcom/wandoujia/jupiter/homepage/HomeScrollFragment;->onResume()V

    .line 95
    return-void

    .line 92
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 65
    const v0, 0x7f0c0344

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;->d:Landroid/widget/TextView;

    .line 66
    iget-object v0, p0, Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;->d:Landroid/widget/TextView;

    new-instance v1, Lduj;

    invoke-direct {v1, p0, p1}, Lduj;-><init>(Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    invoke-super {p0, p1, p2}, Lcom/wandoujia/jupiter/homepage/HomeScrollFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 85
    return-void
.end method
