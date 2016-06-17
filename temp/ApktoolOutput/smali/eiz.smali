.class public final Leiz;
.super Ljava/lang/Object;
.source "StatefulButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;


# direct methods
.method public constructor <init>(Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Leiz;->a:Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 132
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 133
    iget-object v1, p0, Leiz;->a:Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

    invoke-virtual {v1, v0}, Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;->getHitRect(Landroid/graphics/Rect;)V

    .line 135
    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v1, v1, -0x32

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 136
    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, -0x32

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 137
    iget v1, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, v1, 0x32

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 138
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, 0x32

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 140
    new-instance v1, Landroid/view/TouchDelegate;

    iget-object v2, p0, Leiz;->a:Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

    invoke-direct {v1, v0, v2}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 143
    const-class v0, Landroid/view/View;

    iget-object v2, p0, Leiz;->a:Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

    invoke-virtual {v2}, Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Leiz;->a:Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

    invoke-virtual {v0}, Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 146
    :cond_0
    return-void
.end method
