.class public final Leqy;
.super Ljava/lang/Object;
.source "DataLoadListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Leqy",
        "<",
        "Lcom/wandoujia/ripple_framework/model/Model;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .prologue
    .line 32
    check-cast p0, Lcom/wandoujia/ripple_framework/model/Model;

    check-cast p1, Lcom/wandoujia/ripple_framework/model/Model;

    if-nez p0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/model/Model;->b()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/model/Model;->b()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
