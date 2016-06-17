.class public Lcom/wandoujia/jupiter/homepage/HomeScrollFragment;
.super Lcom/wandoujia/jupiter/fragment/ListFragment;
.source "HomeScrollFragment.java"

# interfaces
.implements Ldgb;


# instance fields
.field private d:Ldfm;

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/wandoujia/jupiter/fragment/ListFragment;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/wandoujia/jupiter/homepage/HomeScrollFragment;->e:I

    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/jupiter/homepage/HomeScrollFragment;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    iput p1, p0, Lcom/wandoujia/jupiter/homepage/HomeScrollFragment;->e:I

    return p1
.end method

.method public static synthetic a(Lcom/wandoujia/jupiter/homepage/HomeScrollFragment;)Ldfm;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/wandoujia/jupiter/homepage/HomeScrollFragment;->d:Ldfm;

    return-object v0
.end method

.method public static synthetic b(Lcom/wandoujia/jupiter/homepage/HomeScrollFragment;)I
    .locals 1
    .parameter

    .prologue
    .line 18
    iget v0, p0, Lcom/wandoujia/jupiter/homepage/HomeScrollFragment;->e:I

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Leqw;
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
    .line 99
    new-instance v0, Ldcb;

    invoke-static {}, Ld;->o()Leqx;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ldcb;-><init>(Ljava/lang/String;Leqx;)V

    return-object v0
.end method

.method public final a(I)V
    .locals 2
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/wandoujia/jupiter/homepage/HomeScrollFragment;->i:Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->scrollBy(II)V

    .line 73
    return-void
.end method

.method protected final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-super {p0, p1, p2}, Lcom/wandoujia/jupiter/fragment/ListFragment;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/wandoujia/jupiter/homepage/HomeScrollFragment;->e:I

    .line 34
    iget-object v0, p0, Lcom/wandoujia/jupiter/homepage/HomeScrollFragment;->i:Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;

    new-instance v1, Ldga;

    invoke-direct {v1, p0}, Ldga;-><init>(Lcom/wandoujia/jupiter/homepage/HomeScrollFragment;)V

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->a(Lup;)V

    .line 50
    return-void
.end method

.method public final a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;Leqz;)V
    .locals 4
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
    .line 77
    invoke-super {p0, p1, p2}, Lcom/wandoujia/jupiter/fragment/ListFragment;->a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;Leqz;)V

    .line 79
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/homepage/HomeScrollFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/homepage/HomeScrollFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;

    if-eqz v0, :cond_0

    .line 80
    iget v1, p0, Lcom/wandoujia/jupiter/homepage/HomeScrollFragment;->e:I

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/homepage/HomeScrollFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;

    iget v0, v0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->a:I

    neg-int v0, v0

    if-ge v1, v0, :cond_0

    .line 81
    iget-object v1, p0, Lcom/wandoujia/jupiter/homepage/HomeScrollFragment;->i:Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/homepage/HomeScrollFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;

    iget v0, v0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->a:I

    neg-int v0, v0

    iget-object v3, p0, Lcom/wandoujia/jupiter/homepage/HomeScrollFragment;->i:Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;

    invoke-virtual {v3}, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->getRecyclerViewScrollY()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {v1, v2, v0}, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->scrollBy(II)V

    .line 85
    :cond_0
    return-void
.end method

.method public final a(Ldfm;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/wandoujia/jupiter/homepage/HomeScrollFragment;->d:Ldfm;

    .line 59
    return-void
.end method

.method public final a_()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wandoujia/jupiter/homepage/HomeScrollFragment;->d:Ldfm;

    .line 64
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 89
    const v0, 0x7f030124

    return v0
.end method

.method public final b_()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/wandoujia/jupiter/homepage/HomeScrollFragment;->e:I

    return v0
.end method

.method public final c_()Landroid/view/View;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/wandoujia/jupiter/homepage/HomeScrollFragment;->i:Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 54
    invoke-super {p0}, Lcom/wandoujia/jupiter/fragment/ListFragment;->onDestroyView()V

    .line 55
    return-void
.end method
