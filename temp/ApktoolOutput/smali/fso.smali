.class final Lfso;
.super Ljava/lang/Object;
.source "BaseFetcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/util/concurrent/ExecutionException;

.field private synthetic b:Lfsj;


# direct methods
.method constructor <init>(Lfsj;Ljava/util/concurrent/ExecutionException;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lfso;->b:Lfsj;

    iput-object p2, p0, Lfso;->a:Ljava/util/concurrent/ExecutionException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 138
    iget-object v0, p0, Lfso;->b:Lfsj;

    iget-object v0, v0, Lfsj;->c:Lfsr;

    iget-object v1, p0, Lfso;->b:Lfsj;

    iget v1, v1, Lfsj;->a:I

    iget-object v2, p0, Lfso;->a:Ljava/util/concurrent/ExecutionException;

    invoke-interface {v0, v1, v2}, Lfsr;->a(ILjava/util/concurrent/ExecutionException;)V

    .line 139
    return-void
.end method
