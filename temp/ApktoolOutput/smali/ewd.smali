.class public final Lewd;
.super Ljava/lang/Object;
.source "AppCommentsFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lewd;->a:Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 100
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_0

    .line 101
    iget-object v0, p0, Lewd;->a:Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;

    const v1, 0x7f0e0203

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    add-int/lit16 v3, v3, -0x3e8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v1

    sget v2, Ldxa;->b:I

    int-to-long v2, v2

    invoke-static {v1, v0, v2, v3}, Ldxa;->a(Landroid/content/Context;Ljava/lang/String;J)Ldxa;

    move-result-object v0

    invoke-virtual {v0}, Ldxa;->a()V

    .line 104
    iget-object v0, p0, Lewd;->a:Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->a(Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 108
    :goto_0
    iget-object v0, p0, Lewd;->a:Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->b(Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lewd;->a:Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->a(Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 93
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 96
    return-void
.end method
