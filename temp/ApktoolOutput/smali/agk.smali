.class final Lagk;
.super Ljava/lang/Object;
.source "CacheDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/android/volley/Request;

.field private synthetic b:Lagj;


# direct methods
.method constructor <init>(Lagj;Lcom/android/volley/Request;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lagk;->b:Lagj;

    iput-object p2, p0, Lagk;->a:Lcom/android/volley/Request;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 142
    :try_start_0
    iget-object v0, p0, Lagk;->b:Lagj;

    invoke-static {v0}, Lagj;->a(Lagj;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    iget-object v1, p0, Lagk;->a:Lcom/android/volley/Request;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
