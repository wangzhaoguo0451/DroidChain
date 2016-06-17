.class public final Ldjl;
.super Lhow;
.source "DownloadTab.java"

# interfaces
.implements Lcom/wandoujia/jupiter/library/view/TransitionTab;
.implements Ldjn;


# instance fields
.field private c:Lcom/wandoujia/jupiter/library/view/DownloadTabView;

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lhow;-><init>(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 47
    iget-object v0, p0, Ldjl;->c:Lcom/wandoujia/jupiter/library/view/DownloadTabView;

    if-nez v0, :cond_0

    .line 52
    :goto_0
    return-void

    .line 50
    :cond_0
    iget-object v1, p0, Ldjl;->c:Lcom/wandoujia/jupiter/library/view/DownloadTabView;

    sget-object v0, Lham;->f:Lham;

    const-string v2, "download"

    invoke-virtual {v0, v2}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/download/DownloadManager;

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->b()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/wandoujia/jupiter/library/view/DownloadTabView;->setNumber(I)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Context;ILandroid/support/v4/view/ViewPager;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Ldjl;->c:Lcom/wandoujia/jupiter/library/view/DownloadTabView;

    if-nez v0, :cond_0

    .line 33
    invoke-static {p1}, Lcom/wandoujia/jupiter/library/view/DownloadTabView;->a(Landroid/content/Context;)Lcom/wandoujia/jupiter/library/view/DownloadTabView;

    move-result-object v0

    iput-object v0, p0, Ldjl;->c:Lcom/wandoujia/jupiter/library/view/DownloadTabView;

    .line 35
    :cond_0
    iget-object v0, p0, Ldjl;->c:Lcom/wandoujia/jupiter/library/view/DownloadTabView;

    new-instance v1, Ldjm;

    invoke-direct {v1, p3, p2}, Ldjm;-><init>(Landroid/support/v4/view/ViewPager;I)V

    invoke-virtual {v0, v1}, Lcom/wandoujia/jupiter/library/view/DownloadTabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    invoke-direct {p0}, Ldjl;->c()V

    .line 43
    iget-object v0, p0, Ldjl;->c:Lcom/wandoujia/jupiter/library/view/DownloadTabView;

    return-object v0
.end method

.method public final a()V
    .locals 2

    .prologue
    .line 56
    sget-object v0, Lham;->f:Lham;

    const-string v1, "event_bus"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhrx;

    invoke-virtual {v0, p0}, Lhrx;->a(Ljava/lang/Object;)V

    .line 58
    return-void
.end method

.method public final a(Lcom/wandoujia/jupiter/library/view/TransitionTab$State;)V
    .locals 4
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Ldjl;->c:Lcom/wandoujia/jupiter/library/view/DownloadTabView;

    if-nez v0, :cond_0

    .line 87
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Ldjl;->c:Lcom/wandoujia/jupiter/library/view/DownloadTabView;

    invoke-virtual {v0}, Lcom/wandoujia/jupiter/library/view/DownloadTabView;->getNumberView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    iput v0, p0, Ldjl;->d:I

    .line 83
    iget-object v0, p0, Ldjl;->c:Lcom/wandoujia/jupiter/library/view/DownloadTabView;

    invoke-virtual {v0}, Lcom/wandoujia/jupiter/library/view/DownloadTabView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/wandoujia/jupiter/library/view/TransitionTab$State;->getNumColorList()Landroid/content/res/ColorStateList;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x10100a1

    aput v3, v1, v2

    iget v2, p0, Ldjl;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    :goto_1
    iput v0, p0, Ldjl;->e:I

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/wandoujia/jupiter/library/view/TransitionTab$State;->getNumColorList()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    goto :goto_1
.end method

.method public final a(Lcom/wandoujia/jupiter/library/view/TransitionTab$State;F)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Ldjl;->c:Lcom/wandoujia/jupiter/library/view/DownloadTabView;

    if-nez v0, :cond_0

    .line 97
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Ldjl;->c:Lcom/wandoujia/jupiter/library/view/DownloadTabView;

    invoke-virtual {v0}, Lcom/wandoujia/jupiter/library/view/DownloadTabView;->getNumberView()Landroid/widget/TextView;

    move-result-object v1

    sget-object v0, Ldjl;->a:Lcom/nineoldandroids/animation/ArgbEvaluator;

    iget v2, p0, Ldjl;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Ldjl;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, p2, v2, v3}, Lcom/nineoldandroids/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 96
    iget-object v0, p0, Ldjl;->c:Lcom/wandoujia/jupiter/library/view/DownloadTabView;

    sget-object v1, Lcom/wandoujia/jupiter/library/view/TransitionTab$State;->DARK:Lcom/wandoujia/jupiter/library/view/TransitionTab$State;

    if-ne p1, v1, :cond_1

    :goto_1
    invoke-virtual {v0, p2}, Lcom/wandoujia/jupiter/library/view/DownloadTabView;->a(F)V

    goto :goto_0

    :cond_1
    const/high16 v1, 0x3f80

    sub-float p2, v1, p2

    goto :goto_1
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 62
    sget-object v0, Lham;->f:Lham;

    const-string v1, "event_bus"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhrx;

    invoke-virtual {v0, p0}, Lhrx;->c(Ljava/lang/Object;)V

    .line 64
    return-void
.end method

.method public final b(Lcom/wandoujia/jupiter/library/view/TransitionTab$State;)V
    .locals 2
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Ldjl;->c:Lcom/wandoujia/jupiter/library/view/DownloadTabView;

    if-nez v0, :cond_0

    .line 105
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Ldjl;->c:Lcom/wandoujia/jupiter/library/view/DownloadTabView;

    invoke-virtual {v0}, Lcom/wandoujia/jupiter/library/view/DownloadTabView;->getNumberView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/wandoujia/jupiter/library/view/TransitionTab$State;->getNumColorList()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method public final onEvent(Lcom/wandoujia/ripple_framework/event/DownloadEvent;)V
    .locals 2
    .parameter

    .prologue
    .line 67
    iget-object v0, p1, Lcom/wandoujia/ripple_framework/event/DownloadEvent;->a:Lcom/wandoujia/ripple_framework/event/DownloadEvent$Type;

    sget-object v1, Lcom/wandoujia/ripple_framework/event/DownloadEvent$Type;->DOWNLOAD_INFO_LOADED:Lcom/wandoujia/ripple_framework/event/DownloadEvent$Type;

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lcom/wandoujia/ripple_framework/event/DownloadEvent;->a:Lcom/wandoujia/ripple_framework/event/DownloadEvent$Type;

    sget-object v1, Lcom/wandoujia/ripple_framework/event/DownloadEvent$Type;->DOWNLOAD_STATE_CHANGE:Lcom/wandoujia/ripple_framework/event/DownloadEvent$Type;

    if-eq v0, v1, :cond_0

    .line 72
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-direct {p0}, Ldjl;->c()V

    goto :goto_0
.end method
