.class public final Lfuy;
.super Ljava/lang/Object;
.source "MyGiftListFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lfuy;->a:Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 166
    add-int v0, p3, p2

    if-ne v0, p4, :cond_0

    iget-object v0, p0, Lfuy;->a:Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;->d(Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;)Lfun;

    move-result-object v0

    invoke-virtual {v0}, Lfun;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 168
    iget-object v0, p0, Lfuy;->a:Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;->i(Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;)I

    move-result v0

    if-ne p4, v0, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    iget-object v0, p0, Lfuy;->a:Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;

    invoke-static {v0, p4}, Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;->a(Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;I)I

    .line 172
    iget-object v0, p0, Lfuy;->a:Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;->j(Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;)V

    goto :goto_0
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 178
    return-void
.end method
