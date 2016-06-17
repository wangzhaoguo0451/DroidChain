.class public final Lgit;
.super Ljava/lang/Object;
.source "VideoDetailTabHostFragment.java"

# interfaces
.implements Lfsr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lfsr",
        "<",
        "Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lgit;->a:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IILfss;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lfss",
            "<",
            "Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Lgit;->a:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;

    new-instance v1, Lgiu;

    invoke-direct {v1, p0, p3}, Lgiu;-><init>(Lgit;Lfss;)V

    invoke-static {v0, v1}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->a(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;Lgja;)V

    .line 195
    return-void
.end method

.method public final a(ILjava/util/concurrent/ExecutionException;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 198
    return-void
.end method
