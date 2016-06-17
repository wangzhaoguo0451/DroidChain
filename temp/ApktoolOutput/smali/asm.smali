.class public final Lasm;
.super Ljava/lang/Object;
.source "DecodeProducer.java"

# interfaces
.implements Laud;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Laud",
        "<",
        "Lakk",
        "<",
        "Laqv;",
        ">;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/Executor;

.field final b:Laqo;

.field final c:Z

.field final d:Z

.field private final e:Larp;

.field private final f:Laqq;

.field private final g:Laud;
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
.method public constructor <init>(Larp;Ljava/util/concurrent/Executor;Laqo;Laqq;ZZLaud;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Larp;",
            "Ljava/util/concurrent/Executor;",
            "Laqo;",
            "Laqq;",
            "ZZ",
            "Laud",
            "<",
            "Laqx;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-static {p1}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Larp;

    iput-object v0, p0, Lasm;->e:Larp;

    .line 69
    invoke-static {p2}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lasm;->a:Ljava/util/concurrent/Executor;

    .line 70
    invoke-static {p3}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laqo;

    iput-object v0, p0, Lasm;->b:Laqo;

    .line 71
    invoke-static {p4}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laqq;

    iput-object v0, p0, Lasm;->f:Laqq;

    .line 72
    iput-boolean p5, p0, Lasm;->c:Z

    .line 73
    iput-boolean p6, p0, Lasm;->d:Z

    .line 74
    invoke-static {p7}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laud;

    iput-object v0, p0, Lasm;->g:Laud;

    .line 75
    return-void
.end method


# virtual methods
.method public final a(Lask;Laue;)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lask",
            "<",
            "Lakk",
            "<",
            "Laqv;",
            ">;>;",
            "Laue;",
            ")V"
        }
    .end annotation

    .prologue
    .line 81
    invoke-interface {p2}, Laue;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    .line 83
    iget-object v0, v0, Lcom/facebook/imagepipeline/request/ImageRequest;->b:Landroid/net/Uri;

    invoke-static {v0}, Ld;->a(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Lasn;

    invoke-direct {v0, p0, p1, p2}, Lasn;-><init>(Lasm;Lask;Laue;)V

    .line 93
    :goto_0
    iget-object v1, p0, Lasm;->g:Laud;

    invoke-interface {v1, v0, p2}, Laud;->a(Lask;Laue;)V

    .line 94
    return-void

    .line 86
    :cond_0
    new-instance v4, Laqr;

    iget-object v0, p0, Lasm;->e:Larp;

    invoke-direct {v4, v0}, Laqr;-><init>(Larp;)V

    .line 87
    new-instance v0, Laso;

    iget-object v5, p0, Lasm;->f:Laqq;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Laso;-><init>(Lasm;Lask;Laue;Laqr;Laqq;)V

    goto :goto_0
.end method
