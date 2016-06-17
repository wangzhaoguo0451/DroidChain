.class Lfg;
.super Lff;
.source "LayoutInflaterCompat.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lff;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Lfk;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 42
    if-eqz p2, :cond_0

    new-instance v0, Lfj;

    invoke-direct {v0, p2}, Lfj;-><init>(Lfk;)V

    move-object v1, v0

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v0

    instance-of v2, v0, Landroid/view/LayoutInflater$Factory2;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/view/LayoutInflater$Factory2;

    invoke-static {p1, v0}, Lg;->a(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    .line 43
    :goto_1
    return-void

    .line 42
    :cond_0
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_0

    :cond_1
    invoke-static {p1, v1}, Lg;->a(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    goto :goto_1
.end method
