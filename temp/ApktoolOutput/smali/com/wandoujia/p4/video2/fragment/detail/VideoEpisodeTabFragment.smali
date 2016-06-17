.class public Lcom/wandoujia/p4/video2/fragment/detail/VideoEpisodeTabFragment;
.super Lcom/wandoujia/ripple_framework/fragment/BaseFragment;
.source "VideoEpisodeTabFragment.java"


# instance fields
.field private a:Lcom/wandoujia/p4/video2/model/VideoDetailModel;

.field private b:Lcom/wandoujia/p4/views/NetContentListView;

.field private c:Lgfl;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/wandoujia/p4/video2/fragment/detail/VideoEpisodeTabFragment$Type;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoEpisodeTabFragment;->d:Ljava/util/List;

    .line 31
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/p4/video2/fragment/detail/VideoEpisodeTabFragment;)Lcom/wandoujia/p4/views/NetContentListView;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoEpisodeTabFragment;->b:Lcom/wandoujia/p4/views/NetContentListView;

    return-object v0
.end method


# virtual methods
.method protected initializePageUri(Landroid/view/View;)Z
    .locals 1
    .parameter

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoEpisodeTabFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 37
    if-eqz v1, :cond_0

    .line 38
    const-string v0, "video_meta_model"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoEpisodeTabFragment;->a:Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    .line 39
    const-string v0, "episode_section_key_list"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoEpisodeTabFragment;->d:Ljava/util/List;

    .line 42
    const-string v0, "episode_tab_type"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/fragment/detail/VideoEpisodeTabFragment$Type;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoEpisodeTabFragment;->e:Lcom/wandoujia/p4/video2/fragment/detail/VideoEpisodeTabFragment$Type;

    .line 44
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 49
    const v0, 0x7f03023b

    invoke-virtual {p1, v0, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 51
    const v0, 0x7f0c00f4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/views/NetContentListView;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoEpisodeTabFragment;->b:Lcom/wandoujia/p4/views/NetContentListView;

    .line 52
    new-instance v0, Lgfl;

    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoEpisodeTabFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoEpisodeTabFragment;->e:Lcom/wandoujia/p4/video2/fragment/detail/VideoEpisodeTabFragment$Type;

    invoke-virtual {v3}, Lcom/wandoujia/p4/video2/fragment/detail/VideoEpisodeTabFragment$Type;->getEpisodeActionStyle()Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer$EpisodeActionStyle;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lgfl;-><init>(Landroid/content/Context;Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer$EpisodeActionStyle;)V

    iput-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoEpisodeTabFragment;->c:Lgfl;

    .line 54
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoEpisodeTabFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;

    iget-object v2, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoEpisodeTabFragment;->c:Lgfl;

    iget-object v2, v2, Lgfl;->f:Lgje;

    invoke-virtual {v0, v2}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->a(Lgje;)V

    .line 56
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoEpisodeTabFragment;->b:Lcom/wandoujia/p4/views/NetContentListView;

    invoke-static {v0}, Lcom/wandoujia/p4/video/view/VideoEpisodeHeaderItem;->a(Landroid/view/ViewGroup;)Lcom/wandoujia/p4/video/view/VideoEpisodeHeaderItem;

    move-result-object v0

    .line 57
    iget-object v2, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoEpisodeTabFragment;->a:Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    invoke-virtual {v2}, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->getVideoMetaModel()Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/wandoujia/p4/video/view/VideoEpisodeHeaderItem;->setData(Lcom/wandoujia/p4/video2/model/VideoMetaModel;)V

    .line 58
    iget-object v2, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoEpisodeTabFragment;->b:Lcom/wandoujia/p4/views/NetContentListView;

    invoke-virtual {v2, v0}, Lcom/wandoujia/p4/views/NetContentListView;->addHeaderView(Landroid/view/View;)V

    .line 59
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoEpisodeTabFragment;->b:Lcom/wandoujia/p4/views/NetContentListView;

    iget-object v2, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoEpisodeTabFragment;->c:Lgfl;

    invoke-virtual {v0, v2}, Lcom/wandoujia/p4/views/NetContentListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 60
    iget-object v2, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoEpisodeTabFragment;->c:Lgfl;

    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoEpisodeTabFragment;->a:Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    iget-object v3, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoEpisodeTabFragment;->d:Ljava/util/List;

    new-instance v4, Lgfo;

    invoke-direct {v4, p0}, Lgfo;-><init>(Lcom/wandoujia/p4/video2/fragment/detail/VideoEpisodeTabFragment;)V

    iput-object v0, v2, Lgfl;->e:Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;

    iput-object v0, v2, Lgfl;->c:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;

    const/4 v0, 0x0

    iput-object v0, v2, Lgfl;->b:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;

    iput-object v4, v2, Lgfl;->d:Lgfo;

    iget-object v4, v2, Lgfl;->d:Lgfo;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;

    invoke-virtual {v4, v0, v5}, Lgfo;->a(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;I)V

    iget-object v0, v2, Lgfl;->a:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v2}, Lgfl;->notifyDataSetChanged()V

    .line 74
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoEpisodeTabFragment;->b:Lcom/wandoujia/p4/views/NetContentListView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "video_detail_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoEpisodeTabFragment;->a:Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    invoke-virtual {v3}, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->getVideoMetaModel()Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    move-result-object v3

    iget-object v3, v3, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoType:Lcom/wandoujia/p4/video/model/VideoType;

    invoke-virtual {v3}, Lcom/wandoujia/p4/video/model/VideoType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/wandoujia/p4/views/NetContentListView;->setSource(Ljava/lang/String;)V

    .line 77
    return-object v1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-super {p0, p1, p2}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 83
    return-void
.end method
