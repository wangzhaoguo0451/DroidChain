.class public final Lgfo;
.super Ljava/lang/Object;
.source "VideoSectionListAdapter.java"


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/video2/fragment/detail/VideoEpisodeTabFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/video2/fragment/detail/VideoEpisodeTabFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lgfo;->a:Lcom/wandoujia/p4/video2/fragment/detail/VideoEpisodeTabFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 65
    if-eqz p1, :cond_0

    iget-object v0, p0, Lgfo;->a:Lcom/wandoujia/p4/video2/fragment/detail/VideoEpisodeTabFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoEpisodeTabFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgfo;->a:Lcom/wandoujia/p4/video2/fragment/detail/VideoEpisodeTabFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoEpisodeTabFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lgfo;->a:Lcom/wandoujia/p4/video2/fragment/detail/VideoEpisodeTabFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoEpisodeTabFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;

    if-eqz p1, :cond_0

    iget-object v1, v0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->e:Lcom/wandoujia/p4/video/model/VideoType;

    if-nez v1, :cond_2

    .line 69
    :cond_0
    :goto_0
    iget-object v0, p0, Lgfo;->a:Lcom/wandoujia/p4/video2/fragment/detail/VideoEpisodeTabFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoEpisodeTabFragment;->a(Lcom/wandoujia/p4/video2/fragment/detail/VideoEpisodeTabFragment;)Lcom/wandoujia/p4/views/NetContentListView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lgfo;->a:Lcom/wandoujia/p4/video2/fragment/detail/VideoEpisodeTabFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoEpisodeTabFragment;->a(Lcom/wandoujia/p4/video2/fragment/detail/VideoEpisodeTabFragment;)Lcom/wandoujia/p4/views/NetContentListView;

    move-result-object v0

    invoke-static {}, Lcom/wandoujia/base/utils/SystemUtil;->isMX()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0, p2}, Landroid/widget/AbsListView;->setSelection(I)V

    .line 72
    :cond_1
    :goto_1
    return-void

    .line 67
    :cond_2
    iput-object p1, v0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->i:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;

    iget-object v1, v0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->j:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Lgiz;

    invoke-direct {v2, v0, p1, v1}, Lgiz;-><init>(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->a(Lgja;)V

    goto :goto_0

    :cond_3
    sget-object v1, Lgir;->a:[I

    iget-object v2, v0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->e:Lcom/wandoujia/p4/video/model/VideoType;

    invoke-virtual {v2}, Lcom/wandoujia/p4/video/model/VideoType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->g:Lghq;

    if-nez v1, :cond_4

    new-instance v1, Lghq;

    iget-wide v2, v0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->d:J

    invoke-direct {v1, v2, v3}, Lghq;-><init>(J)V

    iput-object v1, v0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->g:Lghq;

    :cond_4
    iget-object v1, v0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->g:Lghq;

    iget v2, p1, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;->start:I

    iget v3, p1, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;->max:I

    iget-object v0, v0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->l:Lfsr;

    invoke-virtual {v1, v2, v3, v0}, Lghq;->a(IILfsr;)V

    goto :goto_0

    :pswitch_0
    iget-object v1, v0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->h:Lghr;

    if-nez v1, :cond_5

    new-instance v1, Lghr;

    iget-wide v2, v0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->d:J

    invoke-direct {v1, v2, v3}, Lghr;-><init>(J)V

    iput-object v1, v0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->h:Lghr;

    :cond_5
    iget-object v1, v0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->h:Lghr;

    iget-object v2, p1, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;->section:Ljava/lang/String;

    iget-object v0, v0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->l:Lfsr;

    new-instance v3, Lghs;

    invoke-direct {v3, v1, v2, v0}, Lghs;-><init>(Lghr;Ljava/lang/String;Lfsr;)V

    invoke-static {v3}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 70
    :cond_6
    invoke-static {v0, p2}, Lg;->a(Landroid/widget/AbsListView;I)V

    goto :goto_1

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
