.class public Lcom/wandoujia/p4/community/PullToRefreshHeaderView;
.super Landroid/widget/RelativeLayout;
.source "PullToRefreshHeaderView.java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/ProgressBar;

.field private d:Landroid/view/animation/RotateAnimation;

.field private e:Lcom/wandoujia/p4/community/PullToRefreshHeaderView$PullToRefreshState;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 36
    sget-object v0, Lcom/wandoujia/p4/community/PullToRefreshHeaderView$PullToRefreshState;->PULLING:Lcom/wandoujia/p4/community/PullToRefreshHeaderView$PullToRefreshState;

    iput-object v0, p0, Lcom/wandoujia/p4/community/PullToRefreshHeaderView;->e:Lcom/wandoujia/p4/community/PullToRefreshHeaderView$PullToRefreshState;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    sget-object v0, Lcom/wandoujia/p4/community/PullToRefreshHeaderView$PullToRefreshState;->PULLING:Lcom/wandoujia/p4/community/PullToRefreshHeaderView$PullToRefreshState;

    iput-object v0, p0, Lcom/wandoujia/p4/community/PullToRefreshHeaderView;->e:Lcom/wandoujia/p4/community/PullToRefreshHeaderView$PullToRefreshState;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    sget-object v0, Lcom/wandoujia/p4/community/PullToRefreshHeaderView$PullToRefreshState;->PULLING:Lcom/wandoujia/p4/community/PullToRefreshHeaderView$PullToRefreshState;

    iput-object v0, p0, Lcom/wandoujia/p4/community/PullToRefreshHeaderView;->e:Lcom/wandoujia/p4/community/PullToRefreshHeaderView$PullToRefreshState;

    .line 48
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/wandoujia/p4/community/PullToRefreshHeaderView;
    .locals 1
    .parameter

    .prologue
    .line 51
    const v0, 0x7f0301f1

    invoke-static {p0, v0}, Lg;->a(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/community/PullToRefreshHeaderView;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 100
    iget-object v0, p0, Lcom/wandoujia/p4/community/PullToRefreshHeaderView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lcom/wandoujia/p4/community/PullToRefreshHeaderView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/wandoujia/p4/community/PullToRefreshHeaderView;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 103
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/PullToRefreshHeaderView;->a(I)V

    .line 104
    return-void
.end method

.method public final a(I)V
    .locals 1
    .parameter

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/PullToRefreshHeaderView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    .line 115
    if-eqz v0, :cond_0

    .line 116
    iput p1, v0, Landroid/widget/AbsListView$LayoutParams;->height:I

    .line 117
    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/PullToRefreshHeaderView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    :cond_0
    return-void
.end method

.method public final a(Lcom/wandoujia/p4/community/PullToRefreshHeaderView$PullToRefreshState;)V
    .locals 5
    .parameter

    .prologue
    const v4, 0x7f020451

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 69
    sget-object v0, Lfci;->a:[I

    invoke-virtual {p1}, Lcom/wandoujia/p4/community/PullToRefreshHeaderView$PullToRefreshState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 90
    :goto_0
    iget-object v0, p0, Lcom/wandoujia/p4/community/PullToRefreshHeaderView;->e:Lcom/wandoujia/p4/community/PullToRefreshHeaderView$PullToRefreshState;

    sget-object v1, Lcom/wandoujia/p4/community/PullToRefreshHeaderView$PullToRefreshState;->PULLING:Lcom/wandoujia/p4/community/PullToRefreshHeaderView$PullToRefreshState;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/wandoujia/p4/community/PullToRefreshHeaderView$PullToRefreshState;->RELEASE:Lcom/wandoujia/p4/community/PullToRefreshHeaderView$PullToRefreshState;

    if-eq p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/community/PullToRefreshHeaderView;->e:Lcom/wandoujia/p4/community/PullToRefreshHeaderView$PullToRefreshState;

    sget-object v1, Lcom/wandoujia/p4/community/PullToRefreshHeaderView$PullToRefreshState;->RELEASE:Lcom/wandoujia/p4/community/PullToRefreshHeaderView$PullToRefreshState;

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/wandoujia/p4/community/PullToRefreshHeaderView$PullToRefreshState;->PULLING:Lcom/wandoujia/p4/community/PullToRefreshHeaderView$PullToRefreshState;

    if-ne p1, v0, :cond_3

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/p4/community/PullToRefreshHeaderView;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/wandoujia/p4/community/PullToRefreshHeaderView;->d:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 96
    :cond_2
    :goto_1
    iput-object p1, p0, Lcom/wandoujia/p4/community/PullToRefreshHeaderView;->e:Lcom/wandoujia/p4/community/PullToRefreshHeaderView$PullToRefreshState;

    .line 97
    return-void

    .line 71
    :pswitch_0
    iget-object v0, p0, Lcom/wandoujia/p4/community/PullToRefreshHeaderView;->a:Landroid/widget/TextView;

    const v1, 0x7f0e04f4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 72
    iget-object v0, p0, Lcom/wandoujia/p4/community/PullToRefreshHeaderView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73
    iget-object v0, p0, Lcom/wandoujia/p4/community/PullToRefreshHeaderView;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 74
    iget-object v0, p0, Lcom/wandoujia/p4/community/PullToRefreshHeaderView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 77
    :pswitch_1
    iget-object v0, p0, Lcom/wandoujia/p4/community/PullToRefreshHeaderView;->a:Landroid/widget/TextView;

    const v1, 0x7f0e04f5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 78
    iget-object v0, p0, Lcom/wandoujia/p4/community/PullToRefreshHeaderView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Lcom/wandoujia/p4/community/PullToRefreshHeaderView;->b:Landroid/widget/ImageView;

    const v1, 0x7f020452

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 80
    iget-object v0, p0, Lcom/wandoujia/p4/community/PullToRefreshHeaderView;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 83
    :pswitch_2
    iget-object v0, p0, Lcom/wandoujia/p4/community/PullToRefreshHeaderView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 84
    iget-object v0, p0, Lcom/wandoujia/p4/community/PullToRefreshHeaderView;->a:Landroid/widget/TextView;

    const v1, 0x7f0e04f3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 85
    iget-object v0, p0, Lcom/wandoujia/p4/community/PullToRefreshHeaderView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lcom/wandoujia/p4/community/PullToRefreshHeaderView;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 93
    :cond_3
    iget-object v0, p0, Lcom/wandoujia/p4/community/PullToRefreshHeaderView;->e:Lcom/wandoujia/p4/community/PullToRefreshHeaderView$PullToRefreshState;

    sget-object v1, Lcom/wandoujia/p4/community/PullToRefreshHeaderView$PullToRefreshState;->LOADING:Lcom/wandoujia/p4/community/PullToRefreshHeaderView$PullToRefreshState;

    if-ne v0, v1, :cond_2

    .line 94
    iget-object v0, p0, Lcom/wandoujia/p4/community/PullToRefreshHeaderView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 69
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 107
    iget-object v0, p0, Lcom/wandoujia/p4/community/PullToRefreshHeaderView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/wandoujia/p4/community/PullToRefreshHeaderView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/wandoujia/p4/community/PullToRefreshHeaderView;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 110
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/PullToRefreshHeaderView;->a(I)V

    .line 111
    return-void
.end method

.method protected onFinishInflate()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/high16 v4, 0x3f00

    .line 57
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 59
    const v0, 0x7f0c0461

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/PullToRefreshHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/wandoujia/p4/community/PullToRefreshHeaderView;->c:Landroid/widget/ProgressBar;

    .line 60
    const v0, 0x7f0c0462

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/PullToRefreshHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/wandoujia/p4/community/PullToRefreshHeaderView;->b:Landroid/widget/ImageView;

    .line 61
    const v0, 0x7f0c0460

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/PullToRefreshHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/community/PullToRefreshHeaderView;->a:Landroid/widget/TextView;

    .line 63
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v1, 0x4334

    const/high16 v2, 0x43b4

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/wandoujia/p4/community/PullToRefreshHeaderView;->d:Landroid/view/animation/RotateAnimation;

    .line 65
    iget-object v0, p0, Lcom/wandoujia/p4/community/PullToRefreshHeaderView;->d:Landroid/view/animation/RotateAnimation;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 66
    return-void
.end method
