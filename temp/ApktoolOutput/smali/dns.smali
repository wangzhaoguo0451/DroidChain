.class public Ldns;
.super Lhic;
.source "GuessPresenter.java"


# instance fields
.field protected a:Lhey;

.field private b:Lerf;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lhic;-><init>()V

    .line 252
    return-void
.end method

.method private static a(Lhht;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, -0x2

    .line 121
    if-nez p1, :cond_0

    .line 122
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 124
    :cond_0
    iget v0, p0, Lhht;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 125
    iget v0, p0, Lhht;->d:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 129
    :goto_0
    return-object p1

    .line 127
    :cond_1
    iput v2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method

.method private static a(Landroid/widget/FrameLayout;Landroid/view/View;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 133
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 134
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 135
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 133
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 137
    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 140
    :cond_1
    return-void
.end method

.method protected static b(Lcom/wandoujia/ripple_framework/model/Model;)Z
    .locals 2
    .parameter

    .prologue
    .line 151
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->n:Lhht;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->n:Lhht;

    iget-object v0, v0, Lhht;->b:Lcom/wandoujia/ripple_framework/model/Model;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->n:Lhht;

    iget-object v0, v0, Lhht;->b:Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/model/Model;->b:Lcom/wandoujia/api/proto/Entity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->n:Lhht;

    iget-object v0, v0, Lhht;->b:Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/model/Model;->b:Lcom/wandoujia/api/proto/Entity;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity;->detail:Lcom/wandoujia/api/proto/Detail;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->n:Lhht;

    iget-object v0, v0, Lhht;->b:Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/model/Model;->b:Lcom/wandoujia/api/proto/Entity;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity;->detail:Lcom/wandoujia/api/proto/Detail;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Detail;->app_detail:Lcom/wandoujia/api/proto/AppDetail;

    if-eqz v0, :cond_0

    .line 156
    const-string v0, "GAME"

    iget-object v1, p0, Lcom/wandoujia/ripple_framework/model/Model;->n:Lhht;

    iget-object v1, v1, Lhht;->b:Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v1, v1, Lcom/wandoujia/ripple_framework/model/Model;->b:Lcom/wandoujia/api/proto/Entity;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Entity;->detail:Lcom/wandoujia/api/proto/Detail;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Detail;->app_detail:Lcom/wandoujia/api/proto/AppDetail;

    iget-object v1, v1, Lcom/wandoujia/api/proto/AppDetail;->app_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 159
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 1
    .parameter

    .prologue
    .line 117
    const v0, 0x7f030161

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected a(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lhht;)Landroid/view/ViewGroup;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 105
    if-nez p2, :cond_0

    .line 106
    invoke-virtual {p0, p1}, Ldns;->a(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object p2

    .line 107
    const/4 v0, 0x0

    invoke-static {p3, v0}, Ldns;->a(Lhht;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 108
    invoke-virtual {p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    :goto_0
    return-object p2

    .line 110
    :cond_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {p3, v0}, Ldns;->a(Lhht;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 111
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method protected a(Lcom/wandoujia/api/proto/HttpResponse;Lcom/wandoujia/ripple_framework/model/Model;)Lcom/wandoujia/ripple_framework/model/Model;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 226
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 227
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

    .line 228
    new-instance v3, Lcom/wandoujia/ripple_framework/model/Model;

    invoke-direct {v3, v0}, Lcom/wandoujia/ripple_framework/model/Model;-><init>(Lcom/wandoujia/api/proto/Entity;)V

    .line 229
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 231
    :cond_0
    invoke-virtual {p0}, Ldns;->b()I

    move-result v0

    invoke-static {v1, v0}, Ld;->a(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    .line 232
    iget-object v1, p2, Lcom/wandoujia/ripple_framework/model/Model;->n:Lhht;

    iget-object v1, v1, Lhht;->b:Lcom/wandoujia/ripple_framework/model/Model;

    .line 233
    invoke-virtual {v1, v0}, Lcom/wandoujia/ripple_framework/model/Model;->a(Ljava/util/List;)V

    .line 234
    return-object p2
.end method

.method public a()V
    .locals 2

    .prologue
    .line 243
    invoke-super {p0}, Lhic;->a()V

    .line 244
    iget-object v0, p0, Ldns;->a:Lhey;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Ldns;->a:Lhey;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/volley/Request;->h:Z

    .line 247
    :cond_0
    iget-object v0, p0, Ldns;->b:Lerf;

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Ldns;->b:Lerf;

    invoke-virtual {v0}, Lerf;->a()V

    .line 250
    :cond_1
    return-void
.end method

.method protected a(Landroid/widget/FrameLayout;Lhht;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 61
    iget v0, p2, Lhht;->a:I

    packed-switch v0, :pswitch_data_0

    .line 77
    :goto_0
    return-void

    .line 63
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p1, v0}, Ldns;->a(Landroid/widget/FrameLayout;Landroid/view/View;)V

    goto :goto_0

    .line 67
    :pswitch_1
    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Ldnt;

    invoke-direct {v1, p0, p2}, Ldnt;-><init>(Ldns;Lhht;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 74
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Ldns;->b(Landroid/widget/FrameLayout;Lhht;)V

    goto :goto_0

    .line 61
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected final a(Lcom/android/volley/VolleyError;)V
    .locals 4
    .parameter

    .prologue
    .line 218
    invoke-virtual {p0}, Lerg;->e()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Ldxa;->a:I

    int-to-long v2, v1

    invoke-static {v0, p1, v2, v3}, Ldxa;->a(Landroid/content/Context;Ljava/lang/Exception;J)Ldxa;

    move-result-object v0

    invoke-virtual {v0}, Ldxa;->a()V

    .line 219
    iget-object v0, p0, Ldns;->b:Lerf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldns;->b:Lerf;

    iget-object v0, v0, Lerf;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Ldns;->b:Lerf;

    iget-object v0, v0, Lerf;->b:Landroid/view/View;

    const v1, 0x7f0c001f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/view/LoadingView;

    .line 221
    iget-object v0, v0, Lcom/wandoujia/ripple_framework/view/LoadingView;->a:Lhmj;

    invoke-virtual {v0}, Lhmj;->stop()V

    .line 223
    :cond_0
    return-void
.end method

.method protected final a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 47
    iget-object v1, p0, Ldns;->a:Lhey;

    if-eqz v1, :cond_0

    .line 49
    iget-object v1, p0, Ldns;->a:Lhey;

    iput-boolean v0, v1, Lcom/android/volley/Request;->h:Z

    .line 51
    :cond_0
    invoke-virtual {p0}, Ldns;->e()Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/FrameLayout;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    if-nez v0, :cond_2

    .line 58
    :goto_0
    return-void

    .line 55
    :cond_2
    invoke-virtual {p0}, Ldns;->e()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 56
    iget-object v1, p1, Lcom/wandoujia/ripple_framework/model/Model;->n:Lhht;

    .line 57
    invoke-virtual {p0, v0, v1}, Ldns;->a(Landroid/widget/FrameLayout;Lhht;)V

    goto :goto_0
.end method

.method protected final a(Lhht;)V
    .locals 3
    .parameter

    .prologue
    .line 143
    iget-object v0, p1, Lhht;->c:Ljava/lang/String;

    .line 144
    invoke-virtual {p0}, Lhic;->g()Lhas;

    move-result-object v1

    iget-object v1, v1, Lhas;->a:Leqw;

    iget-object v2, p0, Lhic;->i:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-static {v1, v2}, Ld;->a(Leqw;Lcom/wandoujia/ripple_framework/model/Model;)I

    move-result v1

    .line 145
    if-ltz v1, :cond_0

    .line 146
    iget-object v2, p0, Lhic;->i:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-virtual {p0, v0, v2, v1}, Ldns;->a(Ljava/lang/String;Lcom/wandoujia/ripple_framework/model/Model;I)V

    .line 148
    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/String;Lcom/wandoujia/ripple_framework/model/Model;I)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 165
    const-string v0, "http://apis.wandoujia.com/apps/v1/%s/guess?format=proto"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 166
    new-instance v1, Lhey;

    new-instance v2, Ldnu;

    invoke-direct {v2, p0, p2, p3}, Ldnu;-><init>(Ldns;Lcom/wandoujia/ripple_framework/model/Model;I)V

    new-instance v3, Ldnv;

    invoke-direct {v3, p0}, Ldnv;-><init>(Ldns;)V

    invoke-direct {v1, v0, v2, v3}, Lhey;-><init>(Ljava/lang/String;Lagu;Lagt;)V

    iput-object v1, p0, Ldns;->a:Lhey;

    .line 205
    iget-object v0, p0, Ldns;->a:Lhey;

    invoke-virtual {v0}, Lhey;->j()V

    .line 206
    return-void
.end method

.method protected b()I
    .locals 1

    .prologue
    .line 238
    const/4 v0, 0x3

    return v0
.end method

.method protected final b(Landroid/widget/FrameLayout;Lhht;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 93
    invoke-virtual {p0}, Ldns;->f()Leri;

    move-result-object v0

    const v1, 0x7f0c0329

    invoke-virtual {v0, v1}, Leri;->a(I)Leri;

    move-result-object v0

    iget-object v0, v0, Leri;->a:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    .line 94
    invoke-virtual {p0, p1, v0, p2}, Ldns;->a(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lhht;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 95
    iget-object v1, p0, Ldns;->b:Lerf;

    if-nez v1, :cond_0

    .line 96
    invoke-virtual {p0}, Ldns;->g()Lhas;

    move-result-object v1

    invoke-static {v0, v1}, Ld;->l(Landroid/view/ViewGroup;Lhas;)Lerf;

    move-result-object v1

    iput-object v1, p0, Ldns;->b:Lerf;

    .line 100
    :goto_0
    iget-object v1, p0, Ldns;->b:Lerf;

    iget-object v2, p2, Lhht;->b:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-virtual {v1, v2}, Lerf;->a(Ljava/lang/Object;)V

    .line 101
    invoke-static {p1, v0}, Ldns;->a(Landroid/widget/FrameLayout;Landroid/view/View;)V

    .line 102
    return-void

    .line 98
    :cond_0
    iget-object v1, p0, Ldns;->b:Lerf;

    invoke-virtual {v1}, Lerf;->a()V

    goto :goto_0
.end method

.method protected final c(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 3
    .parameter

    .prologue
    .line 209
    invoke-static {}, Ld;->q()Lcom/wandoujia/ripple_framework/model/Model;

    move-result-object v0

    .line 210
    iget-object v1, p1, Lcom/wandoujia/ripple_framework/model/Model;->n:Lhht;

    iget-object v1, v1, Lhht;->b:Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v1, v1, Lcom/wandoujia/ripple_framework/model/Model;->i:Ljava/util/List;

    .line 211
    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 212
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Ldns;->b()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 213
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 215
    :cond_0
    return-void
.end method
