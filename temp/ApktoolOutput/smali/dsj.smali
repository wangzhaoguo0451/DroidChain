.class public final Ldsj;
.super Lhey;
.source "SearchSuggestionRequest.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lagu;Lagt;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lagu",
            "<",
            "Lcom/wandoujia/api/proto/HttpResponse;",
            ">;",
            "Lagt;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 18
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v3, Lcom/wandoujia/api/proto/HttpResponse;

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lhey;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lagu;Lagt;B)V

    .line 19
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "timestamp"

    aput-object v1, v0, v6

    iput-object v0, p0, Leqs;->p:[Ljava/lang/String;

    .line 20
    return-void
.end method
