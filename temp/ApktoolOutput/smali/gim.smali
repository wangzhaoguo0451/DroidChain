.class public final Lgim;
.super Leuf;
.source "VideoDetailRecommendListFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Leuf",
        "<",
        "Lcom/wandoujia/p4/video2/card/model/VideoCardViewModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Leuf;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a()Lcom/wandoujia/mvc/BaseController;
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lgfx;

    invoke-direct {v0}, Lgfx;-><init>()V

    return-object v0
.end method

.method protected final bridge synthetic a(Landroid/view/ViewGroup;)Lcom/wandoujia/mvc/BaseView;
    .locals 1
    .parameter

    .prologue
    .line 80
    invoke-static {p1}, Lcom/wandoujia/p4/card/views/ContentCardView;->a(Landroid/view/ViewGroup;)Lcom/wandoujia/p4/card/views/ContentCardView;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lgim;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lgim;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/card/model/VideoCardViewModel;

    iget-object v0, v0, Lcom/wandoujia/p4/video2/card/model/VideoCardViewModel;->a:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p0, p1}, Lgim;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/card/model/VideoCardViewModel;

    iget-object v0, v0, Lcom/wandoujia/p4/video2/card/model/VideoCardViewModel;->a:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    iget-wide v0, v0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoId:J

    .line 102
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method
