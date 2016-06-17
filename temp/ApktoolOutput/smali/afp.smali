.class public final Lafp;
.super Laez;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Laez;-><init>()V

    .line 33
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Laez;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    const-string v0, "mini_ui_image"

    invoke-static {v0}, Lg;->f(Ljava/lang/String;)I

    move-result v0

    .line 40
    :goto_0
    return v0

    :cond_0
    const-string v0, "mini_ui_icon"

    invoke-static {v0}, Lg;->f(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method protected final a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 57
    iput-object p2, p0, Lafp;->a:Landroid/view/View;

    .line 58
    iget-object v0, p0, Laez;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, p2

    .line 59
    check-cast v0, Landroid/widget/ImageView;

    .line 60
    iget-object v1, p0, Laez;->k:Ljava/lang/String;

    new-instance v2, Lafq;

    invoke-direct {v2, v0}, Lafq;-><init>(Landroid/widget/ImageView;)V

    invoke-static {v1, v2}, Lafz;->a(Ljava/lang/String;Ladj;)V

    .line 84
    :cond_0
    :goto_0
    iget-object v0, p0, Laez;->l:Lafc;

    if-eqz v0, :cond_1

    .line 85
    new-instance v0, Lafr;

    invoke-direct {v0, p0}, Lafr;-><init>(Lafp;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    :cond_1
    return-void

    :cond_2
    move-object v0, p2

    .line 78
    check-cast v0, Landroid/widget/TextView;

    .line 79
    iget-object v1, p0, Laez;->d:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 80
    iget-object v1, p0, Laez;->d:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected final d()V
    .locals 3

    .prologue
    .line 103
    iget-object v0, p0, Lafp;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lafp;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Laez;->l:Lafc;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lafp;->a:Landroid/view/View;

    new-instance v1, Ladv;

    const-string v2, "info"

    invoke-direct {v1, v2}, Ladv;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lafp;->a(Ljava/lang/Object;Ladu;)V

    .line 107
    :cond_0
    return-void
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lafp;->a:Landroid/view/View;

    .line 47
    invoke-static {v0}, Lafd;->a(Landroid/view/View;)V

    .line 48
    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    .line 51
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Lafp;->j()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public final i()V
    .locals 1

    .prologue
    .line 111
    invoke-super {p0}, Laez;->i()V

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lafp;->a:Landroid/view/View;

    .line 113
    return-void
.end method
