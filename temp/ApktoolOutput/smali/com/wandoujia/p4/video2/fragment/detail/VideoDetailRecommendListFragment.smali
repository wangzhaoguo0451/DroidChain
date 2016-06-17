.class public Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailRecommendListFragment;
.super Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;
.source "VideoDetailRecommendListFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment",
        "<",
        "Lcom/wandoujia/p4/video2/card/model/VideoCardViewModel;",
        ">;"
    }
.end annotation


# instance fields
.field private e:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Lfsi;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lfsi",
            "<",
            "Lcom/wandoujia/p4/video2/card/model/VideoCardViewModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    new-instance v0, Lfsg;

    new-instance v1, Lghp;

    iget-wide v2, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailRecommendListFragment;->e:J

    invoke-direct {v1, v2, v3}, Lghp;-><init>(J)V

    invoke-direct {v0, v1, p0}, Lfsg;-><init>(Lfsi;Landroid/support/v4/app/Fragment;)V

    return-object v0
.end method

.method protected final a(IILfss;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lfss",
            "<",
            "Lcom/wandoujia/p4/video2/card/model/VideoCardViewModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailRecommendListFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailRecommendListFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/wandoujia/p4/tips/TipsType;

    const/4 v2, 0x0

    sget-object v3, Lcom/wandoujia/p4/tips/TipsType;->FETCH_FAILED_FLOATING:Lcom/wandoujia/p4/tips/TipsType;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lg;->a(Landroid/view/View;[Lcom/wandoujia/p4/tips/TipsType;)V

    .line 122
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->a(IILfss;)V

    .line 123
    return-void
.end method

.method protected final b()Leun;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Leun",
            "<",
            "Lcom/wandoujia/p4/video2/card/model/VideoCardViewModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    new-instance v0, Lgim;

    invoke-direct {v0}, Lgim;-><init>()V

    return-object v0
.end method

.method protected final c()V
    .locals 2

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailRecommendListFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailRecommendListFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/p4/tips/TipsType;->FETCH_FAILED_FLOATING:Lcom/wandoujia/p4/tips/TipsType;

    invoke-static {v0, v1}, Lg;->a(Landroid/view/View;Lcom/wandoujia/p4/tips/TipsType;)Landroid/view/View;

    .line 130
    :cond_0
    return-void
.end method

.method protected getLayoutResId()I
    .locals 1

    .prologue
    .line 55
    const v0, 0x7f030019

    return v0
.end method

.method protected final l()I
    .locals 1

    .prologue
    .line 109
    const/16 v0, 0xa

    return v0
.end method

.method public final m()I
    .locals 1

    .prologue
    .line 114
    const/16 v0, 0xa

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->onCreate(Landroid/os/Bundle;)V

    .line 44
    if-eqz p1, :cond_0

    .line 45
    const-string v0, "video_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailRecommendListFragment;->e:J

    .line 47
    :cond_0
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailRecommendListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 48
    if-eqz v0, :cond_1

    .line 49
    const-string v1, "video_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailRecommendListFragment;->e:J

    .line 51
    :cond_1
    return-void
.end method

.method protected onInflated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 75
    invoke-super {p0, p1, p2}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->onInflated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 76
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 61
    iget-wide v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailRecommendListFragment;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 62
    const-string v0, "video_id"

    iget-wide v2, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailRecommendListFragment;->e:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 64
    :cond_0
    return-void
.end method
