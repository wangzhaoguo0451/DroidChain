.class public abstract Lmw;
.super Ljava/lang/Object;
.source "AppCompatDelegate.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/view/Window;Lmv;)Lmw;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 91
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 92
    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 93
    new-instance v0, Lna;

    invoke-direct {v0, p0, p1, p2}, Lna;-><init>(Landroid/content/Context;Landroid/view/Window;Lmv;)V

    .line 97
    :goto_0
    return-object v0

    .line 94
    :cond_0
    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 95
    new-instance v0, Lmz;

    invoke-direct {v0, p0, p1, p2}, Lmz;-><init>(Landroid/content/Context;Landroid/view/Window;Lmv;)V

    goto :goto_0

    .line 97
    :cond_1
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImplV7;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV7;-><init>(Landroid/content/Context;Landroid/view/Window;)V

    goto :goto_0
.end method


# virtual methods
.method public abstract a()Landroid/support/v7/app/ActionBar;
.end method

.method public abstract a(I)V
.end method

.method public abstract a(Landroid/os/Bundle;)V
.end method

.method public abstract a(Landroid/view/View;)V
.end method

.method public abstract a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public abstract a(Ljava/lang/CharSequence;)V
.end method

.method public abstract b()Landroid/view/MenuInflater;
.end method

.method public abstract b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public abstract c()V
.end method

.method public abstract d()V
.end method

.method public abstract e()V
.end method

.method public abstract f()V
.end method

.method public abstract g()V
.end method

.method public abstract h()V
.end method

.method public abstract i()Z
.end method

.method public abstract j()V
.end method
