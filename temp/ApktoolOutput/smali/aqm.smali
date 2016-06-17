.class public final Laqm;
.super Laqj;
.source "CloseableProducerToDataSourceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Laqj",
        "<",
        "Lakk",
        "<TT;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Laud;Laul;Laug;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laud",
            "<",
            "Lakk",
            "<TT;>;>;",
            "Laul;",
            "Laug;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Laqj;-><init>(Laud;Laul;Laug;)V

    .line 43
    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    invoke-super {p0}, Laqj;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakk;

    invoke-static {v0}, Lakk;->b(Lakk;)Lakk;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    check-cast p1, Lakk;

    invoke-static {p1}, Lakk;->c(Lakk;)V

    return-void
.end method

.method protected final bridge synthetic b(Ljava/lang/Object;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 26
    check-cast p1, Lakk;

    invoke-static {p1}, Lakk;->b(Lakk;)Lakk;

    move-result-object v0

    invoke-super {p0, v0, p2}, Laqj;->b(Ljava/lang/Object;Z)V

    return-void
.end method
