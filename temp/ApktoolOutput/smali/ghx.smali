.class final Lghx;
.super Ljava/lang/Object;
.source "VideoPlayHtml5Fragment.java"

# interfaces
.implements Lgmu;


# instance fields
.field private synthetic a:Lghw;


# direct methods
.method constructor <init>(Lghw;)V
    .locals 0
    .parameter

    .prologue
    .line 290
    iput-object p1, p0, Lghx;->a:Lghw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 302
    return-void
.end method

.method public final a(Lcom/wandoujia/p4/video2/model/VideoPlayModel;)V
    .locals 2
    .parameter

    .prologue
    .line 293
    invoke-virtual {p1}, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->getPlayType()Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;->HTML5:Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;

    if-eq v0, v1, :cond_0

    .line 294
    iget-object v0, p0, Lghx;->a:Lghw;

    iget-object v0, v0, Lghw;->a:Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;

    invoke-static {v0}, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->g(Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;)V

    .line 295
    iget-object v0, p0, Lghx;->a:Lghw;

    iget-object v0, v0, Lghw;->a:Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;

    invoke-static {v0}, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->a(Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;)V

    .line 297
    :cond_0
    return-void
.end method
