.class final Ldal;
.super Ldar;
.source "ImageManager.java"


# instance fields
.field final a:Ljava/lang/String;

.field final synthetic b:Ldaa;

.field private f:Ljava/util/concurrent/FutureTask;


# direct methods
.method constructor <init>(Ldaa;Ljava/lang/String;Ldat;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 829
    iput-object p1, p0, Ldal;->b:Ldaa;

    .line 830
    invoke-direct {p0, p3, v0, v0}, Ldar;-><init>(Ldat;II)V

    .line 831
    iput-object p2, p0, Ldal;->a:Ljava/lang/String;

    .line 832
    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    .prologue
    .line 836
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Ldam;

    invoke-direct {v1, p0}, Ldam;-><init>(Ldal;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Ldal;->f:Ljava/util/concurrent/FutureTask;

    .line 844
    iget-object v0, p0, Ldal;->b:Ldaa;

    iget-object v0, v0, Ldaa;->b:Ldbb;

    iget-object v1, p0, Ldal;->f:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, v1}, Ldbb;->a(Ljava/lang/Runnable;)V

    .line 845
    return-void
.end method

.method final b()V
    .locals 2

    .prologue
    .line 849
    iget-object v0, p0, Ldal;->f:Ljava/util/concurrent/FutureTask;

    if-eqz v0, :cond_0

    .line 850
    iget-object v0, p0, Ldal;->f:Ljava/util/concurrent/FutureTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    .line 851
    iget-object v0, p0, Ldal;->b:Ldaa;

    iget-object v0, v0, Ldaa;->b:Ldbb;

    iget-object v1, p0, Ldal;->f:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, v1}, Ldbb;->b(Ljava/lang/Runnable;)Z

    .line 853
    :cond_0
    return-void
.end method
