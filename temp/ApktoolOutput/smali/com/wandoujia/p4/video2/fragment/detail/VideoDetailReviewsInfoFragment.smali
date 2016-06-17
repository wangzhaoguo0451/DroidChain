.class public Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailReviewsInfoFragment;
.super Lcom/wandoujia/ripple_framework/fragment/BaseFragment;
.source "VideoDetailReviewsInfoFragment.java"


# instance fields
.field private a:Lcom/wandoujia/p4/video2/model/VideoDetailModel;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/TextView;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected initializePageUri(Landroid/view/View;)Z
    .locals 1
    .parameter

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailReviewsInfoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailReviewsInfoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "video_meta_model"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 32
    instance-of v1, v0, Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    if-eqz v1, :cond_0

    .line 33
    check-cast v0, Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailReviewsInfoFragment;->a:Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    .line 36
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    const v0, 0x7f03004a

    invoke-static {p2, v0}, Lg;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-super {p0, p1, p2}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailReviewsInfoFragment;->d:Z

    .line 42
    const v0, 0x7f0c01a6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailReviewsInfoFragment;->b:Landroid/widget/LinearLayout;

    .line 44
    const v0, 0x7f0c01a8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailReviewsInfoFragment;->c:Landroid/widget/TextView;

    .line 45
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailReviewsInfoFragment;->a:Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailReviewsInfoFragment;->d:Z

    if-nez v0, :cond_1

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailReviewsInfoFragment;->a:Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    iget-object v0, v0, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->commentsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    :goto_1
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailReviewsInfoFragment;->a:Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    iget-object v0, v0, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->commentsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    const/16 v0, 0xa

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailReviewsInfoFragment;->a:Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    iget-object v0, v0, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->commentsList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/video/NetVideoInfo$Comment;

    iget-object v2, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailReviewsInfoFragment;->b:Landroid/widget/LinearLayout;

    invoke-static {v2}, Lcom/wandoujia/p4/video/view/VideoCommentItem;->a(Landroid/view/ViewGroup;)Lcom/wandoujia/p4/video/view/VideoCommentItem;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/wandoujia/p4/video/view/VideoCommentItem;->setData(Lcom/wandoujia/entities/video/NetVideoInfo$Comment;)V

    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailReviewsInfoFragment;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailReviewsInfoFragment;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
