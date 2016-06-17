.class public final Ldvs;
.super Ljava/lang/Object;
.source "TopicFragment.java"

# interfaces
.implements Ldvk;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lert;


# direct methods
.method public constructor <init>(Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;Lert;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ldvs;->a:Ljava/lang/ref/WeakReference;

    .line 280
    iput-object p2, p0, Ldvs;->b:Lert;

    .line 281
    return-void
.end method


# virtual methods
.method public final a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 3
    .parameter

    .prologue
    .line 285
    iget-object v0, p0, Ldvs;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;

    .line 286
    if-nez v0, :cond_1

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 289
    :cond_1
    invoke-virtual {v0}, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 292
    iget-object v1, p0, Ldvs;->b:Lert;

    invoke-virtual {v1, p1}, Lert;->a(Ljava/lang/Object;)V

    .line 293
    invoke-static {v0, p1}, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->a(Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;Lcom/wandoujia/ripple_framework/model/Model;)V

    .line 295
    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/model/Model;->j()Lcom/wandoujia/api/proto/PublisherDetail;

    move-result-object v1

    iget-object v1, v1, Lcom/wandoujia/api/proto/PublisherDetail;->subscribed:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 296
    invoke-static {v0}, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->a(Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;)Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;

    move-result-object v1

    iget-object v1, v1, Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;->f:Landroid/widget/FrameLayout;

    invoke-static {v0, p1}, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->b(Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;Lcom/wandoujia/ripple_framework/model/Model;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 298
    :cond_2
    invoke-static {v0}, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->b(Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;)Lhaz;

    move-result-object v1

    iget-object v1, v1, Luh;->a:Lui;

    invoke-virtual {v1}, Lui;->a()V

    .line 300
    iget-object v1, p1, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Entity$Builder;->title:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->a(Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;Ljava/lang/CharSequence;)V

    .line 301
    invoke-static {v0}, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->c(Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;)Ldvn;

    move-result-object v0

    invoke-static {p1}, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->a(Lcom/wandoujia/ripple_framework/model/Model;)Z

    move-result v1

    iget-object v2, p1, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v2, v2, Lcom/wandoujia/api/proto/Entity$Builder;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ldvn;->a(ZLjava/lang/String;)V

    goto :goto_0
.end method
