.class public Lhey;
.super Leqv;
.source "RippleProtoRequest.java"


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
    .line 256
    const/4 v2, 0x0

    const-class v3, Lcom/wandoujia/api/proto/HttpResponse;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lhey;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lagu;Lagt;B)V

    .line 258
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lagu;Lagt;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lagu",
            "<TT;>;",
            "Lagt;",
            ")V"
        }
    .end annotation

    .prologue
    .line 17
    const/4 v1, 0x0

    sget-object v0, Lham;->f:Lham;

    invoke-virtual {v0}, Lham;->b()Leqr;

    move-result-object v4

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Leqv;-><init>(ILjava/lang/String;Ljava/util/Map;Leqr;Ljava/lang/Class;Lagu;Lagt;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lagu;Lagt;B)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lagu",
            "<TT;>;",
            "Lagt;",
            "B)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct/range {p0 .. p5}, Lhey;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lagu;Lagt;)V

    .line 25
    return-void
.end method
