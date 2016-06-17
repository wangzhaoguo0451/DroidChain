.class public Lcom/wandoujia/logv3/toolkit/cardshow/CardShowRecyclerView;
.super Landroid/support/v7/widget/RecyclerView;
.source "CardShowRecyclerView.java"


# instance fields
.field private q:Z

.field private final r:Leow;

.field private s:Leos;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/logv3/toolkit/cardshow/CardShowRecyclerView;->q:Z

    .line 15
    new-instance v0, Leow;

    invoke-direct {v0}, Leow;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/logv3/toolkit/cardshow/CardShowRecyclerView;->r:Leow;

    .line 16
    new-instance v0, Leot;

    invoke-direct {v0, p0}, Leot;-><init>(Lcom/wandoujia/logv3/toolkit/cardshow/CardShowRecyclerView;)V

    iput-object v0, p0, Lcom/wandoujia/logv3/toolkit/cardshow/CardShowRecyclerView;->s:Leos;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/logv3/toolkit/cardshow/CardShowRecyclerView;->q:Z

    .line 15
    new-instance v0, Leow;

    invoke-direct {v0}, Leow;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/logv3/toolkit/cardshow/CardShowRecyclerView;->r:Leow;

    .line 16
    new-instance v0, Leot;

    invoke-direct {v0, p0}, Leot;-><init>(Lcom/wandoujia/logv3/toolkit/cardshow/CardShowRecyclerView;)V

    iput-object v0, p0, Lcom/wandoujia/logv3/toolkit/cardshow/CardShowRecyclerView;->s:Leos;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/logv3/toolkit/cardshow/CardShowRecyclerView;->q:Z

    .line 15
    new-instance v0, Leow;

    invoke-direct {v0}, Leow;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/logv3/toolkit/cardshow/CardShowRecyclerView;->r:Leow;

    .line 16
    new-instance v0, Leot;

    invoke-direct {v0, p0}, Leot;-><init>(Lcom/wandoujia/logv3/toolkit/cardshow/CardShowRecyclerView;)V

    iput-object v0, p0, Lcom/wandoujia/logv3/toolkit/cardshow/CardShowRecyclerView;->s:Leos;

    .line 43
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/logv3/toolkit/cardshow/CardShowRecyclerView;)Leow;
    .locals 1
    .parameter

    .prologue
    .line 13
    iget-object v0, p0, Lcom/wandoujia/logv3/toolkit/cardshow/CardShowRecyclerView;->r:Leow;

    return-object v0
.end method

.method private setNeedLogCardShow(Luh;)V
    .locals 2
    .parameter

    .prologue
    .line 88
    move-object v0, p1

    :goto_0
    if-nez v0, :cond_1

    .line 109
    :cond_0
    :goto_1
    return-void

    .line 91
    :cond_1
    instance-of v1, v0, Leou;

    if-eqz v1, :cond_2

    .line 92
    check-cast v0, Leou;

    invoke-interface {v0}, Leou;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luh;

    .line 93
    invoke-direct {p0, v0}, Lcom/wandoujia/logv3/toolkit/cardshow/CardShowRecyclerView;->setNeedLogCardShow(Luh;)V

    goto :goto_2

    .line 97
    :cond_2
    instance-of v1, v0, Leoy;

    if-eqz v1, :cond_3

    .line 98
    check-cast v0, Leoy;

    invoke-interface {v0}, Leoy;->a()Luh;

    move-result-object v0

    goto :goto_0

    .line 99
    :cond_3
    instance-of v1, v0, Leov;

    if-eqz v1, :cond_4

    .line 102
    check-cast v0, Leov;

    iget-object v1, p0, Lcom/wandoujia/logv3/toolkit/cardshow/CardShowRecyclerView;->s:Leos;

    iput-object v1, v0, Leov;->b:Leos;

    goto :goto_1

    .line 105
    :cond_4
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "CardShowRecyclerView card show log need RecyclerViewCardShowAdapter."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final l()V
    .locals 6

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/wandoujia/logv3/toolkit/cardshow/CardShowRecyclerView;->q:Z

    if-eqz v0, :cond_0

    .line 59
    iget-object v1, p0, Lcom/wandoujia/logv3/toolkit/cardshow/CardShowRecyclerView;->r:Leow;

    iput-object p0, v1, Leow;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Leow;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, v1, Leow;->b:Z

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Luh;

    move-result-object v3

    invoke-virtual {v3, v0}, Luh;->b(I)J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Leow;->a(Landroid/view/View;J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    :cond_0
    return-void
.end method

.method public final m()V
    .locals 2

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/wandoujia/logv3/toolkit/cardshow/CardShowRecyclerView;->q:Z

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/wandoujia/logv3/toolkit/cardshow/CardShowRecyclerView;->r:Leow;

    const/4 v1, 0x0

    iput-object v1, v0, Leow;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v0, Leow;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Leow;->b:Z

    .line 67
    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView;->onAttachedToWindow()V

    .line 48
    invoke-virtual {p0}, Lcom/wandoujia/logv3/toolkit/cardshow/CardShowRecyclerView;->l()V

    .line 49
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView;->onDetachedFromWindow()V

    .line 54
    invoke-virtual {p0}, Lcom/wandoujia/logv3/toolkit/cardshow/CardShowRecyclerView;->m()V

    .line 55
    return-void
.end method

.method public setAdapter(Luh;)V
    .locals 1
    .parameter

    .prologue
    .line 113
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Luh;)V

    .line 114
    iget-boolean v0, p0, Lcom/wandoujia/logv3/toolkit/cardshow/CardShowRecyclerView;->q:Z

    invoke-virtual {p0, v0}, Lcom/wandoujia/logv3/toolkit/cardshow/CardShowRecyclerView;->setNeedLogCardShow(Z)V

    .line 115
    return-void
.end method

.method public setNeedLogCardShow(Z)V
    .locals 1
    .parameter

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/wandoujia/logv3/toolkit/cardshow/CardShowRecyclerView;->q:Z

    .line 79
    iget-boolean v0, p0, Lcom/wandoujia/logv3/toolkit/cardshow/CardShowRecyclerView;->q:Z

    if-nez v0, :cond_0

    .line 85
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/wandoujia/logv3/toolkit/cardshow/CardShowRecyclerView;->getAdapter()Luh;

    move-result-object v0

    .line 83
    invoke-direct {p0, v0}, Lcom/wandoujia/logv3/toolkit/cardshow/CardShowRecyclerView;->setNeedLogCardShow(Luh;)V

    .line 84
    invoke-virtual {p0}, Lcom/wandoujia/logv3/toolkit/cardshow/CardShowRecyclerView;->l()V

    goto :goto_0
.end method
