.class public Lcom/wandoujia/jupiter/fragment/ListFragment;
.super Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;
.source "ListFragment.java"


# instance fields
.field public a:I

.field public b:Lhmx;

.field public c:Lhaw;

.field private d:Lum;

.field private e:Ljava/lang/Integer;

.field private q:Leqx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leqx",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;-><init>()V

    .line 35
    const v0, 0x7f030181

    iput v0, p0, Lcom/wandoujia/jupiter/fragment/ListFragment;->a:I

    .line 39
    new-instance v0, Ldcm;

    invoke-direct {v0}, Ldcm;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/jupiter/fragment/ListFragment;->c:Lhaw;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Leqw;
    .locals 5
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
    const/4 v4, 0x0

    .line 142
    new-instance v0, Ldcb;

    invoke-direct {v0, p1}, Ldcb;-><init>(Ljava/lang/String;)V

    .line 143
    iget-boolean v1, p0, Lcom/wandoujia/jupiter/fragment/ListFragment;->g:Z

    iput-boolean v1, v0, Lhhv;->h:Z

    .line 144
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/fragment/ListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/fragment/ListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "filter"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "true"

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/fragment/ListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "filter"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    :cond_0
    iget-object v1, p0, Lcom/wandoujia/jupiter/fragment/ListFragment;->q:Leqx;

    if-nez v1, :cond_1

    .line 148
    invoke-static {}, Ld;->p()Leqx;

    move-result-object v1

    iput-object v1, p0, Lcom/wandoujia/jupiter/fragment/ListFragment;->q:Leqx;

    .line 152
    :cond_1
    iget-object v1, p0, Lcom/wandoujia/jupiter/fragment/ListFragment;->q:Leqx;

    if-eqz v1, :cond_2

    .line 153
    iget-object v1, p0, Lcom/wandoujia/jupiter/fragment/ListFragment;->q:Leqx;

    invoke-virtual {v0, v1}, Lhhv;->a(Leqx;)V

    .line 158
    :goto_0
    return-object v0

    .line 155
    :cond_2
    new-instance v1, Ldrg;

    invoke-direct {v1, v4}, Ldrg;-><init>(B)V

    invoke-virtual {v0, v1}, Lhhv;->a(Leqx;)V

    goto :goto_0
.end method

.method public a()Lum;
    .locals 3

    .prologue
    .line 134
    iget-object v0, p0, Lcom/wandoujia/jupiter/fragment/ListFragment;->d:Lum;

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Ldcl;

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/fragment/ListFragment;->e()Lhaw;

    move-result-object v1

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/fragment/ListFragment;->c()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ldcl;-><init>(Lerv;I)V

    iput-object v0, p0, Lcom/wandoujia/jupiter/fragment/ListFragment;->d:Lum;

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/jupiter/fragment/ListFragment;->d:Lum;

    return-object v0
.end method

.method public a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    return-void
.end method

.method public a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;Leqz;)V
    .locals 1
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
    .line 111
    iget-object v0, p0, Lcom/wandoujia/jupiter/fragment/ListFragment;->n:Leqw;

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/fragment/ListFragment;->b(Leqw;)V

    .line 112
    sget-object v0, Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;->REFRESH:Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;

    .line 115
    return-void
.end method

.method public a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 119
    return-void
.end method

.method public a(Leqw;)V
    .locals 1
    .parameter

    .prologue
    .line 103
    invoke-virtual {p1}, Leqw;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Leqw;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    :cond_0
    invoke-virtual {p0, p1}, Lcom/wandoujia/jupiter/fragment/ListFragment;->b(Leqw;)V

    .line 106
    :cond_1
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->a(Leqw;)V

    .line 107
    return-void
.end method

.method public final a(Leqx;)V
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/wandoujia/jupiter/fragment/ListFragment;->q:Leqx;

    if-nez v0, :cond_0

    .line 83
    iput-object p1, p0, Lcom/wandoujia/jupiter/fragment/ListFragment;->q:Leqx;

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/jupiter/fragment/ListFragment;->q:Leqx;

    invoke-static {v0, p1}, Lhjv;->a(Leqx;Leqx;)Lhjv;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/jupiter/fragment/ListFragment;->q:Leqx;

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 163
    const v0, 0x7f03013e

    return v0
.end method

.method public b(Leqw;)V
    .locals 0
    .parameter

    .prologue
    .line 170
    return-void
.end method

.method public c()I
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/wandoujia/jupiter/fragment/ListFragment;->e:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/fragment/ListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b015c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/jupiter/fragment/ListFragment;->e:Ljava/lang/Integer;

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/jupiter/fragment/ListFragment;->e:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public e()Lhaw;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/wandoujia/jupiter/fragment/ListFragment;->c:Lhaw;

    return-object v0
.end method

.method public synthetic f()Lhaz;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/fragment/ListFragment;->e()Lhaw;

    move-result-object v0

    return-object v0
.end method

.method public onEventMainThread(Lcom/wandoujia/ripple_framework/EventBusManager$Type;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-super {p0, p1, p2}, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 45
    iget-object v0, p0, Lcom/wandoujia/jupiter/fragment/ListFragment;->j:Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;

    iget v1, p0, Lcom/wandoujia/jupiter/fragment/ListFragment;->a:I

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->setEmptyLayout(I)V

    .line 47
    iget-object v0, p0, Lcom/wandoujia/jupiter/fragment/ListFragment;->b:Lhmx;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Ldfi;

    invoke-direct {v0}, Ldfi;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/jupiter/fragment/ListFragment;->b:Lhmx;

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/jupiter/fragment/ListFragment;->j:Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;

    iget-object v1, p0, Lcom/wandoujia/jupiter/fragment/ListFragment;->b:Lhmx;

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->setEmptyViewRender(Lhmx;)V

    .line 66
    iget-object v0, p0, Lcom/wandoujia/jupiter/fragment/ListFragment;->i:Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;

    if-eqz v0, :cond_1

    .line 71
    new-instance v0, Ldcr;

    iget-object v1, p0, Lcom/wandoujia/jupiter/fragment/ListFragment;->i:Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;

    invoke-direct {v0, v1}, Ldcr;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    .line 72
    iget-object v1, p0, Lcom/wandoujia/jupiter/fragment/ListFragment;->i:Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;

    invoke-virtual {v1, v0}, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->setItemAnimator(Luk;)V

    .line 74
    :cond_1
    return-void
.end method
