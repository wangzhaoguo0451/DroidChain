.class public abstract Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;
.super Lcom/wandoujia/ripple_framework/fragment/AsyncLoadFragment;
.source "BaseListFragment.java"

# interfaces
.implements Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener;
.implements Leoi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/wandoujia/ripple_framework/fragment/AsyncLoadFragment;",
        "Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener",
        "<",
        "Lcom/wandoujia/ripple_framework/model/Model;",
        ">;",
        "Leoi;"
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Lup;

.field private c:Lhmr;

.field public g:Z

.field public h:Landroid/view/View;

.field public i:Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;

.field public j:Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;

.field public k:Lcom/wandoujia/ripple_framework/video/ViewFocusManager;

.field public l:Landroid/os/Handler;

.field public m:Z

.field public n:Leqw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leqw",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;"
        }
    .end annotation
.end field

.field public o:Ljava/lang/String;

.field public p:Lhaz;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/fragment/AsyncLoadFragment;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->a:Z

    .line 81
    new-instance v0, Lhdv;

    invoke-direct {v0, p0}, Lhdv;-><init>(Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;)V

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->b:Lup;

    .line 93
    new-instance v0, Lhmr;

    invoke-direct {v0, p0}, Lhmr;-><init>(Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;)V

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->c:Lhmr;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->a(Ljava/lang/String;Ljava/lang/String;Lcom/wandoujia/ripple_framework/fragment/BaseListFragment$ViewConfig;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/wandoujia/ripple_framework/fragment/BaseListFragment$ViewConfig;)Landroid/os/Bundle;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 115
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 116
    const-string v1, "page_api_url"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v1, "page_intent_uri"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    if-eqz p2, :cond_0

    .line 119
    const-string v1, "view_config"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 121
    :cond_0
    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 125
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 126
    const-string v1, "page_api_url"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v1, "page_intent_uri"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v1, "title"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 129
    return-object v0
.end method

.method public static c(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 107
    invoke-static {p0, v0, v0}, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->a(Ljava/lang/String;Ljava/lang/String;Lcom/wandoujia/ripple_framework/fragment/BaseListFragment$ViewConfig;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 333
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->n:Leqw;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->n:Leqw;

    iget-object v1, p0, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->p:Lhaz;

    invoke-virtual {v0, v1}, Leqw;->b(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener;)V

    .line 335
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->n:Leqw;

    iget-object v1, p0, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->j:Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;

    invoke-virtual {v0, v1}, Leqw;->b(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener;)V

    .line 336
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->n:Leqw;

    invoke-virtual {v0, p0}, Leqw;->b(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener;)V

    .line 338
    :cond_0
    return-void
.end method

.method private g()V
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->k:Lcom/wandoujia/ripple_framework/video/ViewFocusManager;

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->k:Lcom/wandoujia/ripple_framework/video/ViewFocusManager;

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/video/ViewFocusManager;->a()V

    .line 396
    :cond_0
    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)Leqw;
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
.end method

.method public abstract a()Lum;
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 398
    return-void
.end method

.method public a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;Leqz;)V
    .locals 0
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
    .line 280
    return-void
.end method

.method public a(Leqw;)V
    .locals 2
    .parameter

    .prologue
    .line 283
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->e()V

    .line 284
    iput-object p1, p0, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->n:Leqw;

    .line 285
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->n:Leqw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->n:Leqw;

    iget-object v1, p0, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->p:Lhaz;

    invoke-virtual {v0, v1}, Leqw;->a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener;)V

    iget-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->n:Leqw;

    iget-object v1, p0, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->j:Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;

    invoke-virtual {v0, v1}, Leqw;->a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener;)V

    iget-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->n:Leqw;

    invoke-virtual {v0, p0}, Leqw;->a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener;)V

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->j:Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;

    invoke-virtual {v0, p1}, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->setList(Leqw;)V

    .line 287
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->p:Lhaz;

    iput-object p1, v0, Lhaz;->e:Leqw;

    iget-object v1, v0, Lhaz;->f:Lhas;

    iget-object v0, v0, Lhaz;->e:Leqw;

    iput-object v0, v1, Lhas;->a:Leqw;

    .line 288
    invoke-virtual {p1}, Leqw;->c()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->n:Leqw;

    invoke-virtual {v0}, Leqw;->g()V

    .line 293
    :goto_0
    return-void

    .line 291
    :cond_1
    invoke-virtual {p1}, Leqw;->f()V

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 401
    sget v0, Lcom/wandoujia/ripple_framework/R$layout;->rip_recycler_auto_loading:I

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 430
    const/4 v0, 0x0

    return v0
.end method

.method public d_()Landroid/support/v7/widget/LinearLayoutManager;
    .locals 2

    .prologue
    .line 251
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->h:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    invoke-direct {v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>()V

    return-object v0
.end method

.method public abstract f()Lhaz;
.end method

.method public final h()V
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->i:Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->l()V

    .line 417
    return-void
.end method

.method public final i()V
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->i:Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->m()V

    .line 422
    return-void
.end method

.method protected final j()V
    .locals 3

    .prologue
    .line 230
    invoke-super {p0}, Lcom/wandoujia/ripple_framework/fragment/AsyncLoadFragment;->j()V

    .line 231
    iget-boolean v0, p0, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->a:Z

    if-eqz v0, :cond_1

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->a:Z

    .line 235
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/activity/BaseActivity;

    .line 236
    if-eqz v0, :cond_0

    .line 237
    const/4 v1, 0x0

    .line 238
    iget-object v2, p0, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->o:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 239
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/ripple_framework/activity/BaseActivity;

    iget-object v2, p0, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->findList(Ljava/lang/String;)Leqw;

    move-result-object v1

    .line 241
    :cond_2
    if-nez v1, :cond_3

    .line 242
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->o:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->a(Ljava/lang/String;)Leqw;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->addList(Leqw;)Leqw;

    move-result-object v0

    .line 244
    :goto_1
    iput-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->n:Leqw;

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method protected final k()Z
    .locals 1

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final l()V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->n:Leqw;

    invoke-virtual {p0, v0}, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->a(Leqw;)V

    .line 226
    return-void
.end method

.method public final m()V
    .locals 2

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->k:Lcom/wandoujia/ripple_framework/video/ViewFocusManager;

    if-nez v0, :cond_1

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 371
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->l:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 372
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->l:Landroid/os/Handler;

    new-instance v1, Lhdw;

    invoke-direct {v1, p0}, Lhdw;-><init>(Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 405
    const/4 v0, 0x1

    return v0
.end method

.method public o()Z
    .locals 1

    .prologue
    .line 409
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 150
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/fragment/AsyncLoadFragment;->onCreate(Landroid/os/Bundle;)V

    .line 152
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "page_api_url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->o:Ljava/lang/String;

    .line 153
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "api_url_enable_cache"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->g:Z

    .line 154
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 158
    invoke-super {p0, p1, p2, p3}, Lcom/wandoujia/ripple_framework/fragment/AsyncLoadFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->h:Landroid/view/View;

    .line 159
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->h:Landroid/view/View;

    sget v1, Lcom/wandoujia/ripple_framework/R$id;->loadable_recycler_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->j:Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;

    .line 161
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->h:Landroid/view/View;

    sget v1, Lcom/wandoujia/ripple_framework/R$id;->recycler_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->i:Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;

    .line 162
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->i:Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;

    new-instance v1, Luq;

    invoke-direct {v1}, Luq;-><init>()V

    sget-object v2, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->APP:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    invoke-virtual {v2}, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Luq;->a(I)V

    sget-object v2, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->FEED_LITE:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    invoke-virtual {v2}, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Luq;->a(I)V

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->setRecycledViewPool(Luq;)V

    .line 163
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->i:Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->setItemViewCacheSize(I)V

    .line 164
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->i:Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;

    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->d_()Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->setLayoutManager(Luo;)V

    .line 165
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->i:Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;

    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->a()Lum;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->a(Lum;)V

    .line 166
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->i:Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->setItemAnimator(Luk;)V

    .line 167
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->i:Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;

    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->n()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->setNeedLogCardShow(Z)V

    .line 168
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->h:Landroid/view/View;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 269
    invoke-super {p0}, Lcom/wandoujia/ripple_framework/fragment/AsyncLoadFragment;->onDestroyView()V

    .line 271
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->p:Lhaz;

    invoke-virtual {v0}, Lhaz;->c()V

    .line 272
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->e()V

    .line 273
    sget-object v0, Lham;->f:Lham;

    const-string v1, "event_bus"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhrx;

    invoke-virtual {v0, p0}, Lhrx;->c(Ljava/lang/Object;)V

    .line 275
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 195
    invoke-super {p0}, Lcom/wandoujia/ripple_framework/fragment/AsyncLoadFragment;->onPause()V

    .line 196
    const-string v0, "ListFragment"

    const-string v1, "on pause"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->g()V

    .line 198
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 188
    invoke-super {p0}, Lcom/wandoujia/ripple_framework/fragment/AsyncLoadFragment;->onResume()V

    .line 189
    const-string v0, "ListFragment"

    const-string v1, "on resume"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->m()V

    .line 191
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 173
    invoke-super {p0, p1, p2}, Lcom/wandoujia/ripple_framework/fragment/AsyncLoadFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 174
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->i:Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;

    iget-object v1, p0, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->b:Lup;

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->a(Lup;)V

    .line 175
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->i:Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;

    iget-object v1, p0, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->c:Lhmr;

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->setOnLayoutListener(Lhmr;)V

    .line 176
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->f()Lhaz;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->p:Lhaz;

    .line 177
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->p:Lhaz;

    iget-object v0, v0, Lhaz;->f:Lhas;

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->p:Lhaz;

    iget-object v0, v0, Lhaz;->f:Lhas;

    iget-object v1, p0, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->k:Lcom/wandoujia/ripple_framework/video/ViewFocusManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/wandoujia/ripple_framework/video/ViewFocusManager;

    invoke-direct {v1}, Lcom/wandoujia/ripple_framework/video/ViewFocusManager;-><init>()V

    iput-object v1, p0, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->k:Lcom/wandoujia/ripple_framework/video/ViewFocusManager;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->l:Landroid/os/Handler;

    :cond_0
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->k:Lcom/wandoujia/ripple_framework/video/ViewFocusManager;

    iput-object v1, v0, Lhas;->b:Lcom/wandoujia/ripple_framework/video/ViewFocusManager;

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->j:Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;

    iget-object v1, p0, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->p:Lhaz;

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->setAdapter(Lhaz;)V

    .line 181
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "view_config"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment$ViewConfig;

    if-eqz v0, :cond_4

    iget v1, v0, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment$ViewConfig;->firstSpace:I

    if-gtz v1, :cond_2

    iget v1, v0, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment$ViewConfig;->lastSpace:I

    if-gtz v1, :cond_2

    iget v1, v0, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment$ViewConfig;->betweenSpace:I

    if-lez v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->i:Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;

    new-instance v2, Lhbh;

    iget v3, v0, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment$ViewConfig;->firstSpace:I

    iget v4, v0, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment$ViewConfig;->lastSpace:I

    iget v5, v0, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment$ViewConfig;->betweenSpace:I

    invoke-direct {v2, v3, v4, v5}, Lhbh;-><init>(III)V

    invoke-virtual {v1, v2}, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->a(Lum;)V

    :cond_3
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->j:Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;

    iget-boolean v0, v0, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment$ViewConfig;->swipeRefresh:Z

    invoke-virtual {v1, v0}, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->setSwipeRefreshEnabled(Z)V

    .line 183
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 184
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 5
    .parameter

    .prologue
    .line 202
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/fragment/AsyncLoadFragment;->setUserVisibleHint(Z)V

    .line 203
    const-string v0, "ListFragment"

    const-string v1, "set user visible hint %b"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    if-eqz p1, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->m()V

    .line 209
    :goto_0
    return-void

    .line 207
    :cond_0
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->g()V

    goto :goto_0
.end method
