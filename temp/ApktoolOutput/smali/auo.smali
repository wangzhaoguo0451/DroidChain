.class final Lauo;
.super Lass;
.source "SwallowResultProducer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lass",
        "<TT;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lask;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lass;-><init>(Lask;)V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/Object;Z)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .prologue
    .line 29
    if-eqz p2, :cond_0

    .line 30
    iget-object v0, p0, Lass;->d:Lask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lask;->b(Ljava/lang/Object;Z)V

    .line 32
    :cond_0
    return-void
.end method
