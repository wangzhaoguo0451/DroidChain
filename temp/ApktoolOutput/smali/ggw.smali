.class public final Lggw;
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
    .line 169
    iput-object p1, p0, Lggw;->a:Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 172
    new-instance v0, Lfqo;

    iget-object v1, p0, Lggw;->a:Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;

    iget-object v1, v1, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->e:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    invoke-direct {v0, v1}, Lfqo;-><init>(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V

    invoke-virtual {v0}, Lfqo;->execute()V

    .line 173
    return-void
.end method
