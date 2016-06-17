.class public final Lafl;
.super Laez;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/CheckBox;

.field private b:Z

.field private c:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Laez;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lafl;->b:Z

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lafl;->c:Z

    .line 38
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 49
    const-string v0, "mini_ui_checkbox"

    invoke-static {v0}, Lg;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected final synthetic a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1
    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p0, Lafl;->a:Landroid/widget/CheckBox;

    iget-object v0, p0, Lafl;->a:Landroid/widget/CheckBox;

    iget-object v1, p0, Laez;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lafl;->a:Landroid/widget/CheckBox;

    iget v1, p0, Laez;->f:F

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTextSize(F)V

    iget-object v0, p0, Laez;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lafl;->a:Landroid/widget/CheckBox;

    iget-object v1, p0, Laez;->g:Ljava/lang/String;

    invoke-static {v1}, Lafz;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lafl;->a:Landroid/widget/CheckBox;

    iget-object v1, p0, Laez;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Laez;->d:Ljava/lang/Object;

    if-eqz v0, :cond_1

    const-string v0, "true"

    iget-object v1, p0, Laez;->d:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lafl;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_1
    iget-boolean v0, p0, Lafl;->c:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lafl;->a:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    :goto_1
    iget-object v0, p0, Lafl;->a:Landroid/widget/CheckBox;

    new-instance v1, Lafm;

    invoke-direct {v1, p0}, Lafm;-><init>(Lafl;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Ld;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lafl;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_1
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 1
    .parameter

    .prologue
    .line 42
    invoke-super {p0, p1}, Laez;->a(Lorg/json/JSONObject;)V

    .line 43
    const-string v0, "disable"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lafl;->c:Z

    .line 44
    const-string v0, "must"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lafl;->b:Z

    .line 45
    return-void
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lafl;->a:Landroid/widget/CheckBox;

    .line 55
    invoke-static {v0}, Lafd;->a(Landroid/view/View;)V

    .line 56
    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    .line 59
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 97
    iget-boolean v1, p0, Lafl;->b:Z

    if-nez v1, :cond_1

    .line 106
    :cond_0
    :goto_0
    return v0

    .line 100
    :cond_1
    iget-object v1, p0, Lafl;->a:Landroid/widget/CheckBox;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Laez;->e:Z

    if-eqz v1, :cond_0

    .line 103
    iget-boolean v1, p0, Lafl;->b:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lafl;->a:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 106
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0}, Lafl;->f()Z

    move-result v0

    return v0
.end method

.method public final h()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 116
    invoke-virtual {p0}, Lafl;->j()Lorg/json/JSONObject;

    move-result-object v0

    .line 117
    iget-object v1, p0, Lafl;->a:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    :try_start_0
    invoke-virtual {p0}, Lafl;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Laez;->d:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final i()V
    .locals 1

    .prologue
    .line 129
    invoke-super {p0}, Laez;->i()V

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lafl;->a:Landroid/widget/CheckBox;

    .line 131
    return-void
.end method
