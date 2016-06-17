.class public Lnj;
.super Landroid/app/Dialog;
.source "AppCompatDialog.java"

# interfaces
.implements Lmv;


# instance fields
.field private a:Lmw;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 42
    if-nez p2, :cond_0

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Landroid/support/v7/appcompat/R$attr;->dialogTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p2, v0, Landroid/util/TypedValue;->resourceId:I

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 48
    invoke-virtual {p0}, Lnj;->a()Lmw;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmw;->a(Landroid/os/Bundle;)V

    .line 49
    return-void
.end method


# virtual methods
.method public final a()Lmw;
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lnj;->a:Lmw;

    if-nez v0, :cond_0

    .line 142
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lmw;->a(Landroid/content/Context;Landroid/view/Window;Lmv;)Lmw;

    move-result-object v0

    iput-object v0, p0, Lnj;->a:Lmw;

    .line 144
    :cond_0
    iget-object v0, p0, Lnj;->a:Lmw;

    return-object v0
.end method

.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 103
    invoke-virtual {p0}, Lnj;->a()Lmw;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lmw;->b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    return-void
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0}, Lnj;->a()Lmw;

    move-result-object v0

    invoke-virtual {v0}, Lmw;->g()V

    .line 135
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 58
    invoke-virtual {p0}, Lnj;->a()Lmw;

    move-result-object v0

    invoke-virtual {v0}, Lmw;->j()V

    .line 59
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lnj;->a()Lmw;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmw;->a(Landroid/os/Bundle;)V

    .line 61
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 108
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 109
    invoke-virtual {p0}, Lnj;->a()Lmw;

    move-result-object v0

    invoke-virtual {v0}, Lmw;->e()V

    .line 110
    return-void
.end method

.method public setContentView(I)V
    .locals 1
    .parameter

    .prologue
    .line 76
    invoke-virtual {p0}, Lnj;->a()Lmw;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmw;->a(I)V

    .line 77
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 81
    invoke-virtual {p0}, Lnj;->a()Lmw;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmw;->a(Landroid/view/View;)V

    .line 82
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 86
    invoke-virtual {p0}, Lnj;->a()Lmw;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lmw;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    return-void
.end method

.method public setTitle(I)V
    .locals 2
    .parameter

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(I)V

    .line 98
    invoke-virtual {p0}, Lnj;->a()Lmw;

    move-result-object v0

    invoke-virtual {p0}, Lnj;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmw;->a(Ljava/lang/CharSequence;)V

    .line 99
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 92
    invoke-virtual {p0}, Lnj;->a()Lmw;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmw;->a(Ljava/lang/CharSequence;)V

    .line 93
    return-void
.end method
