.class public final Lgfl;
.super Landroid/widget/BaseAdapter;
.source "VideoSectionListAdapter.java"


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;

.field public c:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;

.field public d:Lgfo;

.field public e:Lcom/wandoujia/p4/video2/model/VideoDetailModel;

.field public final f:Lgje;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;

.field private i:Landroid/content/Context;

.field private j:Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer$EpisodeActionStyle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer$EpisodeActionStyle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgfl;->a:Ljava/util/List;

    .line 41
    new-instance v0, Lgfm;

    invoke-direct {v0, p0}, Lgfm;-><init>(Lgfl;)V

    iput-object v0, p0, Lgfl;->f:Lgje;

    .line 67
    iput-object p1, p0, Lgfl;->i:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lgfl;->j:Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer$EpisodeActionStyle;

    .line 69
    return-void
.end method

.method static synthetic a(Lgfl;)Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lgfl;->c:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;

    return-object v0
.end method

.method static synthetic a(Lgfl;Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;)Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lgfl;->b:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;

    return-object p1
.end method

.method static synthetic a(Lgfl;Ljava/util/List;Ljava/util/List;Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    iget-object v2, p0, Lgfl;->j:Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer$EpisodeActionStyle;

    sget-object v3, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer$EpisodeActionStyle;->PLAY:Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer$EpisodeActionStyle;

    if-ne v2, v3, :cond_1

    iget-boolean v2, v0, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->noPlayInfos:Z

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lgfl;->j:Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer$EpisodeActionStyle;

    sget-object v3, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer$EpisodeActionStyle;->DOWNLOAD:Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer$EpisodeActionStyle;

    if-ne v2, v3, :cond_0

    iget-boolean v2, v0, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->noDownloadUrls:Z

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->noPrivateDownloadUrls:Z

    if-eqz v2, :cond_0

    iget-boolean v0, v0, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->noPlayExpDownloadUrls:Z

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    iput-object p1, p0, Lgfl;->g:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lgfl;->h:Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;

    if-nez v0, :cond_4

    iget-object v0, p0, Lgfl;->i:Landroid/content/Context;

    new-instance v1, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;

    invoke-direct {v1, v0}, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lgfl;->e:Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->getVideoMetaModel()Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    move-result-object v0

    iget-object v0, v0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoType:Lcom/wandoujia/p4/video/model/VideoType;

    sget-object v2, Lcom/wandoujia/p4/video/model/VideoType;->VARIETY:Lcom/wandoujia/p4/video/model/VideoType;

    if-ne v0, v2, :cond_3

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->setWithTitle(Z)V

    :cond_3
    iget-object v0, p0, Lgfl;->j:Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer$EpisodeActionStyle;

    invoke-virtual {v1, v0}, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->setEpisodeActionStyle(Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer$EpisodeActionStyle;)V

    iput-object v1, p0, Lgfl;->h:Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;

    :cond_4
    iget-object v4, p0, Lgfl;->h:Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;

    iget-object v0, p0, Lgfl;->e:Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->getVideoMetaModel()Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    move-result-object v5

    iput-object v5, v4, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->b:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    iput-object p4, v4, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->c:Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;

    if-eqz p2, :cond_6

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    if-eqz v0, :cond_5

    iget-object v2, v4, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->e:Ljava/util/Map;

    iget-object v3, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->b:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    iget-object v0, v4, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    if-eqz p3, :cond_7

    invoke-virtual {p3}, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->getDownloadedEpisodeModelList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p3}, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->getDownloadedEpisodeModelList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;

    iget-wide v2, v0, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->episodeId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v6, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    move v2, v0

    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_b

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    invoke-virtual {v4, v2}, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;

    if-nez v1, :cond_e

    iget-boolean v1, v4, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->a:Z

    if-eqz v1, :cond_a

    invoke-static {v4}, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemViewWithTitle;->b(Landroid/view/ViewGroup;)Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemViewWithTitle;

    move-result-object v1

    :goto_4
    iget-object v3, v4, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->d:Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer$EpisodeActionStyle;

    invoke-virtual {v1, v3}, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->setPreferActionStyle(Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer$EpisodeActionStyle;)V

    invoke-virtual {v4, v1}, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->addView(Landroid/view/View;)V

    move-object v3, v1

    :goto_5
    invoke-virtual {v3}, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->a()V

    invoke-virtual {v3, v5}, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->a(Lcom/wandoujia/p4/video2/model/VideoMetaModel;)Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->a(Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;)Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;

    move-result-object v1

    iput-object p4, v1, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->d:Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;

    iget-wide v8, v0, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->episodeId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->isDownloaded()Z

    move-result v1

    invoke-virtual {v3, v1}, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->setDownloaded(Z)V

    :cond_8
    iget-object v1, v4, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->e:Ljava/util/Map;

    iget-object v7, v0, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->downloadIdentity:Ljava/lang/String;

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    if-eqz v1, :cond_9

    invoke-virtual {v3, v1}, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->a(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;

    :cond_9
    invoke-virtual {v3}, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->b()V

    iget-object v1, v4, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->f:Ljava/util/Map;

    iget-wide v8, v0, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->episodeId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_a
    invoke-static {v4}, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->a(Landroid/view/ViewGroup;)Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;

    move-result-object v1

    goto :goto_4

    :cond_b
    invoke-virtual {v4}, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->getChildCount()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_c

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v4}, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->getChildCount()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v4, v0, v1}, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->removeViews(II)V

    :cond_c
    iget-object v0, p0, Lgfl;->h:Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;

    invoke-virtual {v0, p4}, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->a(Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;)V

    :cond_d
    return-void

    :cond_e
    move-object v3, v1

    goto :goto_5
.end method

.method static synthetic b(Lgfl;)Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lgfl;->b:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;

    return-object v0
.end method

.method static synthetic b(Lgfl;Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;)Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lgfl;->c:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;

    return-object p1
.end method

.method static synthetic c(Lgfl;)Lgfo;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lgfl;->d:Lgfo;

    return-object v0
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lgfl;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lgfl;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 144
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 150
    if-eqz p2, :cond_0

    .line 151
    check-cast p2, Lcom/wandoujia/p4/video2/view/VideoEpisodeSectionItem;

    .line 155
    :goto_0
    iget-object v0, p0, Lgfl;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;

    .line 157
    iget-object v1, p0, Lgfl;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_1

    .line 158
    invoke-virtual {p2, v4}, Lcom/wandoujia/p4/video2/view/VideoEpisodeSectionItem;->setToBeLastItem(Z)V

    .line 162
    :goto_1
    invoke-virtual {p2, v0}, Lcom/wandoujia/p4/video2/view/VideoEpisodeSectionItem;->setSectionKey(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;)V

    .line 163
    invoke-virtual {p2}, Lcom/wandoujia/p4/video2/view/VideoEpisodeSectionItem;->getHeaderLayout()Landroid/widget/RelativeLayout;

    move-result-object v1

    new-instance v2, Lgfn;

    invoke-direct {v2, p0, v0, p2, p1}, Lgfn;-><init>(Lgfl;Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;Lcom/wandoujia/p4/video2/view/VideoEpisodeSectionItem;I)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v1, p0, Lgfl;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 187
    invoke-virtual {p2}, Lcom/wandoujia/p4/video2/view/VideoEpisodeSectionItem;->getHeaderLayout()Landroid/widget/RelativeLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 192
    :goto_2
    iget-object v1, p0, Lgfl;->c:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lgfl;->c:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;

    iget-object v1, v1, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;->section:Ljava/lang/String;

    iget-object v2, v0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;->section:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 195
    invoke-virtual {p2}, Lcom/wandoujia/p4/video2/view/VideoEpisodeSectionItem;->a()V

    .line 196
    invoke-virtual {p2}, Lcom/wandoujia/p4/video2/view/VideoEpisodeSectionItem;->c()V

    .line 214
    :goto_3
    return-object p2

    .line 153
    :cond_0
    invoke-static {p3}, Lcom/wandoujia/p4/video2/view/VideoEpisodeSectionItem;->a(Landroid/view/ViewGroup;)Lcom/wandoujia/p4/video2/view/VideoEpisodeSectionItem;

    move-result-object p2

    goto :goto_0

    .line 160
    :cond_1
    invoke-virtual {p2, v3}, Lcom/wandoujia/p4/video2/view/VideoEpisodeSectionItem;->setToBeLastItem(Z)V

    goto :goto_1

    .line 190
    :cond_2
    invoke-virtual {p2}, Lcom/wandoujia/p4/video2/view/VideoEpisodeSectionItem;->getHeaderLayout()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_2

    .line 197
    :cond_3
    iget-object v1, p0, Lgfl;->b:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lgfl;->b:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;

    iget-object v1, v1, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;->section:Ljava/lang/String;

    iget-object v0, v0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;->section:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 200
    invoke-virtual {p2}, Lcom/wandoujia/p4/video2/view/VideoEpisodeSectionItem;->b()V

    .line 201
    iget-object v0, p0, Lgfl;->g:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lgfl;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 202
    iget-object v0, p0, Lgfl;->h:Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;

    invoke-virtual {v0}, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 203
    iget-object v0, p0, Lgfl;->h:Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;

    invoke-virtual {v0}, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lgfl;->h:Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 205
    :cond_4
    iget-object v0, p0, Lgfl;->h:Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;

    invoke-virtual {p2, v0}, Lcom/wandoujia/p4/video2/view/VideoEpisodeSectionItem;->setEpisodesContainer(Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;)V

    goto :goto_3

    .line 207
    :cond_5
    iget-object v0, p2, Lcom/wandoujia/p4/video2/view/VideoEpisodeSectionItem;->a:Lcom/wandoujia/p4/views/ExpandablePanelIcon;

    if-eqz v0, :cond_6

    iget-object v0, p2, Lcom/wandoujia/p4/video2/view/VideoEpisodeSectionItem;->a:Lcom/wandoujia/p4/views/ExpandablePanelIcon;

    invoke-virtual {v0}, Lcom/wandoujia/p4/views/ExpandablePanelIcon;->a()V

    :cond_6
    iget-object v0, p2, Lcom/wandoujia/p4/video2/view/VideoEpisodeSectionItem;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v0, p2, Lcom/wandoujia/p4/video2/view/VideoEpisodeSectionItem;->b:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 211
    :cond_7
    invoke-virtual {p2}, Lcom/wandoujia/p4/video2/view/VideoEpisodeSectionItem;->b()V

    .line 212
    invoke-virtual {p2}, Lcom/wandoujia/p4/video2/view/VideoEpisodeSectionItem;->c()V

    goto :goto_3
.end method
