.class final Lebo;
.super Ljava/lang/Object;
.source "GameFolderManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lebl;


# direct methods
.method constructor <init>(Lebl;)V
    .locals 0
    .parameter

    .prologue
    .line 371
    iput-object p1, p0, Lebo;->a:Lebl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 374
    iget-object v0, p0, Lebo;->a:Lebl;

    iget-object v0, v0, Lebl;->d:Lgdw;

    invoke-virtual {v0}, Lgdw;->a()Lgdx;

    move-result-object v1

    .line 376
    :goto_0
    invoke-virtual {v1}, Lgdx;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lebp;

    if-eqz v0, :cond_0

    .line 377
    iget-object v2, p0, Lebo;->a:Lebl;

    iget-object v2, v2, Lebl;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Lebp;->a(Ljava/util/List;)V

    goto :goto_0

    .line 379
    :cond_0
    return-void
.end method
