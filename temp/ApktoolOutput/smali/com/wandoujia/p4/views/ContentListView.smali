.class public Lcom/wandoujia/p4/views/ContentListView;
.super Landroid/widget/ListView;
.source "ContentListView.java"

# interfaces
.implements Lgxq;


# instance fields
.field private final a:Lgxn;

.field private final b:Lgxo;

.field private c:Z

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 23
    new-instance v0, Lgxn;

    invoke-direct {v0}, Lgxn;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/views/ContentListView;->a:Lgxn;

    .line 24
    new-instance v0, Lgxo;

    invoke-direct {v0}, Lgxo;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/views/ContentListView;->b:Lgxo;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/p4/views/ContentListView;->c:Z

    .line 30
    iget-object v0, p0, Lcom/wandoujia/p4/views/ContentListView;->a:Lgxn;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    new-instance v0, Lgxn;

    invoke-direct {v0}, Lgxn;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/views/ContentListView;->a:Lgxn;

    .line 24
    new-instance v0, Lgxo;

    invoke-direct {v0}, Lgxo;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/views/ContentListView;->b:Lgxo;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/p4/views/ContentListView;->c:Z

    .line 30
    iget-object v0, p0, Lcom/wandoujia/p4/views/ContentListView;->a:Lgxn;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    new-instance v0, Lgxn;

    invoke-direct {v0}, Lgxn;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/views/ContentListView;->a:Lgxn;

    .line 24
    new-instance v0, Lgxo;

    invoke-direct {v0}, Lgxo;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/views/ContentListView;->b:Lgxo;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/p4/views/ContentListView;->c:Z

    .line 30
    iget-object v0, p0, Lcom/wandoujia/p4/views/ContentListView;->a:Lgxn;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 34
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/p4/views/ContentListView;)V
    .locals 2
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/wandoujia/p4/views/ContentListView;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/views/ContentListView;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/wandoujia/p4/views/ContentListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04000b

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Lgpy;

    invoke-direct {v1, p0}, Lgpy;-><init>(Lcom/wandoujia/p4/views/ContentListView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/wandoujia/p4/views/ContentListView;->d:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public static synthetic a(Lcom/wandoujia/p4/views/ContentListView;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/wandoujia/p4/views/ContentListView;->c:Z

    return p1
.end method

.method public static synthetic b(Lcom/wandoujia/p4/views/ContentListView;)Z
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/wandoujia/p4/views/ContentListView;->c:Z

    return v0
.end method

.method public static synthetic c(Lcom/wandoujia/p4/views/ContentListView;)V
    .locals 2
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/wandoujia/p4/views/ContentListView;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/views/ContentListView;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/wandoujia/p4/views/ContentListView;->d:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/wandoujia/p4/views/ContentListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04000a

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/p4/views/ContentListView;->d:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public static synthetic d(Lcom/wandoujia/p4/views/ContentListView;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/wandoujia/p4/views/ContentListView;->d:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 1
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/wandoujia/p4/views/ContentListView;->a:Lgxn;

    invoke-virtual {v0, p1}, Lgxn;->b(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 84
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 150
    invoke-super {p0}, Landroid/widget/ListView;->onAttachedToWindow()V

    .line 151
    iget-object v0, p0, Lcom/wandoujia/p4/views/ContentListView;->b:Lgxo;

    invoke-virtual {v0, p0}, Lgxo;->a(Landroid/widget/AbsListView;)V

    .line 153
    invoke-virtual {p0}, Lcom/wandoujia/p4/views/ContentListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 154
    :goto_0
    if-eqz v0, :cond_0

    .line 155
    instance-of v1, v0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;

    if-eqz v1, :cond_1

    .line 156
    check-cast v0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;

    invoke-virtual {v0, p0}, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout;->setAssociatedListView(Landroid/widget/AbsListView;)V

    .line 161
    :cond_0
    return-void

    .line 159
    :cond_1
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 165
    invoke-super {p0}, Landroid/widget/ListView;->onDetachedFromWindow()V

    .line 166
    iget-object v0, p0, Lcom/wandoujia/p4/views/ContentListView;->b:Lgxo;

    invoke-virtual {v0, p0}, Lgxo;->a(Lgxq;)V

    .line 169
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/wandoujia/p4/views/ContentListView;->a:Lgxn;

    invoke-virtual {v0, p1}, Lgxn;->a(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 59
    return-void
.end method

.method public setTopShadowView(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 92
    if-nez p1, :cond_0

    .line 116
    :goto_0
    return-void

    .line 95
    :cond_0
    iput-object p1, p0, Lcom/wandoujia/p4/views/ContentListView;->d:Landroid/view/View;

    .line 96
    new-instance v0, Lgpx;

    invoke-direct {v0, p0}, Lgpx;-><init>(Lcom/wandoujia/p4/views/ContentListView;)V

    iget-object v1, p0, Lcom/wandoujia/p4/views/ContentListView;->a:Lgxn;

    invoke-virtual {v1, v0}, Lgxn;->a(Landroid/widget/AbsListView$OnScrollListener;)V

    goto :goto_0
.end method
