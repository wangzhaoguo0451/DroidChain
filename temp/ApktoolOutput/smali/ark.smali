.class final Lark;
.super Larl;
.source "FlexByteArrayPool.java"


# direct methods
.method public constructor <init>(Lmv;Lart;Lmv;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Larl;-><init>(Lmv;Lart;Lmv;)V

    .line 72
    return-void
.end method


# virtual methods
.method final e(I)Larf;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Larf",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 76
    new-instance v0, Laro;

    iget-object v1, p0, Lark;->a:Lart;

    iget v1, v1, Lart;->d:I

    invoke-direct {v0, p1, v1}, Laro;-><init>(II)V

    return-object v0
.end method
