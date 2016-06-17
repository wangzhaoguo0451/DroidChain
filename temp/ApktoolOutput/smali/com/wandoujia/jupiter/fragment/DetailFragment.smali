.class public Lcom/wandoujia/jupiter/fragment/DetailFragment;
.super Lcom/wandoujia/jupiter/fragment/ListFragment;
.source "DetailFragment.java"


# instance fields
.field private A:Z

.field private B:Lcom/wandoujia/jupiter/toolbar/JupiterToolbar;

.field private C:Landroid/view/ViewGroup;

.field private D:Landroid/view/View;

.field private E:I

.field private F:Lert;

.field private G:Lup;

.field private final H:Lcom/wandoujia/appmanager/LocalAppChangedListener;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private q:Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;

.field private r:I

.field private s:Z

.field private t:Z

.field private u:Ljava/lang/String;

.field private v:Ldfh;

.field private w:Lcom/wandoujia/ripple_framework/view/Anchor;

.field private x:Ljava/lang/String;

.field private y:I

.field private z:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/wandoujia/jupiter/fragment/ListFragment;-><init>()V

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->A:Z

    .line 108
    new-instance v0, Ldel;

    invoke-direct {v0, p0}, Ldel;-><init>(Lcom/wandoujia/jupiter/fragment/DetailFragment;)V

    iput-object v0, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->G:Lup;

    .line 120
    new-instance v0, Ldez;

    invoke-direct {v0, p0}, Ldez;-><init>(Lcom/wandoujia/jupiter/fragment/DetailFragment;)V

    iput-object v0, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->H:Lcom/wandoujia/appmanager/LocalAppChangedListener;

    .line 789
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/jupiter/fragment/DetailFragment;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->e:Landroid/view/View;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lcom/wandoujia/ripple_framework/view/Anchor;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/wandoujia/jupiter/fragment/DetailFragment;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 157
    new-instance v0, Lcom/wandoujia/jupiter/fragment/DetailFragment;

    invoke-direct {v0}, Lcom/wandoujia/jupiter/fragment/DetailFragment;-><init>()V

    .line 158
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "wdj://apps/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    :cond_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "http://apis.wandoujia.com/apps/v1/%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    :cond_1
    const/4 v1, 0x0

    invoke-static {p5, p4, v1}, Lcom/wandoujia/jupiter/fragment/DetailFragment;->a(Ljava/lang/String;Ljava/lang/String;Lcom/wandoujia/ripple_framework/fragment/BaseListFragment$ViewConfig;)Landroid/os/Bundle;

    move-result-object v1

    .line 162
    const-string v2, "packageName"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v2, "anchor"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 164
    const-string v2, "iconUrl"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v2, "iconBitmapKey"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 166
    invoke-virtual {v0, v1}, Lcom/wandoujia/jupiter/fragment/DetailFragment;->setArguments(Landroid/os/Bundle;)V

    .line 167
    return-object v0
.end method

.method public static synthetic b(Lcom/wandoujia/jupiter/fragment/DetailFragment;)I
    .locals 1
    .parameter

    .prologue
    .line 81
    iget v0, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->r:I

    return v0
.end method

.method public static synthetic c(Lcom/wandoujia/jupiter/fragment/DetailFragment;)Leqw;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->n:Leqw;

    return-object v0
.end method

.method public static synthetic d(Lcom/wandoujia/jupiter/fragment/DetailFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->u:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic d()V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method public static synthetic e(Lcom/wandoujia/jupiter/fragment/DetailFragment;)Leqw;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->n:Leqw;

    return-object v0
.end method

.method public static synthetic f(Lcom/wandoujia/jupiter/fragment/DetailFragment;)Leqw;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->n:Leqw;

    return-object v0
.end method

.method public static synthetic g(Lcom/wandoujia/jupiter/fragment/DetailFragment;)Leqw;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->n:Leqw;

    return-object v0
.end method

.method private g()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 289
    iget-object v1, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->n:Leqw;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->n:Leqw;

    invoke-virtual {v1}, Leqw;->c()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 294
    :cond_0
    :goto_0
    return v0

    .line 292
    :cond_1
    iget-object v1, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->n:Leqw;

    invoke-virtual {v1, v0}, Leqw;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    .line 293
    const v1, 0x7f0c0026

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/model/Model;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 294
    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public static synthetic h(Lcom/wandoujia/jupiter/fragment/DetailFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->A:Z

    return v0
.end method

.method public static synthetic i(Lcom/wandoujia/jupiter/fragment/DetailFragment;)Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->i:Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;

    return-object v0
.end method

.method public static synthetic j(Lcom/wandoujia/jupiter/fragment/DetailFragment;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->z:Landroid/view/View;

    return-object v0
.end method

.method public static synthetic k(Lcom/wandoujia/jupiter/fragment/DetailFragment;)Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->q:Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;

    return-object v0
.end method

.method public static synthetic l(Lcom/wandoujia/jupiter/fragment/DetailFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/wandoujia/jupiter/fragment/DetailFragment;->p()V

    return-void
.end method

.method public static synthetic m(Lcom/wandoujia/jupiter/fragment/DetailFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->A:Z

    return v0
.end method

.method public static synthetic n(Lcom/wandoujia/jupiter/fragment/DetailFragment;)Leqw;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->n:Leqw;

    return-object v0
.end method

.method public static synthetic o(Lcom/wandoujia/jupiter/fragment/DetailFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/wandoujia/jupiter/fragment/DetailFragment;->q()V

    return-void
.end method

.method private p()V
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->q:Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;->a()V

    .line 299
    iget-object v0, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->i:Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;

    iget-object v1, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->G:Lup;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->q:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 300
    iget-object v0, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->toolbarViewBinder:Lhoe;

    const/4 v1, 0x0

    iput-object v1, v0, Lhoe;->a:Lhof;

    .line 301
    iget-object v0, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->v:Ldfh;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->v:Ldfh;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ldfh;->b(Z)V

    .line 304
    :cond_0
    return-void
.end method

.method public static synthetic p(Lcom/wandoujia/jupiter/fragment/DetailFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/wandoujia/jupiter/fragment/DetailFragment;->g()Z

    move-result v0

    return v0
.end method

.method public static synthetic q(Lcom/wandoujia/jupiter/fragment/DetailFragment;)Landroid/support/v7/widget/Toolbar;
    .locals 1
    .parameter

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/fragment/DetailFragment;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    return-object v0
.end method

.method private q()V
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->z:Landroid/view/View;

    if-nez v0, :cond_1

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->z:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 327
    if-eqz v0, :cond_0

    .line 328
    iget-object v1, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->z:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 329
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->z:Landroid/view/View;

    goto :goto_0
.end method

.method public static synthetic r(Lcom/wandoujia/jupiter/fragment/DetailFragment;)Landroid/support/v7/widget/Toolbar;
    .locals 1
    .parameter

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/fragment/DetailFragment;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic s(Lcom/wandoujia/jupiter/fragment/DetailFragment;)Landroid/support/v7/widget/Toolbar;
    .locals 1
    .parameter

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/fragment/DetailFragment;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)Leqw;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Leqw",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;"
        }
    .end annotation

    .prologue
    .line 469
    new-instance v0, Ldff;

    invoke-direct {v0, p1}, Ldff;-><init>(Ljava/lang/String;)V

    .line 470
    const/4 v1, 0x0

    iput-boolean v1, v0, Lhhv;->h:Z

    .line 471
    return-object v0
.end method

.method protected final a()Lum;
    .locals 2

    .prologue
    .line 476
    new-instance v0, Ldfg;

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/fragment/DetailFragment;->e()Lhaw;

    move-result-object v1

    invoke-direct {v0, v1}, Ldfg;-><init>(Lerv;)V

    return-object v0
.end method

.method public final a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;Leqz;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;",
            "Leqz",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;)V"
        }
    .end annotation

    .prologue
    const v4, 0x7f0c0075

    const/4 v3, 0x1

    .line 481
    invoke-super {p0, p1, p2}, Lcom/wandoujia/jupiter/fragment/ListFragment;->a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;Leqz;)V

    .line 482
    iget-object v0, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->n:Leqw;

    invoke-virtual {v0}, Leqw;->c()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 622
    :goto_0
    return-void

    .line 486
    :cond_0
    iget-boolean v0, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->A:Z

    if-nez v0, :cond_1

    .line 487
    invoke-direct {p0}, Lcom/wandoujia/jupiter/fragment/DetailFragment;->q()V

    .line 492
    :cond_1
    iget-boolean v0, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->t:Z

    if-nez v0, :cond_2

    .line 493
    iput-boolean v3, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->t:Z

    .line 494
    iget-object v0, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->i:Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;

    const v1, 0x7f030119

    invoke-static {v0, v1}, Lj;->a(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 496
    new-instance v1, Ldeo;

    invoke-direct {v1, p0, v0}, Ldeo;-><init>(Lcom/wandoujia/jupiter/fragment/DetailFragment;Landroid/view/ViewGroup;)V

    iput-object v1, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->F:Lert;

    .line 559
    iget-object v0, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->i:Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->getAdapter()Luh;

    move-result-object v0

    check-cast v0, Ldcm;

    iget-object v1, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->F:Lert;

    invoke-virtual {v0, v1}, Ldcm;->a(Lert;)V

    .line 562
    :cond_2
    iget-object v0, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->n:Leqw;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Leqw;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    .line 564
    iget-object v1, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->F:Lert;

    invoke-virtual {v1, v0}, Lert;->a(Ljava/lang/Object;)V

    .line 565
    iget-object v1, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->i:Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;

    invoke-virtual {v1}, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->getAdapter()Luh;

    move-result-object v1

    iget-object v1, v1, Luh;->a:Lui;

    invoke-virtual {v1}, Lui;->a()V

    .line 569
    iget-object v1, v0, Lcom/wandoujia/ripple_framework/model/Model;->k:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    sget-object v2, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->APP:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    if-ne v1, v2, :cond_4

    iget-object v1, v0, Lcom/wandoujia/ripple_framework/model/Model;->l:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    sget-object v2, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->DETAIL_HEADER:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    if-ne v1, v2, :cond_4

    .line 571
    iget-object v1, v0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Entity$Builder;->title:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/wandoujia/jupiter/fragment/DetailFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 572
    iget-object v1, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->B:Lcom/wandoujia/jupiter/toolbar/JupiterToolbar;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->B:Lcom/wandoujia/jupiter/toolbar/JupiterToolbar;

    invoke-virtual {v1}, Lcom/wandoujia/jupiter/toolbar/JupiterToolbar;->getListener()Ldvf;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 573
    iget-object v1, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->B:Lcom/wandoujia/jupiter/toolbar/JupiterToolbar;

    invoke-virtual {v1}, Lcom/wandoujia/jupiter/toolbar/JupiterToolbar;->getListener()Ldvf;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldvf;->a(Lcom/wandoujia/ripple_framework/model/Model;)V

    .line 576
    :cond_3
    iget-object v1, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->C:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lerf;

    .line 577
    if-nez v1, :cond_6

    .line 578
    iget-object v1, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->C:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ld;->a(Landroid/view/ViewGroup;Lhas;)Lerf;

    move-result-object v1

    .line 579
    iget-object v2, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->C:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4, v1}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 583
    :goto_1
    invoke-virtual {v1, v0}, Lerf;->a(Ljava/lang/Object;)V

    .line 586
    :cond_4
    iget-object v1, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->n:Leqw;

    invoke-virtual {v1}, Leqw;->b()Z

    move-result v1

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->s:Z

    if-nez v1, :cond_5

    invoke-direct {p0}, Lcom/wandoujia/jupiter/fragment/DetailFragment;->g()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 587
    iput-boolean v3, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->s:Z

    .line 588
    iget-object v1, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->i:Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;

    const v2, 0x7f030114

    invoke-static {v1, v2}, Lj;->a(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 590
    new-instance v2, Ldev;

    invoke-direct {v2, v1, v0}, Ldev;-><init>(Landroid/view/ViewGroup;Lcom/wandoujia/ripple_framework/model/Model;)V

    .line 617
    iget-object v0, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->i:Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->getAdapter()Luh;

    move-result-object v0

    check-cast v0, Ldcm;

    invoke-virtual {v0, v2}, Ldcm;->b(Lert;)V

    .line 618
    iget-object v0, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->i:Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->getAdapter()Luh;

    move-result-object v0

    iget-object v0, v0, Luh;->a:Lui;

    invoke-virtual {v0}, Lui;->a()V

    .line 621
    :cond_5
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/fragment/DetailFragment;->pageLoaded()V

    goto/16 :goto_0

    .line 581
    :cond_6
    invoke-virtual {v1}, Lerf;->a()V

    goto :goto_1
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 197
    const v0, 0x7f030115

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 464
    const/4 v0, 0x0

    return v0
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 456
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/fragment/DetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->q:Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;->setEnabled(Z)V

    .line 458
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/fragment/DetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 460
    :cond_0
    return-void
.end method

.method protected initializePageUri(Landroid/view/View;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 626
    iget-object v0, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->n:Leqw;

    invoke-virtual {v0}, Leqw;->c()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v2

    .line 627
    :goto_0
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->u:Ljava/lang/String;

    if-nez v2, :cond_4

    :cond_0
    move v0, v1

    .line 634
    :goto_1
    return v0

    .line 626
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->n:Leqw;

    invoke-virtual {v0, v1}, Leqw;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v3, v0, Lcom/wandoujia/ripple_framework/model/Model;->k:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    sget-object v4, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->APP:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    if-ne v3, v4, :cond_2

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v3

    if-nez v3, :cond_3

    :cond_2
    move-object v0, v2

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/wandoujia/jupiter/app/model/AppType;->APP:Lcom/wandoujia/jupiter/app/model/AppType;

    invoke-virtual {v2}, Lcom/wandoujia/jupiter/app/model/AppType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v0

    iget-object v0, v0, Lcom/wandoujia/api/proto/AppDetail;->app_type:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 630
    :cond_4
    sget-object v1, Lham;->f:Lham;

    iget-object v1, v1, Lhal;->e:Lcom/wandoujia/ripple_framework/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "wdj://apps"

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->u:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/wandoujia/ripple_framework/log/Logger;->a(Landroid/view/View;Ljava/lang/String;)Lcom/wandoujia/ripple_framework/log/Logger;

    .line 634
    const/4 v0, 0x1

    goto :goto_1

    .line 630
    :cond_5
    const-string v0, "wdj://games"

    goto :goto_2
.end method

.method public isSystemBarEnabled()Z
    .locals 1

    .prologue
    .line 285
    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 639
    iget-object v0, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->q:Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 640
    invoke-super {p0}, Lcom/wandoujia/jupiter/fragment/ListFragment;->onBackPressed()Z

    move-result v0

    .line 643
    :goto_0
    return v0

    .line 642
    :cond_0
    invoke-direct {p0}, Lcom/wandoujia/jupiter/fragment/DetailFragment;->p()V

    .line 643
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 172
    invoke-super {p0, p1}, Lcom/wandoujia/jupiter/fragment/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 173
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/fragment/DetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "packageName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->u:Ljava/lang/String;

    .line 174
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/fragment/DetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "anchor"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/view/Anchor;

    iput-object v0, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->w:Lcom/wandoujia/ripple_framework/view/Anchor;

    .line 175
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/fragment/DetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "iconUrl"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->x:Ljava/lang/String;

    .line 176
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/fragment/DetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "iconBitmapKey"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->y:I

    .line 177
    sget-object v0, Lham;->f:Lham;

    const-string v1, "app"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/AppManager;

    iget-object v1, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->H:Lcom/wandoujia/appmanager/LocalAppChangedListener;

    invoke-virtual {v0, v1}, Lcom/wandoujia/appmanager/AppManager;->a(Lcom/wandoujia/appmanager/LocalAppChangedListener;)V

    .line 179
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 183
    invoke-super {p0}, Lcom/wandoujia/jupiter/fragment/ListFragment;->onDestroy()V

    .line 184
    sget-object v0, Lham;->f:Lham;

    const-string v1, "app"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/AppManager;

    iget-object v1, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->H:Lcom/wandoujia/appmanager/LocalAppChangedListener;

    invoke-virtual {v0, v1}, Lcom/wandoujia/appmanager/AppManager;->b(Lcom/wandoujia/appmanager/LocalAppChangedListener;)V

    .line 186
    iget-object v0, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->C:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->C:Landroid/view/ViewGroup;

    const v1, 0x7f0c0075

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lerf;

    .line 189
    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {v0}, Lerf;->a()V

    .line 193
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 14
    .parameter
    .parameter

    .prologue
    .line 202
    invoke-super/range {p0 .. p2}, Lcom/wandoujia/jupiter/fragment/ListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 204
    const v0, 0x7f0c0324

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->d:Landroid/view/View;

    .line 205
    const v0, 0x7f0c0325

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->e:Landroid/view/View;

    .line 206
    const v0, 0x7f0c0326

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;

    iput-object v0, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->q:Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;

    .line 207
    const v0, 0x7f0c0328

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->D:Landroid/view/View;

    .line 208
    const v0, 0x7f0c0300

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->C:Landroid/view/ViewGroup;

    .line 209
    const v0, 0x7f0c0327

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->z:Landroid/view/View;

    .line 210
    const v0, 0x7f0c007b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 211
    iget-object v0, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->j:Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->setSwipeRefreshEnabled(Z)V

    .line 212
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/fragment/DetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0241

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/fragment/DetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0150

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    const/high16 v1, 0x3f80

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/fragment/DetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v1, v2}, Lj;->a(FLandroid/content/Context;)I

    move-result v1

    add-int/2addr v1, v0

    const/16 v0, 0x13

    invoke-static {v0}, Lcom/wandoujia/base/utils/SystemUtil;->aboveApiLevel(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/fragment/DetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b0243

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_0
    add-int/2addr v0, v1

    iput v0, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->E:I

    .line 219
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/fragment/DetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0106

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->r:I

    .line 223
    iget-object v0, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->q:Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;

    iget-object v1, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;->setBackgroundView(Landroid/view/View;)V

    .line 224
    iget-object v0, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->q:Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;

    new-instance v1, Lhoc;

    invoke-direct {v1, p0}, Lhoc;-><init>(Lcom/wandoujia/jupiter/fragment/DetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;->setOnAnimListener(Lhoc;)V

    .line 233
    iget-object v0, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->q:Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;

    new-instance v1, Ldfa;

    invoke-direct {v1, p0}, Ldfa;-><init>(Lcom/wandoujia/jupiter/fragment/DetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;->setScrollStateGetter(Lhoa;)V

    .line 242
    iget-object v0, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->e:Landroid/view/View;

    iget v1, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->r:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/nineoldandroids/view/ViewHelper;->setTranslationY(Landroid/view/View;F)V

    .line 243
    iget-object v0, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->i:Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;

    iget-object v1, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->G:Lup;

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->a(Lup;)V

    .line 244
    iget-object v0, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->q:Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;

    new-instance v1, Lhod;

    invoke-direct {v1, p0}, Lhod;-><init>(Lcom/wandoujia/jupiter/fragment/DetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;->setTargetTransListener(Lhod;)V

    .line 255
    iget-object v0, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->i:Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/fragment/DetailFragment;->createToolbarViewBinder(Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;)Lhoe;

    move-result-object v0

    .line 256
    if-eqz v0, :cond_0

    .line 257
    new-instance v1, Ldfh;

    iget-object v2, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->D:Landroid/view/View;

    iget-object v3, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->i:Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;

    iget v4, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->E:I

    invoke-direct {v1, v2, v3, v4}, Ldfh;-><init>(Landroid/view/View;Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;I)V

    iput-object v1, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->v:Ldfh;

    .line 259
    iget-object v1, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->v:Ldfh;

    iput-object v1, v0, Lhoe;->a:Lhof;

    .line 260
    iget v1, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->toolbarScrollerY:I

    invoke-virtual {v0, v1}, Lhoe;->a(I)V

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    new-instance v1, Ldfb;

    invoke-direct {v1, p0}, Ldfb;-><init>(Lcom/wandoujia/jupiter/fragment/DetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    iget-object v0, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->x:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->y:I

    if-ltz v0, :cond_5

    :cond_1
    const/4 v0, 0x1

    .line 274
    :goto_1
    iget-object v1, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->w:Lcom/wandoujia/ripple_framework/view/Anchor;

    if-eqz v1, :cond_7

    if-eqz v0, :cond_7

    .line 275
    iget-object v7, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->w:Lcom/wandoujia/ripple_framework/view/Anchor;

    iget-object v0, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->x:Ljava/lang/String;

    iget v2, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->y:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->A:Z

    iget-object v1, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->e:Landroid/view/View;

    iget-object v8, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->d:Landroid/view/View;

    iget-object v3, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->z:Landroid/view/View;

    check-cast v3, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    sget-object v0, Lham;->f:Lham;

    const-string v4, "holder"

    invoke-virtual {v0, v4}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhhz;

    invoke-virtual {v0, v2}, Lhhz;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-static {v3, v0}, Lhma;->a(Landroid/view/View;Landroid/graphics/Bitmap;)V

    :goto_2
    iget-object v0, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->q:Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    iget v0, v7, Lcom/wandoujia/ripple_framework/view/Anchor;->b:I

    int-to-float v0, v0

    iget v2, v7, Lcom/wandoujia/ripple_framework/view/Anchor;->c:I

    int-to-float v2, v2

    div-float v2, v0, v2

    iget v0, v7, Lcom/wandoujia/ripple_framework/view/Anchor;->a:I

    int-to-float v0, v0

    invoke-static {v1}, Lcom/nineoldandroids/view/ViewHelper;->getTranslationY(Landroid/view/View;)F

    move-result v4

    sub-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, v7, Lcom/wandoujia/ripple_framework/view/Anchor;->a:I

    iget v0, v7, Lcom/wandoujia/ripple_framework/view/Anchor;->c:I

    int-to-float v0, v0

    iget v4, v7, Lcom/wandoujia/ripple_framework/view/Anchor;->a:I

    int-to-float v4, v4

    mul-float/2addr v0, v4

    iget v4, v7, Lcom/wandoujia/ripple_framework/view/Anchor;->c:I

    iget v5, v7, Lcom/wandoujia/ripple_framework/view/Anchor;->b:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v0, v4

    invoke-static {v1, v0}, Lcom/nineoldandroids/view/ViewHelper;->setPivotY(Landroid/view/View;F)V

    invoke-static {v1, v2}, Lcom/nineoldandroids/view/ViewHelper;->setScaleY(Landroid/view/View;F)V

    const/4 v0, 0x0

    invoke-static {v8, v0}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    invoke-virtual {v3}, Lcom/facebook/drawee/view/SimpleDraweeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/fragment/DetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b00f2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/fragment/DetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b00f2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    invoke-static {v0}, Lj;->b(Landroid/content/Context;)F

    move-result v4

    int-to-float v5, v6

    sub-float/2addr v4, v5

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    float-to-int v10, v4

    iget v4, v7, Lcom/wandoujia/ripple_framework/view/Anchor;->e:I

    sub-int/2addr v4, v10

    iget v5, v7, Lcom/wandoujia/ripple_framework/view/Anchor;->d:I

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v11, 0x7f0b00f0

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sub-int/2addr v5, v0

    iget v0, v7, Lcom/wandoujia/ripple_framework/view/Anchor;->f:I

    int-to-float v0, v0

    int-to-float v6, v6

    div-float v6, v0, v6

    iget v0, v7, Lcom/wandoujia/ripple_framework/view/Anchor;->g:I

    int-to-float v0, v0

    int-to-float v7, v9

    div-float v7, v0, v7

    invoke-virtual {v3}, Lcom/facebook/drawee/view/SimpleDraweeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v10, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/16 v9, 0xb

    invoke-static {v9}, Lcom/wandoujia/base/utils/SystemUtil;->aboveApiLevel(I)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Lcom/facebook/drawee/view/SimpleDraweeView;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_2
    invoke-virtual {v3, v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    int-to-float v0, v4

    invoke-static {v3, v0}, Lcom/nineoldandroids/view/ViewHelper;->setTranslationX(Landroid/view/View;F)V

    int-to-float v0, v5

    invoke-static {v3, v0}, Lcom/nineoldandroids/view/ViewHelper;->setTranslationY(Landroid/view/View;F)V

    const/4 v0, 0x0

    invoke-static {v3, v0}, Lcom/nineoldandroids/view/ViewHelper;->setPivotX(Landroid/view/View;F)V

    const/4 v0, 0x0

    invoke-static {v3, v0}, Lcom/nineoldandroids/view/ViewHelper;->setPivotY(Landroid/view/View;F)V

    invoke-static {v3, v6}, Lcom/nineoldandroids/view/ViewHelper;->setScaleX(Landroid/view/View;F)V

    invoke-static {v3, v7}, Lcom/nineoldandroids/view/ViewHelper;->setScaleY(Landroid/view/View;F)V

    new-instance v9, Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-direct {v9}, Lcom/nineoldandroids/animation/AnimatorSet;-><init>()V

    const/16 v0, 0xb

    invoke-static {v0}, Lcom/wandoujia/base/utils/SystemUtil;->aboveApiLevel(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    const/4 v10, 0x0

    invoke-virtual {v1, v0, v10}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_3
    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v10, 0x0

    const/high16 v11, 0x3f80

    aput v11, v0, v10

    invoke-static {v0}, Lcom/nineoldandroids/animation/ValueAnimator;->ofFloat([F)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v10

    const-wide/16 v12, 0x28a

    invoke-virtual {v10, v12, v13}, Lcom/nineoldandroids/animation/ValueAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v10, v0}, Lcom/nineoldandroids/animation/ValueAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v0, Ldfc;

    invoke-direct {v0, v8}, Ldfc;-><init>(Landroid/view/View;)V

    invoke-virtual {v10, v0}, Lcom/nineoldandroids/animation/ValueAnimator;->addUpdateListener(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v8, 0x0

    const/high16 v11, 0x3f80

    aput v11, v0, v8

    invoke-static {v0}, Lcom/nineoldandroids/animation/ValueAnimator;->ofFloat([F)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v8

    const-wide/16 v12, 0x15e

    invoke-virtual {v8, v12, v13}, Lcom/nineoldandroids/animation/ValueAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v8, v0}, Lcom/nineoldandroids/animation/ValueAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v0, Ldfd;

    invoke-direct {v0, v1}, Ldfd;-><init>(Landroid/view/View;)V

    invoke-virtual {v8, v0}, Lcom/nineoldandroids/animation/ValueAnimator;->addUpdateListener(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v11, 0x0

    const/high16 v12, 0x3f80

    aput v12, v0, v11

    invoke-static {v0}, Lcom/nineoldandroids/animation/ValueAnimator;->ofFloat([F)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v11

    const-wide/16 v12, 0x12c

    invoke-virtual {v11, v12, v13}, Lcom/nineoldandroids/animation/ValueAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v11, v0}, Lcom/nineoldandroids/animation/ValueAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v0, Ldfe;

    invoke-direct/range {v0 .. v7}, Ldfe;-><init>(Landroid/view/View;FLcom/facebook/drawee/view/SimpleDraweeView;IIFF)V

    invoke-virtual {v11, v0}, Lcom/nineoldandroids/animation/ValueAnimator;->addUpdateListener(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    aput v2, v0, v1

    invoke-static {v0}, Lcom/nineoldandroids/animation/ValueAnimator;->ofFloat([F)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v4, v5}, Lcom/nineoldandroids/animation/ValueAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v1, Ldem;

    invoke-direct {v1, p0}, Ldem;-><init>(Lcom/wandoujia/jupiter/fragment/DetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->addUpdateListener(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lden;

    invoke-direct {v1, p0, v3}, Lden;-><init>(Lcom/wandoujia/jupiter/fragment/DetailFragment;Lcom/facebook/drawee/view/SimpleDraweeView;)V

    invoke-virtual {v9, v1}, Lcom/nineoldandroids/animation/AnimatorSet;->addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    invoke-virtual {v9, v10}, Lcom/nineoldandroids/animation/AnimatorSet;->play(Lcom/nineoldandroids/animation/Animator;)Lcom/nineoldandroids/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/nineoldandroids/animation/AnimatorSet$Builder;->with(Lcom/nineoldandroids/animation/Animator;)Lcom/nineoldandroids/animation/AnimatorSet$Builder;

    invoke-virtual {v9, v11}, Lcom/nineoldandroids/animation/AnimatorSet;->play(Lcom/nineoldandroids/animation/Animator;)Lcom/nineoldandroids/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/nineoldandroids/animation/AnimatorSet$Builder;->after(Lcom/nineoldandroids/animation/Animator;)Lcom/nineoldandroids/animation/AnimatorSet$Builder;

    invoke-virtual {v9, v0}, Lcom/nineoldandroids/animation/AnimatorSet;->play(Lcom/nineoldandroids/animation/Animator;)Lcom/nineoldandroids/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/nineoldandroids/animation/AnimatorSet$Builder;->after(Lcom/nineoldandroids/animation/Animator;)Lcom/nineoldandroids/animation/AnimatorSet$Builder;

    invoke-virtual {v9}, Lcom/nineoldandroids/animation/AnimatorSet;->start()V

    .line 280
    :goto_3
    const v0, 0x7f0c00f3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/jupiter/toolbar/JupiterToolbar;

    iput-object v0, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->B:Lcom/wandoujia/jupiter/toolbar/JupiterToolbar;

    .line 281
    return-void

    .line 212
    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 273
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 275
    :cond_6
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Landroid/net/Uri;)V

    goto/16 :goto_2

    .line 277
    :cond_7
    invoke-direct {p0}, Lcom/wandoujia/jupiter/fragment/DetailFragment;->q()V

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/fragment/DetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f040015

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v2, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->j:Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;

    invoke-virtual {v2, v1}, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->e:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v1}, Landroid/view/animation/Animation;->start()V

    const/high16 v1, 0x10a

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, p0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->d:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    goto :goto_3
.end method
