.class public final Ldif;
.super Ljava/lang/Object;
.source "LibFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field private a:I

.field private synthetic b:Lcom/wandoujia/jupiter/library/fragment/LibFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/jupiter/library/fragment/LibFragment;)V
    .locals 1
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Ldif;->b:Lcom/wandoujia/jupiter/library/fragment/LibFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    const/4 v0, 0x0

    iput v0, p0, Ldif;->a:I

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Ldif;->b:Lcom/wandoujia/jupiter/library/fragment/LibFragment;

    iget-object v0, v0, Lcom/wandoujia/jupiter/library/fragment/LibFragment;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 133
    iget v1, p0, Ldif;->a:I

    if-ne v1, v0, :cond_0

    .line 140
    :goto_0
    return-void

    .line 136
    :cond_0
    iput v0, p0, Ldif;->a:I

    .line 137
    iget-object v1, p0, Ldif;->b:Lcom/wandoujia/jupiter/library/fragment/LibFragment;

    iget-object v1, v1, Lcom/wandoujia/jupiter/library/fragment/LibFragment;->c:Lcom/wandoujia/p4/views/ScrollDownLayout;

    invoke-virtual {v1, v0}, Lcom/wandoujia/p4/views/ScrollDownLayout;->setMaxOffset(I)V

    .line 138
    iget-object v0, p0, Ldif;->b:Lcom/wandoujia/jupiter/library/fragment/LibFragment;

    iget-object v0, v0, Lcom/wandoujia/jupiter/library/fragment/LibFragment;->c:Lcom/wandoujia/p4/views/ScrollDownLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/views/ScrollDownLayout;->setEnable(Z)V

    .line 139
    iget-object v0, p0, Ldif;->b:Lcom/wandoujia/jupiter/library/fragment/LibFragment;

    iget-object v0, v0, Lcom/wandoujia/jupiter/library/fragment/LibFragment;->c:Lcom/wandoujia/p4/views/ScrollDownLayout;

    invoke-virtual {v0}, Lcom/wandoujia/p4/views/ScrollDownLayout;->c()V

    goto :goto_0
.end method
