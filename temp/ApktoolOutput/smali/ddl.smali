.class public final Lddl;
.super Ldcl;
.source "CategoryListFragment.java"


# instance fields
.field private synthetic a:Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment;


# direct methods
.method private constructor <init>(Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment;Lerv;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lerv",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    iput-object p1, p0, Lddl;->a:Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment;

    .line 92
    invoke-virtual {p1}, Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment;->c()I

    move-result v0

    invoke-direct {p0, p2, v0}, Ldcl;-><init>(Lerv;I)V

    .line 93
    return-void
.end method

.method public synthetic constructor <init>(Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment;Lerv;B)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lddl;-><init>(Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment;Lerv;)V

    return-void
.end method


# virtual methods
.method protected final d(II)I
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 97
    if-nez p2, :cond_0

    .line 98
    iget-object v0, p0, Lddl;->a:Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment;

    invoke-virtual {v0}, Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment;->c()I

    move-result v0

    .line 113
    :goto_0
    return v0

    .line 100
    :cond_0
    iget-object v0, p0, Lddl;->a:Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment;->a(Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment;)Leqw;

    move-result-object v0

    invoke-virtual {v0}, Leqw;->c()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 101
    goto :goto_0

    .line 103
    :cond_1
    if-lez p2, :cond_2

    iget-object v0, p0, Lddl;->a:Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment;->b(Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment;)Leqw;

    move-result-object v0

    invoke-virtual {v0}, Leqw;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_3

    :cond_2
    move v0, v1

    .line 104
    goto :goto_0

    .line 106
    :cond_3
    iget-object v0, p0, Lddl;->a:Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment;->c(Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment;)Leqw;

    move-result-object v0

    invoke-virtual {v0, p2}, Leqw;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    .line 107
    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/model/Model;->a(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    move v1, v2

    .line 109
    :cond_4
    if-eqz v1, :cond_5

    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    goto :goto_0

    :cond_5
    move v0, v2

    .line 113
    goto :goto_0
.end method
