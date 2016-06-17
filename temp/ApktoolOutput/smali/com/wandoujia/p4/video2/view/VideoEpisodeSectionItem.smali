.class public Lcom/wandoujia/p4/video2/view/VideoEpisodeSectionItem;
.super Landroid/widget/LinearLayout;
.source "VideoEpisodeSectionItem.java"


# instance fields
.field public a:Lcom/wandoujia/p4/views/ExpandablePanelIcon;

.field public b:Landroid/view/View;

.field public c:Landroid/widget/FrameLayout;

.field private d:Landroid/widget/RelativeLayout;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/ProgressBar;

.field private g:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public static a(Landroid/view/ViewGroup;)Lcom/wandoujia/p4/video2/view/VideoEpisodeSectionItem;
    .locals 1
    .parameter

    .prologue
    .line 41
    const v0, 0x7f03023e

    invoke-static {p0, v0}, Lg;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/view/VideoEpisodeSectionItem;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoEpisodeSectionItem;->f:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoEpisodeSectionItem;->f:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 75
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoEpisodeSectionItem;->f:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoEpisodeSectionItem;->f:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 81
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoEpisodeSectionItem;->a:Lcom/wandoujia/p4/views/ExpandablePanelIcon;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoEpisodeSectionItem;->a:Lcom/wandoujia/p4/views/ExpandablePanelIcon;

    invoke-virtual {v0}, Lcom/wandoujia/p4/views/ExpandablePanelIcon;->b()V

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoEpisodeSectionItem;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 107
    iget-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoEpisodeSectionItem;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 108
    return-void
.end method

.method public getHeaderLayout()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoEpisodeSectionItem;->d:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 51
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 52
    const v0, 0x7f0c021e

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/view/VideoEpisodeSectionItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoEpisodeSectionItem;->d:Landroid/widget/RelativeLayout;

    .line 53
    const v0, 0x7f0c049f

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/view/VideoEpisodeSectionItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoEpisodeSectionItem;->e:Landroid/widget/TextView;

    .line 54
    const v0, 0x7f0c04a0

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/view/VideoEpisodeSectionItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/views/ExpandablePanelIcon;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoEpisodeSectionItem;->a:Lcom/wandoujia/p4/views/ExpandablePanelIcon;

    .line 55
    const v0, 0x7f0c04a1

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/view/VideoEpisodeSectionItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoEpisodeSectionItem;->f:Landroid/widget/ProgressBar;

    .line 56
    const v0, 0x7f0c04a3

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/view/VideoEpisodeSectionItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoEpisodeSectionItem;->b:Landroid/view/View;

    .line 57
    const v0, 0x7f0c04a4

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/view/VideoEpisodeSectionItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoEpisodeSectionItem;->g:Landroid/view/View;

    .line 58
    const v0, 0x7f0c04a2

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/view/VideoEpisodeSectionItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoEpisodeSectionItem;->c:Landroid/widget/FrameLayout;

    .line 59
    return-void
.end method

.method public setEpisodesContainer(Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;)V
    .locals 3
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoEpisodeSectionItem;->a:Lcom/wandoujia/p4/views/ExpandablePanelIcon;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoEpisodeSectionItem;->a:Lcom/wandoujia/p4/views/ExpandablePanelIcon;

    invoke-virtual {v0}, Lcom/wandoujia/p4/views/ExpandablePanelIcon;->a()V

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoEpisodeSectionItem;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 96
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 99
    iget-object v1, p0, Lcom/wandoujia/p4/video2/view/VideoEpisodeSectionItem;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    return-void
.end method

.method public setSectionKey(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;)V
    .locals 2
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoEpisodeSectionItem;->e:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;->section:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    return-void
.end method

.method public setToBeLastItem(Z)V
    .locals 2
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoEpisodeSectionItem;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 63
    if-eqz p1, :cond_1

    .line 64
    iget-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoEpisodeSectionItem;->g:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoEpisodeSectionItem;->g:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
