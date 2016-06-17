.class public Lcom/wandoujia/jupiter/category/fragment/CategoryOverallFragment;
.super Lcom/wandoujia/ripple_framework/fragment/BaseFragment;
.source "CategoryOverallFragment.java"

# interfaces
.implements Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener;
.implements Ldgb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/wandoujia/ripple_framework/fragment/BaseFragment;",
        "Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener",
        "<",
        "Lcom/wandoujia/ripple_framework/model/Model;",
        ">;",
        "Ldgb;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Leqw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leqw",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Lcom/wandoujia/jupiter/category/view/SubCategoryView;

.field private f:Lcom/wandoujia/jupiter/category/view/SubCategoryView;

.field private g:Lcom/wandoujia/jupiter/category/view/CategoryScrollView;

.field private h:Lddi;

.field private i:Lddi;

.field private j:Ldfm;

.field private k:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;-><init>()V

    .line 37
    iput v1, p0, Lcom/wandoujia/jupiter/category/fragment/CategoryOverallFragment;->a:I

    .line 47
    new-instance v0, Lddi;

    invoke-direct {v0}, Lddi;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/jupiter/category/fragment/CategoryOverallFragment;->h:Lddi;

    .line 48
    new-instance v0, Lddi;

    invoke-direct {v0}, Lddi;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/jupiter/category/fragment/CategoryOverallFragment;->i:Lddi;

    .line 55
    iput-boolean v1, p0, Lcom/wandoujia/jupiter/category/fragment/CategoryOverallFragment;->k:Z

    .line 63
    const-string v0, "wdj://categories"

    const-string v1, "http://apis.wandoujia.com/five/v2/tabs/categories"

    invoke-static {v0, v1}, Lcom/wandoujia/jupiter/fragment/ListFragment;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/category/fragment/CategoryOverallFragment;->setArguments(Landroid/os/Bundle;)V

    .line 64
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/jupiter/category/fragment/CategoryOverallFragment;)I
    .locals 1
    .parameter

    .prologue
    .line 33
    iget v0, p0, Lcom/wandoujia/jupiter/category/fragment/CategoryOverallFragment;->a:I

    return v0
.end method

.method public static synthetic a(Lcom/wandoujia/jupiter/category/fragment/CategoryOverallFragment;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    iput p1, p0, Lcom/wandoujia/jupiter/category/fragment/CategoryOverallFragment;->a:I

    return p1
.end method

.method public static synthetic b(Lcom/wandoujia/jupiter/category/fragment/CategoryOverallFragment;)Ldfm;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/wandoujia/jupiter/category/fragment/CategoryOverallFragment;->j:Ldfm;

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 2
    .parameter

    .prologue
    .line 143
    iget-object v0, p0, Lcom/wandoujia/jupiter/category/fragment/CategoryOverallFragment;->g:Lcom/wandoujia/jupiter/category/view/CategoryScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/wandoujia/jupiter/category/view/CategoryScrollView;->smoothScrollBy(II)V

    .line 144
    return-void
.end method

.method public final a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;)V
    .locals 0
    .parameter

    .prologue
    .line 186
    return-void
.end method

.method public final a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;Leqz;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 197
    iget-object v1, p0, Lcom/wandoujia/jupiter/category/fragment/CategoryOverallFragment;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/wandoujia/jupiter/category/fragment/CategoryOverallFragment;->b:Leqw;

    invoke-virtual {v0, v3}, Leqw;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity$Builder;->title:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v0, p0, Lcom/wandoujia/jupiter/category/fragment/CategoryOverallFragment;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 199
    iget-object v1, p0, Lcom/wandoujia/jupiter/category/fragment/CategoryOverallFragment;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/wandoujia/jupiter/category/fragment/CategoryOverallFragment;->b:Leqw;

    invoke-virtual {v0, v2}, Leqw;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity$Builder;->title:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v0, p0, Lcom/wandoujia/jupiter/category/fragment/CategoryOverallFragment;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 202
    iget-object v1, p0, Lcom/wandoujia/jupiter/category/fragment/CategoryOverallFragment;->h:Lddi;

    iget-object v0, p0, Lcom/wandoujia/jupiter/category/fragment/CategoryOverallFragment;->b:Leqw;

    invoke-virtual {v0, v3}, Leqw;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/model/Model;->i:Ljava/util/List;

    iput-object v0, v1, Lddi;->a:Ljava/util/List;

    .line 203
    iget-object v1, p0, Lcom/wandoujia/jupiter/category/fragment/CategoryOverallFragment;->i:Lddi;

    iget-object v0, p0, Lcom/wandoujia/jupiter/category/fragment/CategoryOverallFragment;->b:Leqw;

    invoke-virtual {v0, v2}, Leqw;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/model/Model;->i:Ljava/util/List;

    iput-object v0, v1, Lddi;->a:Ljava/util/List;

    .line 205
    iget-object v0, p0, Lcom/wandoujia/jupiter/category/fragment/CategoryOverallFragment;->h:Lddi;

    invoke-virtual {v0}, Lddi;->notifyDataSetChanged()V

    .line 206
    iget-object v0, p0, Lcom/wandoujia/jupiter/category/fragment/CategoryOverallFragment;->i:Lddi;

    invoke-virtual {v0}, Lddi;->notifyDataSetChanged()V

    .line 208
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/category/fragment/CategoryOverallFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/category/fragment/CategoryOverallFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;

    if-eqz v0, :cond_0

    .line 209
    iget v1, p0, Lcom/wandoujia/jupiter/category/fragment/CategoryOverallFragment;->a:I

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/category/fragment/CategoryOverallFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;

    iget v0, v0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->a:I

    neg-int v0, v0

    if-ge v1, v0, :cond_0

    .line 210
    iget-object v1, p0, Lcom/wandoujia/jupiter/category/fragment/CategoryOverallFragment;->g:Lcom/wandoujia/jupiter/category/view/CategoryScrollView;

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/category/fragment/CategoryOverallFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;

    iget v0, v0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->a:I

    neg-int v0, v0

    iget-object v2, p0, Lcom/wandoujia/jupiter/category/fragment/CategoryOverallFragment;->g:Lcom/wandoujia/jupiter/category/view/CategoryScrollView;

    invoke-virtual {v2}, Lcom/wandoujia/jupiter/category/view/CategoryScrollView;->getScrollY()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {v1, v3, v0}, Lcom/wandoujia/jupiter/category/view/CategoryScrollView;->smoothScrollBy(II)V

    .line 214
    :cond_0
    return-void
.end method

.method public final a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 190
    return-void
.end method

.method public final a(Ldfm;)V
    .locals 0
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/wandoujia/jupiter/category/fragment/CategoryOverallFragment;->j:Ldfm;

    .line 154
    return-void
.end method

.method public final a_()V
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wandoujia/jupiter/category/fragment/CategoryOverallFragment;->j:Ldfm;

    .line 159
    return-void
.end method

.method public final b_()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/wandoujia/jupiter/category/fragment/CategoryOverallFragment;->a:I

    return v0
.end method

.method public final c_()Landroid/view/View;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/wandoujia/jupiter/category/fragment/CategoryOverallFragment;->g:Lcom/wandoujia/jupiter/category/view/CategoryScrollView;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 110
    iget-boolean v0, p0, Lcom/wandoujia/jupiter/category/fragment/CategoryOverallFragment;->k:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/jupiter/category/fragment/CategoryOverallFragment;->k:Z

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/category/fragment/CategoryOverallFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/activity/BaseActivity;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    const-string v2, "http://apis.wandoujia.com/five/v2/tabs/categories"

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/category/fragment/CategoryOverallFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/ripple_framework/activity/BaseActivity;

    const-string v2, "http://apis.wandoujia.com/five/v2/tabs/categories"

    invoke-virtual {v1, v2}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->findList(Ljava/lang/String;)Leqw;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_3

    const-string v1, "http://apis.wandoujia.com/five/v2/tabs/categories"

    new-instance v2, Ldcb;

    new-instance v3, Lddo;

    invoke-direct {v3}, Lddo;-><init>()V

    invoke-direct {v2, v1, v3}, Ldcb;-><init>(Ljava/lang/String;Leqx;)V

    invoke-virtual {v0, v2}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->addList(Leqw;)Leqw;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, p0}, Leqw;->b(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener;)V

    iput-object v0, p0, Lcom/wandoujia/jupiter/category/fragment/CategoryOverallFragment;->b:Leqw;

    invoke-virtual {v0, p0}, Leqw;->a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener;)V

    invoke-virtual {v0}, Leqw;->c()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/wandoujia/jupiter/category/fragment/CategoryOverallFragment;->b:Leqw;

    invoke-virtual {v0}, Leqw;->g()V

    .line 111
    :cond_1
    :goto_1
    return-void

    .line 110
    :cond_2
    invoke-virtual {v0}, Leqw;->f()V

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 68
    const v0, 0x7f030101

    invoke-static {p2, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v1

    .line 69
    const v0, 0x7f0c0307

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/jupiter/category/view/SubCategoryView;

    iput-object v0, p0, Lcom/wandoujia/jupiter/category/fragment/CategoryOverallFragment;->e:Lcom/wandoujia/jupiter/category/view/SubCategoryView;

    const v0, 0x7f0c0308

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/jupiter/category/view/SubCategoryView;

    iput-object v0, p0, Lcom/wandoujia/jupiter/category/fragment/CategoryOverallFragment;->f:Lcom/wandoujia/jupiter/category/view/SubCategoryView;

    const v0, 0x7f0c0305

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/jupiter/category/fragment/CategoryOverallFragment;->c:Landroid/widget/TextView;

    const v0, 0x7f0c0306

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/jupiter/category/fragment/CategoryOverallFragment;->d:Landroid/widget/TextView;

    const v0, 0x7f0c01bf

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/jupiter/category/view/CategoryScrollView;

    iput-object v0, p0, Lcom/wandoujia/jupiter/category/fragment/CategoryOverallFragment;->g:Lcom/wandoujia/jupiter/category/view/CategoryScrollView;

    .line 70
    return-object v1
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 115
    invoke-super {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->onDestroyView()V

    .line 116
    iget-object v0, p0, Lcom/wandoujia/jupiter/category/fragment/CategoryOverallFragment;->b:Leqw;

    invoke-virtual {v0, p0}, Leqw;->b(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener;)V

    .line 117
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 83
    invoke-super {p0, p1, p2}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 85
    iget-object v0, p0, Lcom/wandoujia/jupiter/category/fragment/CategoryOverallFragment;->g:Lcom/wandoujia/jupiter/category/view/CategoryScrollView;

    new-instance v1, Lddm;

    invoke-direct {v1, p0}, Lddm;-><init>(Lcom/wandoujia/jupiter/category/fragment/CategoryOverallFragment;)V

    invoke-virtual {v0, v1}, Lcom/wandoujia/jupiter/category/view/CategoryScrollView;->setHomeOnScrollChangeListener(Ldfm;)V

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Lcom/wandoujia/jupiter/category/fragment/CategoryOverallFragment;->a:I

    .line 103
    iget-object v0, p0, Lcom/wandoujia/jupiter/category/fragment/CategoryOverallFragment;->e:Lcom/wandoujia/jupiter/category/view/SubCategoryView;

    iget-object v1, p0, Lcom/wandoujia/jupiter/category/fragment/CategoryOverallFragment;->h:Lddi;

    invoke-virtual {v0, v1}, Lcom/wandoujia/jupiter/category/view/SubCategoryView;->setAdapter(Lddi;)V

    .line 104
    iget-object v0, p0, Lcom/wandoujia/jupiter/category/fragment/CategoryOverallFragment;->f:Lcom/wandoujia/jupiter/category/view/SubCategoryView;

    iget-object v1, p0, Lcom/wandoujia/jupiter/category/fragment/CategoryOverallFragment;->i:Lddi;

    invoke-virtual {v0, v1}, Lcom/wandoujia/jupiter/category/view/SubCategoryView;->setAdapter(Lddi;)V

    .line 105
    return-void
.end method
