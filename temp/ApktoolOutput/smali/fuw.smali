.class public final Lfuw;
.super Ljava/lang/Object;
.source "MyGiftListFragment.java"

# interfaces
.implements Lfsr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lfsr",
        "<",
        "Lfvq;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lfuw;->a:Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IILfss;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lfss",
            "<",
            "Lfvq;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lfuw;->a:Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Ld;->g(Landroid/view/View;)V

    iget-object v0, v0, Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;->a:Lcom/wandoujia/p4/views/ContentListView;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/wandoujia/p4/tips/TipsType;

    const/4 v2, 0x0

    sget-object v3, Lcom/wandoujia/p4/tips/TipsType;->LOADING:Lcom/wandoujia/p4/tips/TipsType;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lg;->a(Landroid/view/View;[Lcom/wandoujia/p4/tips/TipsType;)V

    .line 68
    iget-object v0, p3, Lfss;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 69
    if-lez p1, :cond_1

    .line 70
    iget-object v0, p0, Lfuw;->a:Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;->b(Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;)Leus;

    move-result-object v0

    iget-object v1, p0, Lfuw;->a:Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;

    invoke-static {v1}, Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;->a(Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;)Lcom/wandoujia/p4/views/FetchMoreFooterView;

    move-result-object v1

    invoke-virtual {v0, v1}, Leus;->b(Landroid/view/View;)V

    .line 71
    iget-object v0, p0, Lfuw;->a:Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;->a(Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;)Lcom/wandoujia/p4/views/FetchMoreFooterView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/p4/views/FetchMoreFooterView;->b()V

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    iget-object v0, p0, Lfuw;->a:Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;->c(Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    iget-object v0, p0, Lfuw;->a:Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;->getContentView()Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/p4/tips/TipsType;->NO_GIFT_RESULT:Lcom/wandoujia/p4/tips/TipsType;

    invoke-static {v0, v1}, Lg;->a(Landroid/view/View;Lcom/wandoujia/p4/tips/TipsType;)Landroid/view/View;

    goto :goto_0

    .line 78
    :cond_2
    iget-object v0, p0, Lfuw;->a:Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;->b(Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;)Leus;

    move-result-object v0

    iget-object v1, p0, Lfuw;->a:Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;

    invoke-static {v1}, Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;->a(Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;)Lcom/wandoujia/p4/views/FetchMoreFooterView;

    move-result-object v1

    invoke-virtual {v0, v1}, Leus;->b(Landroid/view/View;)V

    .line 79
    iget-object v0, p0, Lfuw;->a:Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;->a(Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;)Lcom/wandoujia/p4/views/FetchMoreFooterView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/p4/views/FetchMoreFooterView;->a()V

    .line 80
    iget-object v0, p0, Lfuw;->a:Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;->d(Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;)Lfun;

    move-result-object v0

    iget-object v0, v0, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->c:Ljava/util/List;

    iget-object v1, p3, Lfss;->a:Ljava/util/List;

    invoke-static {v0, v1, p1}, Lcom/wandoujia/base/utils/CollectionUtils;->replaceFromPosition(Ljava/util/List;Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lfuw;->a:Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;

    invoke-static {v1}, Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;->d(Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;)Lfun;

    move-result-object v1

    invoke-virtual {v1, v0}, Lfun;->a(Ljava/util/List;)V

    .line 84
    iget-object v0, p0, Lfuw;->a:Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;->e(Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lfuw;->a:Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;->f(Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;)Lcom/wandoujia/p4/views/ContentListView;

    move-result-object v0

    iget-object v1, p0, Lfuw;->a:Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;

    invoke-static {v1}, Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;->e(Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/views/ContentListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 86
    iget-object v0, p0, Lfuw;->a:Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;->g(Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;)Landroid/os/Parcelable;

    goto :goto_0
.end method

.method public final a(ILjava/util/concurrent/ExecutionException;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 93
    return-void
.end method
