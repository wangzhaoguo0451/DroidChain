.class public final Laev;
.super Laez;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/EditText;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Laez;-><init>()V

    .line 29
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 38
    const-string v0, "mini_ui_textarea"

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
    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Laev;->a:Landroid/widget/EditText;

    iget v0, p0, Laez;->f:F

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setTextSize(F)V

    iget-object v0, p0, Laez;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Laez;->g:Ljava/lang/String;

    invoke-static {v0}, Lafz;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Laez;->h:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Laez;->j:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Ld;->b(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-super {p0, p1}, Laez;->a(Lorg/json/JSONObject;)V

    .line 34
    return-void
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Laev;->a:Landroid/widget/EditText;

    .line 44
    invoke-static {v0}, Lafd;->a(Landroid/view/View;)V

    .line 45
    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    .line 48
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 68
    invoke-virtual {p0}, Laev;->j()Lorg/json/JSONObject;

    move-result-object v1

    .line 70
    :try_start_0
    invoke-virtual {p0}, Laev;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Laev;->a:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    return-object v1

    .line 72
    :catch_0
    move-exception v0

    invoke-static {v0}, Ld;->b(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final i()V
    .locals 1

    .prologue
    .line 79
    invoke-super {p0}, Laez;->i()V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Laev;->a:Landroid/widget/EditText;

    .line 81
    return-void
.end method
