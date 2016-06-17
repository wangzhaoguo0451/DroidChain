.class final Lgiu;
.super Ljava/lang/Object;
.source "VideoDetailTabHostFragment.java"

# interfaces
.implements Lgja;


# instance fields
.field private synthetic a:Lfss;

.field private synthetic b:Lgit;


# direct methods
.method constructor <init>(Lgit;Lfss;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lgiu;->b:Lgit;

    iput-object p2, p0, Lgiu;->a:Lfss;

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
    .line 191
    iget-object v0, p0, Lgiu;->b:Lgit;

    iget-object v0, v0, Lgit;->a:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;

    iget-object v1, p0, Lgiu;->b:Lgit;

    iget-object v1, v1, Lgit;->a:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;

    invoke-static {v1}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->g(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;)Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;

    move-result-object v1

    iget-object v2, p0, Lgiu;->a:Lfss;

    iget-object v2, v2, Lfss;->a:Ljava/util/List;

    invoke-static {v0, v1, v2, p1}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->a(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;Ljava/util/List;Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;)V

    .line 193
    return-void
.end method
