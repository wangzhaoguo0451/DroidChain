.class public final Lggt;
.super Ljava/lang/Object;
.source "VideoEpisodeItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;)V
    .locals 0
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lggt;->a:Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    .line 146
    new-instance v0, Lgma;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lggt;->a:Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;

    iget-object v2, v2, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->b:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    iget-wide v2, v2, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoId:J

    iget-object v4, p0, Lggt;->a:Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;

    iget-object v4, v4, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->c:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    iget-wide v4, v4, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->episodeId:J

    invoke-direct/range {v0 .. v5}, Lgma;-><init>(Landroid/content/Context;JJ)V

    invoke-virtual {v0}, Lgma;->execute()V

    .line 148
    return-void
.end method
