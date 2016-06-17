.class public final Ldlr;
.super Ldns;
.source "DetailGuessPresenter.java"


# instance fields
.field private b:Ldlu;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Ldns;-><init>()V

    .line 61
    new-instance v0, Ldlu;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ldlu;-><init>(Ldlr;B)V

    iput-object v0, p0, Ldlr;->b:Ldlu;

    .line 207
    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 1
    .parameter

    .prologue
    .line 105
    const v0, 0x7f030116

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected final a(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lhht;)Landroid/view/ViewGroup;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 90
    invoke-super {p0, p1, p2, p3}, Ldns;->a(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lhht;)Landroid/view/ViewGroup;

    move-result-object v3

    .line 92
    const v0, 0x7f0c032e

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 93
    iget-object v1, p0, Lhic;->i:Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v1, v1, Lcom/wandoujia/ripple_framework/model/Model;->n:Lhht;

    iget v1, v1, Lhht;->a:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_0

    move v1, v2

    .line 97
    :goto_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 99
    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 100
    return-object v3

    .line 93
    :cond_0
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0b0139

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    goto :goto_0
.end method

.method protected final a(Lcom/wandoujia/api/proto/HttpResponse;Lcom/wandoujia/ripple_framework/model/Model;)Lcom/wandoujia/ripple_framework/model/Model;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 182
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 183
    iget-object v0, p1, Lcom/wandoujia/api/proto/HttpResponse;->entity:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/api/proto/Entity;

    .line 184
    new-instance v3, Lcom/wandoujia/ripple_framework/model/Model;

    invoke-direct {v3, v0}, Lcom/wandoujia/ripple_framework/model/Model;-><init>(Lcom/wandoujia/api/proto/Entity;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 186
    :cond_0
    iget-object v0, p2, Lcom/wandoujia/ripple_framework/model/Model;->n:Lhht;

    iget-object v0, v0, Lhht;->b:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/model/Model;->a(Ljava/util/List;)V

    .line 187
    return-object p2
.end method

.method public final a()V
    .locals 2

    .prologue
    .line 82
    invoke-static {}, Letz;->a()Letz;

    move-result-object v0

    iget-object v0, v0, Letz;->a:Lcmm;

    iget-object v1, p0, Ldlr;->b:Ldlu;

    invoke-virtual {v0, v1}, Lcmm;->b(Lcom/wandoujia/account/listener/IAccountListener;)V

    .line 84
    invoke-super {p0}, Ldns;->a()V

    .line 85
    return-void
.end method

.method protected final a(Landroid/widget/FrameLayout;Lhht;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 65
    iget v0, p2, Lhht;->a:I

    packed-switch v0, :pswitch_data_0

    .line 76
    invoke-super {p0, p1, p2}, Ldns;->a(Landroid/widget/FrameLayout;Lhht;)V

    .line 78
    :goto_0
    return-void

    .line 67
    :pswitch_0
    iget-object v0, p0, Lhic;->i:Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/model/Model;->n:Lhht;

    invoke-virtual {p0, v0}, Ldlr;->a(Lhht;)V

    .line 68
    invoke-virtual {p0, p1, p2}, Ldlr;->b(Landroid/widget/FrameLayout;Lhht;)V

    goto :goto_0

    .line 71
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Ldlr;->b(Landroid/widget/FrameLayout;Lhht;)V

    .line 72
    invoke-static {}, Letz;->a()Letz;

    move-result-object v0

    iget-object v0, v0, Letz;->a:Lcmm;

    iget-object v1, p0, Ldlr;->b:Ldlu;

    invoke-virtual {v0, v1}, Lcmm;->a(Lcom/wandoujia/account/listener/IAccountListener;)V

    goto :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final a(Ljava/lang/String;Lcom/wandoujia/ripple_framework/model/Model;I)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 120
    const-string v1, "http://apis.wandoujia.com/five/v2/%ss/%s/related"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v0

    iget-object v0, v0, Lcom/wandoujia/api/proto/AppDetail;->app_type:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v0

    iget-object v0, v0, Lcom/wandoujia/api/proto/AppDetail;->app_type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p1, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 122
    new-instance v1, Lhey;

    new-instance v2, Ldls;

    invoke-direct {v2, p0, p2, p3}, Ldls;-><init>(Ldlr;Lcom/wandoujia/ripple_framework/model/Model;I)V

    new-instance v3, Ldlt;

    invoke-direct {v3, p0}, Ldlt;-><init>(Ldlr;)V

    invoke-direct {v1, v0, v2, v3}, Lhey;-><init>(Ljava/lang/String;Lagu;Lagt;)V

    iput-object v1, p0, Ldlr;->a:Lhey;

    .line 170
    iget-object v0, p0, Ldlr;->a:Lhey;

    invoke-virtual {v0}, Lhey;->j()V

    .line 171
    return-void

    .line 120
    :cond_0
    iget-object v0, p2, Lcom/wandoujia/ripple_framework/model/Model;->k:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 192
    const v0, 0x7fffffff

    return v0
.end method

.method protected final c()V
    .locals 3

    .prologue
    .line 196
    iget-object v0, p0, Lhic;->i:Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/model/Model;->n:Lhht;

    iget v0, v0, Lhht;->a:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 202
    :goto_0
    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lhic;->i:Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/model/Model;->n:Lhht;

    const/4 v1, 0x4

    iput v1, v0, Lhht;->a:I

    .line 200
    invoke-virtual {p0}, Lhic;->g()Lhas;

    move-result-object v0

    iget-object v0, v0, Lhas;->a:Leqw;

    iget-object v1, p0, Lhic;->i:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-static {v0, v1}, Ld;->a(Leqw;Lcom/wandoujia/ripple_framework/model/Model;)I

    move-result v0

    .line 201
    invoke-virtual {p0}, Lhic;->g()Lhas;

    move-result-object v1

    iget-object v1, v1, Lhas;->a:Leqw;

    iget-object v2, p0, Lhic;->i:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-virtual {v1, v0, v2}, Leqw;->a(ILjava/lang/Object;)V

    goto :goto_0
.end method
