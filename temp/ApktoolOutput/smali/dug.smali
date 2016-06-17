.class final Ldug;
.super Ljava/lang/Object;
.source "PublisherProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/ripple_framework/model/Model;


# direct methods
.method constructor <init>(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Ldug;->a:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 123
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Ldug;->a:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-virtual {v1}, Lcom/wandoujia/ripple_framework/model/Model;->j()Lcom/wandoujia/api/proto/PublisherDetail;

    move-result-object v1

    iget-object v1, v1, Lcom/wandoujia/api/proto/PublisherDetail;->relatedApp:Lcom/wandoujia/api/proto/RelatedApp;

    iget-object v1, v1, Lcom/wandoujia/api/proto/RelatedApp;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/wandoujia/jupiter/activity/DetailActivity;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 125
    return-void
.end method
