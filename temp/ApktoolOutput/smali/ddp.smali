.class public final Lddp;
.super Ljava/lang/Object;
.source "CategoryScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/wandoujia/jupiter/category/view/CategoryScrollView;


# direct methods
.method public constructor <init>(Lcom/wandoujia/jupiter/category/view/CategoryScrollView;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lddp;->a:Lcom/wandoujia/jupiter/category/view/CategoryScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 45
    iget-object v0, p0, Lddp;->a:Lcom/wandoujia/jupiter/category/view/CategoryScrollView;

    invoke-static {v0}, Lcom/wandoujia/jupiter/category/view/CategoryScrollView;->a(Lcom/wandoujia/jupiter/category/view/CategoryScrollView;)I

    move-result v0

    iget-object v1, p0, Lddp;->a:Lcom/wandoujia/jupiter/category/view/CategoryScrollView;

    invoke-virtual {v1}, Lcom/wandoujia/jupiter/category/view/CategoryScrollView;->getScrollY()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 46
    iget-object v0, p0, Lddp;->a:Lcom/wandoujia/jupiter/category/view/CategoryScrollView;

    invoke-static {v0}, Lcom/wandoujia/jupiter/category/view/CategoryScrollView;->b(Lcom/wandoujia/jupiter/category/view/CategoryScrollView;)Ldfm;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lddp;->a:Lcom/wandoujia/jupiter/category/view/CategoryScrollView;

    invoke-static {v0, v2}, Lcom/wandoujia/jupiter/category/view/CategoryScrollView;->a(Lcom/wandoujia/jupiter/category/view/CategoryScrollView;I)I

    .line 48
    iget-object v0, p0, Lddp;->a:Lcom/wandoujia/jupiter/category/view/CategoryScrollView;

    invoke-static {v0}, Lcom/wandoujia/jupiter/category/view/CategoryScrollView;->b(Lcom/wandoujia/jupiter/category/view/CategoryScrollView;)Ldfm;

    move-result-object v0

    invoke-interface {v0, v2}, Ldfm;->a(I)V

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    iget-object v0, p0, Lddp;->a:Lcom/wandoujia/jupiter/category/view/CategoryScrollView;

    iget-object v1, p0, Lddp;->a:Lcom/wandoujia/jupiter/category/view/CategoryScrollView;

    invoke-virtual {v1}, Lcom/wandoujia/jupiter/category/view/CategoryScrollView;->getScrollY()I

    move-result v1

    invoke-static {v0, v1}, Lcom/wandoujia/jupiter/category/view/CategoryScrollView;->b(Lcom/wandoujia/jupiter/category/view/CategoryScrollView;I)I

    .line 52
    iget-object v0, p0, Lddp;->a:Lcom/wandoujia/jupiter/category/view/CategoryScrollView;

    iget-object v1, p0, Lddp;->a:Lcom/wandoujia/jupiter/category/view/CategoryScrollView;

    invoke-static {v1}, Lcom/wandoujia/jupiter/category/view/CategoryScrollView;->c(Lcom/wandoujia/jupiter/category/view/CategoryScrollView;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Lcom/wandoujia/jupiter/category/view/CategoryScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
