.class public final Lauv;
.super Ljava/lang/Object;
.source "WebpTranscodeProducer.java"

# interfaces
.implements Laud;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Laud",
        "<",
        "Laqx;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/Executor;

.field final b:Larv;

.field private final c:Laud;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laud",
            "<",
            "Laqx;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Larv;Laud;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Larv;",
            "Laud",
            "<",
            "Laqx;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {p1}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lauv;->a:Ljava/util/concurrent/Executor;

    .line 49
    invoke-static {p2}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Larv;

    iput-object v0, p0, Lauv;->b:Larv;

    .line 50
    invoke-static {p3}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laud;

    iput-object v0, p0, Lauv;->c:Laud;

    .line 51
    return-void
.end method


# virtual methods
.method public final a(Lask;Laue;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lask",
            "<",
            "Laqx;",
            ">;",
            "Laue;",
            ")V"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lauv;->c:Laud;

    new-instance v1, Lauy;

    invoke-direct {v1, p0, p1, p2}, Lauy;-><init>(Lauv;Lask;Laue;)V

    invoke-interface {v0, v1, p2}, Laud;->a(Lask;Laue;)V

    .line 56
    return-void
.end method
