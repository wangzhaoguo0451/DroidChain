.class public final Laet;
.super Laez;
.source "SourceFile"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Laez;-><init>()V

    .line 24
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 28
    const-string v0, "layout.mini_ui_span"

    invoke-static {v0}, Lg;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected final synthetic a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p2, Landroid/widget/TextView;

    iget-object v0, p0, Laez;->d:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laez;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget v0, p0, Laez;->f:F

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Laez;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Laez;->g:Ljava/lang/String;

    invoke-static {v0}, Lafz;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Ld;->b(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public final h()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Laet;->j()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public final i()V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0}, Laez;->i()V

    .line 59
    return-void
.end method
