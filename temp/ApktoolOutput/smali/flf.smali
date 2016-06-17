.class public abstract Lflf;
.super Lfsi;
.source "RichFetcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lfsi",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected b:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lfsi;-><init>()V

    .line 14
    const/4 v0, -0x1

    iput v0, p0, Lflf;->b:I

    .line 15
    return-void
.end method


# virtual methods
.method protected a(II)Ljava/util/List;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 19
    iget v0, p0, Lflf;->b:I

    if-eq v0, v2, :cond_0

    .line 20
    iget v0, p0, Lflf;->b:I

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 21
    if-gtz p2, :cond_0

    .line 22
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 33
    :goto_0
    return-object v0

    .line 25
    :cond_0
    invoke-virtual {p0, p1, p2}, Lflf;->c(II)Lflg;

    move-result-object v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    const/4 v0, 0x0

    goto :goto_0

    .line 29
    :cond_1
    invoke-interface {v0}, Lflg;->getTotal()I

    move-result v1

    .line 30
    if-eq v1, v2, :cond_2

    .line 31
    iput v1, p0, Lflf;->b:I

    .line 33
    :cond_2
    invoke-interface {v0}, Lflg;->getResult()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method protected abstract c(II)Lflg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lflg",
            "<TT;>;"
        }
    .end annotation
.end method
