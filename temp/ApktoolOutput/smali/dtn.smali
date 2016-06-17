.class final Ldtn;
.super Ljava/lang/Object;
.source "JupiterPublisher.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/util/concurrent/CountDownLatch;

.field private synthetic b:Ldtr;

.field private synthetic c:Ldtl;


# direct methods
.method constructor <init>(Ldtl;Ljava/util/concurrent/CountDownLatch;Ldtr;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Ldtn;->c:Ldtl;

    iput-object p2, p0, Ldtn;->a:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Ldtn;->b:Ldtr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 101
    iget-object v0, p0, Ldtn;->c:Ldtl;

    iget-object v1, p0, Ldtn;->a:Ljava/util/concurrent/CountDownLatch;

    iget-object v2, p0, Ldtn;->b:Ldtr;

    invoke-static {v0, v1, v2}, Ldtl;->a(Ldtl;Ljava/util/concurrent/CountDownLatch;Ldtr;)V

    .line 102
    return-void
.end method
