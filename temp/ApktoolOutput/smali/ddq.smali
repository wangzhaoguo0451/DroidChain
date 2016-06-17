.class public final Lddq;
.super Ljava/lang/Object;
.source "CategoryScrollView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/jupiter/category/view/CategoryScrollView;


# direct methods
.method public constructor <init>(Lcom/wandoujia/jupiter/category/view/CategoryScrollView;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lddq;->a:Lcom/wandoujia/jupiter/category/view/CategoryScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 60
    iget-object v0, p0, Lddq;->a:Lcom/wandoujia/jupiter/category/view/CategoryScrollView;

    invoke-static {v0}, Lcom/wandoujia/jupiter/category/view/CategoryScrollView;->b(Lcom/wandoujia/jupiter/category/view/CategoryScrollView;)Ldfm;

    move-result-object v0

    if-nez v0, :cond_1

    .line 74
    :cond_0
    :goto_0
    return v2

    .line 64
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 65
    iget-object v0, p0, Lddq;->a:Lcom/wandoujia/jupiter/category/view/CategoryScrollView;

    invoke-static {v0}, Lcom/wandoujia/jupiter/category/view/CategoryScrollView;->d(Lcom/wandoujia/jupiter/category/view/CategoryScrollView;)V

    goto :goto_0

    .line 66
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 67
    iget-object v0, p0, Lddq;->a:Lcom/wandoujia/jupiter/category/view/CategoryScrollView;

    invoke-static {v0}, Lcom/wandoujia/jupiter/category/view/CategoryScrollView;->e(Lcom/wandoujia/jupiter/category/view/CategoryScrollView;)I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 70
    iget-object v0, p0, Lddq;->a:Lcom/wandoujia/jupiter/category/view/CategoryScrollView;

    invoke-static {v0, v3}, Lcom/wandoujia/jupiter/category/view/CategoryScrollView;->a(Lcom/wandoujia/jupiter/category/view/CategoryScrollView;I)I

    .line 71
    iget-object v0, p0, Lddq;->a:Lcom/wandoujia/jupiter/category/view/CategoryScrollView;

    invoke-static {v0}, Lcom/wandoujia/jupiter/category/view/CategoryScrollView;->b(Lcom/wandoujia/jupiter/category/view/CategoryScrollView;)Ldfm;

    move-result-object v0

    iget-object v1, p0, Lddq;->a:Lcom/wandoujia/jupiter/category/view/CategoryScrollView;

    invoke-static {v1}, Lcom/wandoujia/jupiter/category/view/CategoryScrollView;->e(Lcom/wandoujia/jupiter/category/view/CategoryScrollView;)I

    move-result v1

    invoke-interface {v0, v1}, Ldfm;->a(I)V

    goto :goto_0
.end method
