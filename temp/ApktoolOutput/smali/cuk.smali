.class public final Lcuk;
.super Ljava/lang/Object;
.source "GamePacketAlertDialog.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field c:Landroid/content/DialogInterface$OnClickListener;

.field d:Landroid/content/DialogInterface$OnClickListener;

.field public e:Landroid/view/View;

.field private f:Landroid/content/Context;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcuk;->f:Landroid/content/Context;

    .line 92
    return-void
.end method


# virtual methods
.method public final a()Lcuj;
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 124
    new-instance v0, Lcuj;

    iget-object v1, p0, Lcuk;->f:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcuj;-><init>(Landroid/content/Context;B)V

    .line 125
    iget-object v1, p0, Lcuk;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0}, Lcuj;->a(Lcuj;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcuk;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v1, p0, Lcuk;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v0}, Lcuj;->b(Lcuj;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcuk;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v1, p0, Lcuk;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcuj;->c(Lcuj;)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcuk;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcuj;->c(Lcuj;)Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Lcul;

    invoke-direct {v2, p0, v0}, Lcul;-><init>(Lcuk;Lcuj;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v1, p0, Lcuk;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcuj;->d(Lcuj;)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcuk;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcuj;->d(Lcuj;)Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Lcum;

    invoke-direct {v2, p0, v0}, Lcum;-><init>(Lcuk;Lcuj;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v1, p0, Lcuk;->e:Landroid/view/View;

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcuj;->e(Lcuj;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    invoke-static {v0}, Lcuj;->e(Lcuj;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lcuk;->e:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 126
    :cond_2
    return-object v0

    .line 125
    :cond_3
    invoke-static {v0}, Lcuj;->a(Lcuj;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    invoke-static {v0}, Lcuj;->b(Lcuj;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcuk;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcuk;->g:Ljava/lang/String;

    .line 107
    iput-object p2, p0, Lcuk;->c:Landroid/content/DialogInterface$OnClickListener;

    .line 108
    return-object p0
.end method

.method public final b(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcuk;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcuk;->h:Ljava/lang/String;

    .line 114
    iput-object p2, p0, Lcuk;->d:Landroid/content/DialogInterface$OnClickListener;

    .line 115
    return-object p0
.end method
