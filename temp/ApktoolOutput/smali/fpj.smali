.class public Lfpj;
.super Ljava/lang/Object;
.source "BaseHandlerController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lgdw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgdw",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lgdw;

    invoke-direct {v0}, Lgdw;-><init>()V

    iput-object v0, p0, Lfpj;->b:Lgdw;

    .line 39
    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lfpj;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lfpj;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 28
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 21
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lfpj;->a:Ljava/lang/ref/WeakReference;

    .line 22
    return-void
.end method

.method protected final b()V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lfpj;->b:Lgdw;

    invoke-virtual {v0}, Lgdw;->b()Ljava/util/List;

    move-result-object v0

    .line 45
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 48
    :cond_0
    return-void
.end method
