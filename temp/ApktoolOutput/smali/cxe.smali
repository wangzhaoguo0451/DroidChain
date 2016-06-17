.class final Lcxe;
.super Lcxh;
.source "LinkedTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/wandoujia/gson/internal/LinkedTreeMap",
        "<TK;TV;>.cxh<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcxd;)V
    .locals 2
    .parameter

    .prologue
    .line 563
    iget-object v0, p1, Lcxd;->a:Lcom/wandoujia/gson/internal/LinkedTreeMap;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcxh;-><init>(Lcom/wandoujia/gson/internal/LinkedTreeMap;B)V

    return-void
.end method


# virtual methods
.method public final synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 563
    invoke-virtual {p0}, Lcxe;->a()Lcxi;

    move-result-object v0

    return-object v0
.end method
