.class public Ldcb;
.super Lhhq;
.source "RippleApiDataList.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 17
    new-instance v0, Ldcj;

    invoke-direct {v0}, Ldcj;-><init>()V

    invoke-direct {p0, p1, v0}, Lhhq;-><init>(Ljava/lang/String;Leqx;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Leqx;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Leqx",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    new-instance v0, Ldcj;

    invoke-direct {v0}, Ldcj;-><init>()V

    invoke-static {p2, v0}, Lhjv;->a(Leqx;Leqx;)Lhjv;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lhhq;-><init>(Ljava/lang/String;Leqx;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
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
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lhhq;-><init>(Ljava/lang/String;Leqx;Ljava/util/Map;)V

    .line 26
    return-void
.end method
