.class public final Lggv;
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
    .line 160
    iput-object p1, p0, Lggv;->a:Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 163
    new-instance v0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lggv;->a:Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;

    iget-object v2, v2, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->b:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    iget-object v3, p0, Lggv;->a:Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;

    iget-object v3, v3, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView;->c:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;-><init>(Landroid/content/Context;Lcom/wandoujia/p4/video2/model/VideoMetaModel;Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;)V

    sget-object v1, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction$Source;->DETAIL:Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction$Source;

    iput-object v1, v0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->b:Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction$Source;

    invoke-virtual {v0}, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->execute()V

    .line 165
    return-void
.end method
