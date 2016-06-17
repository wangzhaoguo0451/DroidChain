.class public final Lgfb;
.super Ljava/lang/Object;
.source "VideoPlayerModeChoiceView.java"

# interfaces
.implements Lcom/wandoujia/mvc/Action;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/video/view/VideoPlayerModeChoiceView;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/video/view/VideoPlayerModeChoiceView;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lgfb;->a:Lcom/wandoujia/p4/video/view/VideoPlayerModeChoiceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lgfb;->a:Lcom/wandoujia/p4/video/view/VideoPlayerModeChoiceView;

    invoke-virtual {v0}, Lcom/wandoujia/p4/video/view/VideoPlayerModeChoiceView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 69
    iget-object v1, p0, Lgfb;->a:Lcom/wandoujia/p4/video/view/VideoPlayerModeChoiceView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 70
    return-void
.end method
