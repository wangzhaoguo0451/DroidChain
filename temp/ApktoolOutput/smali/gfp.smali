.class public final Lgfp;
.super Ljava/lang/Object;
.source "VideoSourceAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/video2/adapter/VideoSourceAdapter$Row;

.field private synthetic b:Lcom/wandoujia/p4/video2/adapter/VideoSourceAdapter;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/video2/adapter/VideoSourceAdapter;Lcom/wandoujia/p4/video2/adapter/VideoSourceAdapter$Row;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lgfp;->b:Lcom/wandoujia/p4/video2/adapter/VideoSourceAdapter;

    iput-object p2, p0, Lgfp;->a:Lcom/wandoujia/p4/video2/adapter/VideoSourceAdapter$Row;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lgfp;->b:Lcom/wandoujia/p4/video2/adapter/VideoSourceAdapter;

    invoke-static {v0}, Lcom/wandoujia/p4/video2/adapter/VideoSourceAdapter;->a(Lcom/wandoujia/p4/video2/adapter/VideoSourceAdapter;)Lgfq;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lgfp;->b:Lcom/wandoujia/p4/video2/adapter/VideoSourceAdapter;

    invoke-static {v0}, Lcom/wandoujia/p4/video2/adapter/VideoSourceAdapter;->a(Lcom/wandoujia/p4/video2/adapter/VideoSourceAdapter;)Lgfq;

    move-result-object v0

    iget-object v1, p0, Lgfp;->a:Lcom/wandoujia/p4/video2/adapter/VideoSourceAdapter$Row;

    invoke-interface {v0, v1}, Lgfq;->a(Lcom/wandoujia/p4/video2/adapter/VideoSourceAdapter$Row;)V

    .line 59
    :cond_0
    iget-object v0, p0, Lgfp;->b:Lcom/wandoujia/p4/video2/adapter/VideoSourceAdapter;

    iget-object v1, p0, Lgfp;->a:Lcom/wandoujia/p4/video2/adapter/VideoSourceAdapter$Row;

    invoke-static {v0, v1}, Lcom/wandoujia/p4/video2/adapter/VideoSourceAdapter;->a(Lcom/wandoujia/p4/video2/adapter/VideoSourceAdapter;Lcom/wandoujia/p4/video2/adapter/VideoSourceAdapter$Row;)Lcom/wandoujia/p4/video2/adapter/VideoSourceAdapter$Row;

    .line 60
    iget-object v0, p0, Lgfp;->b:Lcom/wandoujia/p4/video2/adapter/VideoSourceAdapter;

    invoke-virtual {v0}, Lcom/wandoujia/p4/video2/adapter/VideoSourceAdapter;->notifyDataSetChanged()V

    .line 61
    return-void
.end method
