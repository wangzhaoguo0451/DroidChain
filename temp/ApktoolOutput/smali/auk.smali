.class final Lauk;
.super Lauf;
.source "ResizeAndRotateProducer.java"


# instance fields
.field private synthetic a:Lask;

.field private synthetic b:Laui;


# direct methods
.method constructor <init>(Laui;Lask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lauk;->b:Laui;

    iput-object p2, p0, Lauk;->a:Lask;

    invoke-direct {p0}, Lauf;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lauk;->b:Laui;

    iget-object v0, v0, Laui;->c:Lcom/facebook/imagepipeline/producers/JobScheduler;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/producers/JobScheduler;->a()V

    .line 105
    iget-object v0, p0, Lauk;->b:Laui;

    const/4 v1, 0x1

    iput-boolean v1, v0, Laui;->b:Z

    .line 107
    iget-object v0, p0, Lauk;->a:Lask;

    invoke-virtual {v0}, Lask;->b()V

    .line 108
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lauk;->b:Laui;

    iget-object v0, v0, Laui;->a:Laue;

    invoke-interface {v0}, Laue;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lauk;->b:Laui;

    iget-object v0, v0, Laui;->c:Lcom/facebook/imagepipeline/producers/JobScheduler;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/producers/JobScheduler;->b()Z

    .line 101
    :cond_0
    return-void
.end method
