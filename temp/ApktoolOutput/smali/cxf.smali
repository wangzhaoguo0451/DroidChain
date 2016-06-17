.class public final Lcxf;
.super Ljava/util/AbstractSet;
.source "LinkedTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/wandoujia/gson/internal/LinkedTreeMap;


# direct methods
.method public constructor <init>(Lcom/wandoujia/gson/internal/LinkedTreeMap;)V
    .locals 0
    .parameter

    .prologue
    .line 592
    iput-object p1, p0, Lcxf;->a:Lcom/wandoujia/gson/internal/LinkedTreeMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lcxf;->a:Lcom/wandoujia/gson/internal/LinkedTreeMap;

    invoke-virtual {v0}, Lcom/wandoujia/gson/internal/LinkedTreeMap;->clear()V

    .line 615
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 606
    iget-object v0, p0, Lcxf;->a:Lcom/wandoujia/gson/internal/LinkedTreeMap;

    invoke-virtual {v0, p1}, Lcom/wandoujia/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 598
    new-instance v0, Lcxg;

    invoke-direct {v0, p0}, Lcxg;-><init>(Lcxf;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 610
    iget-object v0, p0, Lcxf;->a:Lcom/wandoujia/gson/internal/LinkedTreeMap;

    invoke-virtual {v0, p1}, Lcom/wandoujia/gson/internal/LinkedTreeMap;->removeInternalByKey(Ljava/lang/Object;)Lcxi;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lcxf;->a:Lcom/wandoujia/gson/internal/LinkedTreeMap;

    iget v0, v0, Lcom/wandoujia/gson/internal/LinkedTreeMap;->size:I

    return v0
.end method
