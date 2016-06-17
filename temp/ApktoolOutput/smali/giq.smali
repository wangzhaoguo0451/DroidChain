.class public final Lgiq;
.super Ljava/lang/Object;
.source "VideoDetailTabHostFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lgje;

.field private synthetic b:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;

.field private synthetic c:Ljava/util/List;

.field private synthetic d:Ljava/util/List;

.field private synthetic e:Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;

.field private synthetic f:Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;

.field private synthetic g:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;Lgje;Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;Ljava/util/List;Ljava/util/List;Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 947
    iput-object p1, p0, Lgiq;->g:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;

    iput-object p2, p0, Lgiq;->a:Lgje;

    iput-object p3, p0, Lgiq;->b:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;

    iput-object p4, p0, Lgiq;->c:Ljava/util/List;

    iput-object v0, p0, Lgiq;->d:Ljava/util/List;

    iput-object v0, p0, Lgiq;->e:Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;

    iput-object p7, p0, Lgiq;->f:Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 950
    iget-object v0, p0, Lgiq;->a:Lgje;

    iget-object v1, p0, Lgiq;->b:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;

    iget-object v2, p0, Lgiq;->g:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;

    invoke-static {v2}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->c(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;)Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    iget-object v2, p0, Lgiq;->c:Ljava/util/List;

    iget-object v3, p0, Lgiq;->d:Ljava/util/List;

    iget-object v4, p0, Lgiq;->e:Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;

    iget-object v5, p0, Lgiq;->f:Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;

    invoke-interface/range {v0 .. v5}, Lgje;->a(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;Ljava/util/List;Ljava/util/List;Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;)V

    .line 953
    return-void
.end method
