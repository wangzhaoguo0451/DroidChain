.class final Laqk;
.super Lask;
.source "AbstractProducerToDataSourceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lask",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Laqj;


# direct methods
.method constructor <init>(Laqj;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Laqk;->a:Laqj;

    invoke-direct {p0}, Lask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Laqk;->a:Laqj;

    invoke-virtual {v0}, Laqj;->h()V

    .line 63
    return-void
.end method

.method protected final a(F)V
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Laqk;->a:Laqj;

    invoke-virtual {v0, p1}, Laqj;->a(F)Z

    .line 68
    return-void
.end method

.method protected final a(Ljava/lang/Object;Z)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Laqk;->a:Laqj;

    invoke-virtual {v0, p1, p2}, Laqj;->b(Ljava/lang/Object;Z)V

    .line 53
    return-void
.end method

.method protected final a(Ljava/lang/Throwable;)V
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Laqk;->a:Laqj;

    invoke-static {v0, p1}, Laqj;->a(Laqj;Ljava/lang/Throwable;)V

    .line 58
    return-void
.end method
