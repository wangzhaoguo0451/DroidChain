.class public final Lgfa;
.super Ljava/lang/Object;
.source "VideoPlayHtml5ControlView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lgfa;->a:Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lgfa;->a:Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;

    iget-boolean v0, v0, Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;->a:Z

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lgfa;->a:Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;->a(Z)V

    .line 47
    :cond_0
    return-void
.end method
