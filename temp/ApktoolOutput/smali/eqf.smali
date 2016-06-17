.class final Leqf;
.super Ljava/lang/Object;
.source "NioService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Leqe;


# direct methods
.method constructor <init>(Leqe;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Leqf;->a:Leqe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 38
    :goto_0
    iget-object v0, p0, Leqf;->a:Leqe;

    iget-object v0, v0, Leqe;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    iget-object v0, p0, Leqf;->a:Leqe;

    invoke-static {v0}, Leqe;->a(Leqe;)V

    goto :goto_0

    .line 41
    :cond_0
    iget-object v0, p0, Leqf;->a:Leqe;

    invoke-virtual {v0}, Leqe;->b()V

    .line 43
    :try_start_0
    iget-object v0, p0, Leqf;->a:Leqe;

    iget-object v0, v0, Leqe;->a:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :goto_1
    return-void

    .line 45
    :catch_0
    move-exception v0

    goto :goto_1
.end method
