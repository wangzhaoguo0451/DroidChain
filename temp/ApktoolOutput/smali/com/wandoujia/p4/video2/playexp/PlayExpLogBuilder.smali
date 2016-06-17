.class public final Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder;
.super Ljava/lang/Object;
.source "PlayExpLogBuilder.java"


# instance fields
.field public a:Ljava/util/Map;
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
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder;->a:Ljava/util/Map;

    .line 51
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder;->a:Ljava/util/Map;

    const-string v1, "scene"

    const-string v2, "play_exp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    return-void
.end method


# virtual methods
.method public final a(Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;)Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder;
    .locals 3
    .parameter

    .prologue
    .line 62
    if-eqz p1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder;->a:Ljava/util/Map;

    const-string v1, "action"

    invoke-virtual {p1}, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :cond_0
    return-object p0
.end method

.method public final a(Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$State;)Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder;
    .locals 3
    .parameter

    .prologue
    .line 55
    if-eqz p1, :cond_0

    .line 56
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder;->a:Ljava/util/Map;

    const-string v1, "state"

    invoke-virtual {p1}, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$State;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    :cond_0
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder;
    .locals 2
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder;->a:Ljava/util/Map;

    const-string v1, "error_message"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder;
    .locals 2
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder;->a:Ljava/util/Map;

    const-string v1, "log_message"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    return-object p0
.end method
