.class public final Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder;
.super Ljava/lang/Object;
.source "PlayerLogBuilder.java"


# instance fields
.field a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder;->a:Ljava/util/Map;

    .line 30
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder;->a:Ljava/util/Map;

    const-string v1, "scene"

    const-string v2, "player"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    return-void
.end method


# virtual methods
.method public final a(Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;)Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder;
    .locals 3
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder;->a:Ljava/util/Map;

    const-string v1, "action"

    invoke-virtual {p1}, Lcom/wandoujia/phoenix2/videoplayer/PlayerLogBuilder$Action;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    return-object p0
.end method
