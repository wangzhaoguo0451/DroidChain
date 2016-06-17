.class public final Lgfj;
.super Ljava/lang/Object;
.source "VideoDetailActivity.java"

# interfaces
.implements Lfzf;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/video2/activity/VideoDetailActivity;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/video2/activity/VideoDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lgfj;->a:Lcom/wandoujia/p4/video2/activity/VideoDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 51
    if-nez p1, :cond_0

    .line 52
    iget-object v0, p0, Lgfj;->a:Lcom/wandoujia/p4/video2/activity/VideoDetailActivity;

    invoke-virtual {v0}, Lcom/wandoujia/p4/video2/activity/VideoDetailActivity;->finish()V

    .line 54
    :cond_0
    return-void
.end method
