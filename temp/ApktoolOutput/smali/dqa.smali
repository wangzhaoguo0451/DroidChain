.class final Ldqa;
.super Ljava/lang/Object;
.source "SearchFilterPresenter.java"

# interfaces
.implements Lhnr;


# instance fields
.field private synthetic a:Lcom/wandoujia/ripple_framework/view/Spinner;

.field private synthetic b:Ldpy;


# direct methods
.method constructor <init>(Ldpy;Lcom/wandoujia/ripple_framework/view/Spinner;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Ldqa;->b:Ldpy;

    iput-object p2, p0, Ldqa;->a:Lcom/wandoujia/ripple_framework/view/Spinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;IZ)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 105
    if-nez p3, :cond_0

    .line 111
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Ldqa;->a:Lcom/wandoujia/ripple_framework/view/Spinner;

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/view/Spinner;->getAdapter()Lhns;

    move-result-object v0

    invoke-virtual {v0, p2}, Lhns;->a(I)Lhnt;

    move-result-object v0

    check-cast v0, Ldqc;

    iget-object v0, v0, Ldqc;->a:Lcom/wandoujia/ripple_framework/model/Model;

    .line 109
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Ldqa;->a:Lcom/wandoujia/ripple_framework/view/Spinner;

    invoke-static {v1, v0, v2}, Ldpy;->a(Landroid/content/Context;Lcom/wandoujia/ripple_framework/model/Model;Landroid/view/View;)V

    .line 110
    iget-object v0, p0, Ldqa;->b:Ldpy;

    iput p2, v0, Ldpy;->b:I

    goto :goto_0
.end method
