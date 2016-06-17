.class public abstract Lcom/wandoujia/phoenix2/videoplayer/VideoPlayerFragment;
.super Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;
.source "VideoPlayerFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3
    .parameter

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->a(I)V

    .line 21
    new-instance v0, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder;

    invoke-direct {v0}, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder;-><init>()V

    sget-object v1, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;->PAUSE:Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;

    invoke-virtual {v0, v1}, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder;->a(Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;)Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder;

    move-result-object v0

    iget-object v0, v0, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder;->a:Ljava/util/Map;

    const-string v1, "currentProgress"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    return-void
.end method

.method public a(JI)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-super {p0, p1, p2, p3}, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->a(JI)V

    .line 41
    new-instance v0, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder;

    invoke-direct {v0}, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder;-><init>()V

    sget-object v1, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;->READY:Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;

    invoke-virtual {v0, v1}, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder;->a(Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;)Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder;

    move-result-object v0

    iget-object v1, v0, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder;->a:Ljava/util/Map;

    const-string v2, "initTimeDuration"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    int-to-long v2, p3

    iget-object v0, v0, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder;->a:Ljava/util/Map;

    const-string v1, "currentSnippetDuration"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->a(Ljava/lang/String;)V

    .line 34
    new-instance v0, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder;

    invoke-direct {v0}, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder;-><init>()V

    sget-object v1, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;->ERROR:Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;

    invoke-virtual {v0, v1}, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder;->a(Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;)Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder;

    move-result-object v0

    iget-object v0, v0, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder;->a:Ljava/util/Map;

    const-string v1, "message"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    return-void
.end method

.method public g()V
    .locals 2

    .prologue
    .line 14
    invoke-super {p0}, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->g()V

    .line 15
    new-instance v0, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder;

    invoke-direct {v0}, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder;-><init>()V

    sget-object v1, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;->ENTER:Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;

    invoke-virtual {v0, v1}, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder;->a(Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;)Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder;

    .line 16
    return-void
.end method

.method public h()V
    .locals 2

    .prologue
    .line 27
    invoke-super {p0}, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->h()V

    .line 28
    new-instance v0, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder;

    invoke-direct {v0}, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder;-><init>()V

    sget-object v1, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;->PLAY:Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;

    invoke-virtual {v0, v1}, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder;->a(Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;)Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder;

    .line 29
    return-void
.end method

.method protected initializePageUri(Landroid/view/View;)Z
    .locals 1
    .parameter

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 47
    invoke-super {p0}, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->onStop()V

    .line 48
    new-instance v0, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder;

    invoke-direct {v0}, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder;-><init>()V

    sget-object v1, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;->STOP:Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;

    invoke-virtual {v0, v1}, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder;->a(Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;)Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder;

    .line 49
    return-void
.end method

.method public final x()V
    .locals 2

    .prologue
    .line 53
    invoke-super {p0}, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->x()V

    .line 54
    new-instance v0, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder;

    invoke-direct {v0}, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder;-><init>()V

    sget-object v1, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;->EXIT:Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;

    invoke-virtual {v0, v1}, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder;->a(Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;)Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder;

    .line 55
    return-void
.end method
