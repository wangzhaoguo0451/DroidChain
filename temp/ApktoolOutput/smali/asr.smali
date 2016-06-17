.class final Lasr;
.super Lauf;
.source "DecodeProducer.java"


# instance fields
.field private synthetic a:Lasp;


# direct methods
.method constructor <init>(Lasp;)V
    .locals 0
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lasr;->a:Lasp;

    invoke-direct {p0}, Lauf;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lasr;->a:Lasp;

    iget-object v0, v0, Lasp;->a:Laue;

    invoke-interface {v0}, Laue;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lasr;->a:Lasp;

    iget-object v0, v0, Lasp;->b:Lcom/facebook/imagepipeline/producers/JobScheduler;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/producers/JobScheduler;->b()Z

    .line 140
    :cond_0
    return-void
.end method
