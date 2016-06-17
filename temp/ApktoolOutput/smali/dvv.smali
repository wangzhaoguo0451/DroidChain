.class public final Ldvv;
.super Lhey;
.source "TopicModelRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhey",
        "<",
        "Lcom/wandoujia/api/proto/HttpResponse;",
        ">;"
    }
.end annotation


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
    .line 14
    const/4 v2, 0x0

    const-class v3, Lcom/wandoujia/api/proto/HttpResponse;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lhey;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lagu;Lagt;B)V

    .line 15
    return-void
.end method
