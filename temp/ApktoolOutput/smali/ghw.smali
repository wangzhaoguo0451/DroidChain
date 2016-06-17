.class public final Lghw;
.super Ljava/lang/Object;
.source "VideoPlayHtml5Fragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;)V
    .locals 0
    .parameter

    .prologue
    .line 280
    iput-object p1, p0, Lghw;->a:Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 283
    iget-object v0, p0, Lghw;->a:Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;

    invoke-static {v0}, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->b(Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;)I

    move-result v0

    if-eq p3, v0, :cond_0

    iget-object v0, p0, Lghw;->a:Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;

    invoke-static {v0}, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->c(Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;)Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lghw;->a:Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;

    invoke-static {v0}, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->d(Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;)Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;->a(Z)V

    .line 285
    new-instance v0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;

    iget-object v1, p0, Lghw;->a:Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;

    invoke-virtual {v1}, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lghw;->a:Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;

    invoke-static {v2}, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->f(Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;)Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    move-result-object v2

    iget-object v3, p0, Lghw;->a:Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;

    invoke-static {v3}, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->c(Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;)Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;-><init>(Landroid/content/Context;Lcom/wandoujia/p4/video2/model/VideoMetaModel;Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;)V

    iget-object v1, p0, Lghw;->a:Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;

    invoke-static {v1}, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->e(Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->a(Ljava/util/List;)Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->a(I)Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction$Source;->SOURCE_CHANGE:Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction$Source;

    iput-object v1, v0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->b:Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction$Source;

    .line 290
    new-instance v1, Lghx;

    invoke-direct {v1, p0}, Lghx;-><init>(Lghw;)V

    iput-object v1, v0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->c:Lgmu;

    .line 304
    invoke-virtual {v0}, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->execute()V

    .line 306
    :cond_0
    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 311
    return-void
.end method
