.class public final Lgiz;
.super Ljava/lang/Object;
.source "VideoDetailTabHostFragment.java"

# interfaces
.implements Lgja;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;

.field private synthetic b:Ljava/util/List;

.field private synthetic c:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 486
    iput-object p1, p0, Lgiz;->c:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;

    iput-object p2, p0, Lgiz;->a:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;

    iput-object p3, p0, Lgiz;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;",
            ")V"
        }
    .end annotation

    .prologue
    .line 490
    iget-object v0, p0, Lgiz;->c:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;

    iget-object v1, p0, Lgiz;->a:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;

    iget-object v2, p0, Lgiz;->b:Ljava/util/List;

    invoke-static {v0, v1, v2, p1}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->a(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;Ljava/util/List;Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;)V

    .line 492
    iget-object v0, p0, Lgiz;->c:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->l(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;)Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;

    .line 493
    return-void
.end method
