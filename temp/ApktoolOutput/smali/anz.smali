.class final Lanz;
.super Ljava/lang/Object;
.source "AnimatedDrawableCachingBackendImpl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:I

.field private synthetic b:Lanw;


# direct methods
.method constructor <init>(Lanw;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 407
    iput-object p1, p0, Lanz;->b:Lanw;

    iput p2, p0, Lanz;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 410
    iget-object v0, p0, Lanz;->b:Lanw;

    iget v1, p0, Lanz;->a:I

    invoke-static {v0, v1}, Lanw;->b(Lanw;I)V

    .line 411
    const/4 v0, 0x0

    return-object v0
.end method
