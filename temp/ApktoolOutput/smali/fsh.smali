.class public final Lfsh;
.super Ljava/lang/ref/WeakReference;
.source "AccurateReference.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/WeakReference",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lfsx;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfsx;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 15
    if-eqz p1, :cond_0

    .line 16
    invoke-interface {p1, p2}, Lfsx;->a(Ljava/lang/Object;)V

    .line 18
    :cond_0
    return-void
.end method
