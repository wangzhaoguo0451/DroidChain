.class public final Lggp;
.super Ljava/lang/Object;
.source "VideoDetailOperationBarView.java"

# interfaces
.implements Lfar;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/video2/detail/VideoDetailOperationBarView;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/video2/detail/VideoDetailOperationBarView;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lggp;->a:Lcom/wandoujia/p4/video2/detail/VideoDetailOperationBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/wandoujia/p4/button/views/StatefulButton;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lggp;->a:Lcom/wandoujia/p4/video2/detail/VideoDetailOperationBarView;

    invoke-static {v0}, Lcom/wandoujia/p4/video2/detail/VideoDetailOperationBarView;->b(Lcom/wandoujia/p4/video2/detail/VideoDetailOperationBarView;)Lcom/wandoujia/p4/video/button/VideoDetailPlayStatefulButton;

    move-result-object v0

    return-object v0
.end method

.method public final getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lggp;->a:Lcom/wandoujia/p4/video2/detail/VideoDetailOperationBarView;

    invoke-static {v0}, Lcom/wandoujia/p4/video2/detail/VideoDetailOperationBarView;->b(Lcom/wandoujia/p4/video2/detail/VideoDetailOperationBarView;)Lcom/wandoujia/p4/video/button/VideoDetailPlayStatefulButton;

    move-result-object v0

    return-object v0
.end method
