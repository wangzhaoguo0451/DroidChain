.class public final Ldek;
.super Ljava/lang/Object;
.source "DetailExpandInfoFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/jupiter/fragment/DetailExpandInfoFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/jupiter/fragment/DetailExpandInfoFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Ldek;->a:Lcom/wandoujia/jupiter/fragment/DetailExpandInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 72
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    .line 73
    iget-object v1, p0, Ldek;->a:Lcom/wandoujia/jupiter/fragment/DetailExpandInfoFragment;

    invoke-virtual {v1}, Lcom/wandoujia/jupiter/fragment/DetailExpandInfoFragment;->finish()V

    .line 76
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
