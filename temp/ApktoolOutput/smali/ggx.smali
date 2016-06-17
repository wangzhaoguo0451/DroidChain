.class public final Lggx;
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
    .line 177
    iput-object p1, p0, Lggx;->a:Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 180
    new-instance v0, Lfqp;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lggx;->a:Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;

    iget-object v2, v2, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->e:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    invoke-direct {v0, v1, v2}, Lfqp;-><init>(Landroid/content/Context;Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V

    invoke-virtual {v0}, Lfqp;->execute()V

    .line 181
    return-void
.end method
