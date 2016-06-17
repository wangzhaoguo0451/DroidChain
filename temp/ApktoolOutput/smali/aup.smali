.class public final Laup;
.super Ljava/lang/Object;
.source "ThreadHandoffProducer.java"

# interfaces
.implements Laud;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Laud",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Laud;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laud",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Laud;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Laud",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {p1}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Laup;->b:Ljava/util/concurrent/Executor;

    .line 30
    invoke-static {p2}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laud;

    iput-object v0, p0, Laup;->a:Laud;

    .line 31
    return-void
.end method


# virtual methods
.method public final a(Lask;Laue;)V
    .locals 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lask",
            "<TT;>;",
            "Laue;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-interface {p2}, Laue;->c()Laug;

    move-result-object v3

    .line 36
    invoke-interface {p2}, Laue;->b()Ljava/lang/String;

    move-result-object v5

    .line 37
    new-instance v0, Lauq;

    const-string v4, "BackgroundThreadHandoffProducer"

    move-object v1, p0

    move-object v2, p1

    move-object v6, v3

    move-object v7, v5

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lauq;-><init>(Laup;Lask;Laug;Ljava/lang/String;Ljava/lang/String;Laug;Ljava/lang/String;Lask;Laue;)V

    .line 56
    new-instance v1, Laur;

    invoke-direct {v1, v0}, Laur;-><init>(Laum;)V

    invoke-interface {p2, v1}, Laue;->a(Lauf;)V

    .line 63
    iget-object v1, p0, Laup;->b:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 64
    return-void
.end method
