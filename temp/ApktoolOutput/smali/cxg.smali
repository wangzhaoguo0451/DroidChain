.class final Lcxg;
.super Lcxh;
.source "LinkedTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/wandoujia/gson/internal/LinkedTreeMap",
        "<TK;TV;>.cxh<TK;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcxf;)V
    .locals 2
    .parameter

    .prologue
    .line 598
    iget-object v0, p1, Lcxf;->a:Lcom/wandoujia/gson/internal/LinkedTreeMap;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcxh;-><init>(Lcom/wandoujia/gson/internal/LinkedTreeMap;B)V

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 600
    invoke-virtual {p0}, Lcxg;->a()Lcxi;

    move-result-object v0

    iget-object v0, v0, Lcxi;->f:Ljava/lang/Object;

    return-object v0
.end method
