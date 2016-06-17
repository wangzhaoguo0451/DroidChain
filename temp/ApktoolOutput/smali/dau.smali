.class final Ldau;
.super Ldar;
.source "ImageManager.java"


# instance fields
.field final a:Ljava/lang/String;

.field final synthetic b:Ldaa;

.field private f:Ljava/util/concurrent/FutureTask;


# direct methods
.method constructor <init>(Ldaa;Ljava/lang/String;IILdat;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 862
    iput-object p1, p0, Ldau;->b:Ldaa;

    .line 863
    invoke-direct {p0, p5, p3, p4}, Ldar;-><init>(Ldat;II)V

    .line 864
    iput-object p2, p0, Ldau;->a:Ljava/lang/String;

    .line 865
    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    .prologue
    .line 869
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Ldav;

    invoke-direct {v1, p0}, Ldav;-><init>(Ldau;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Ldau;->f:Ljava/util/concurrent/FutureTask;

    .line 877
    iget-object v0, p0, Ldau;->b:Ldaa;

    iget-object v0, v0, Ldaa;->b:Ldbb;

    iget-object v1, p0, Ldau;->f:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, v1}, Ldbb;->a(Ljava/lang/Runnable;)V

    .line 878
    return-void
.end method

.method final b()V
    .locals 2

    .prologue
    .line 882
    iget-object v0, p0, Ldau;->f:Ljava/util/concurrent/FutureTask;

    if-eqz v0, :cond_0

    .line 883
    iget-object v0, p0, Ldau;->f:Ljava/util/concurrent/FutureTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    .line 884
    iget-object v0, p0, Ldau;->b:Ldaa;

    iget-object v0, v0, Ldaa;->b:Ldbb;

    iget-object v1, p0, Ldau;->f:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, v1}, Ldbb;->b(Ljava/lang/Runnable;)Z

    .line 886
    :cond_0
    return-void
.end method
