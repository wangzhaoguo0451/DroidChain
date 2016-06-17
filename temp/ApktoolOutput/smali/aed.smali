.class public final Laed;
.super Laez;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Laez;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Laed;->c:Z

    .line 24
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 45
    const-string v0, "mini_ui_label"

    invoke-static {v0}, Lg;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected final synthetic a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p2, Landroid/widget/TextView;

    iget-object v0, p0, Laez;->d:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Laed;->b:Z

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v0, p0, Laez;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget v0, p0, Laez;->f:F

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Laez;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    :try_start_1
    iget-object v0, p0, Laez;->g:Ljava/lang/String;

    invoke-static {v0}, Lafz;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    iget-boolean v0, p0, Laed;->c:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "mini_text_shadow"

    invoke-static {v1}, Lg;->c(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {p2, v0}, Lafz;->a(Landroid/widget/TextView;I)V

    :cond_1
    iget-object v0, p0, Laed;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Laed;->a:Ljava/lang/String;

    invoke-static {v0}, Lafz;->b(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setGravity(I)V

    :cond_2
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Ld;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Laez;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Ld;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Laed;->c:Z

    goto :goto_1
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 1
    .parameter

    .prologue
    .line 35
    invoke-super {p0, p1}, Laez;->a(Lorg/json/JSONObject;)V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Laed;->b:Z

    .line 37
    const-string v0, "align"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laed;->a:Ljava/lang/String;

    .line 38
    const-string v0, "encoded"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Laed;->b:Z

    .line 39
    const-string v0, "shadow"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Laed;->c:Z

    .line 41
    return-void
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public final h()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Laed;->j()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public final i()V
    .locals 0

    .prologue
    .line 103
    invoke-super {p0}, Laez;->i()V

    .line 104
    return-void
.end method
