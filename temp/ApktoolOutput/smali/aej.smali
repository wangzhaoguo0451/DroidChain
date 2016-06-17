.class public final Laej;
.super Laez;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/RadioGroup;

.field private b:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Laez;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 35
    const-string v0, "mini_ui_radio"

    invoke-static {v0}, Lg;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected final synthetic a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p2, Landroid/widget/RadioGroup;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Laej;->b:Landroid/util/SparseArray;

    iput-object p2, p0, Laej;->a:Landroid/widget/RadioGroup;

    const/4 v1, 0x0

    iget-object v0, p0, Laez;->d:Ljava/lang/Object;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    move v0, v1

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Laez;->d:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    move-object v2, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v0, 0x1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/widget/RadioButton;

    invoke-direct {v5, p1}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v1}, Landroid/widget/RadioButton;->setId(I)V

    invoke-virtual {v5, v0}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Laez;->f:F

    invoke-virtual {v5, v0}, Landroid/widget/RadioButton;->setTextSize(F)V

    iget-object v0, p0, Laez;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    :try_start_0
    iget-object v0, p0, Laez;->g:Ljava/lang/String;

    invoke-static {v0}, Lafz;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/widget/RadioButton;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_2
    invoke-virtual {p2, v5}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Laej;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Laez;->j:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_4
    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Ld;->b(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Laej;->a:Landroid/widget/RadioGroup;

    .line 41
    invoke-static {v0}, Lafd;->a(Landroid/view/View;)V

    .line 42
    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    .line 45
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 85
    invoke-virtual {p0}, Laej;->j()Lorg/json/JSONObject;

    move-result-object v1

    .line 87
    :try_start_0
    invoke-virtual {p0}, Laej;->c()Ljava/lang/String;

    move-result-object v0

    .line 88
    iget-object v2, p0, Laej;->b:Landroid/util/SparseArray;

    iget-object v3, p0, Laej;->a:Landroid/widget/RadioGroup;

    invoke-virtual {v3}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 87
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    return-object v1

    .line 90
    :catch_0
    move-exception v0

    invoke-static {v0}, Ld;->b(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final i()V
    .locals 1

    .prologue
    .line 97
    invoke-super {p0}, Laez;->i()V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Laej;->a:Landroid/widget/RadioGroup;

    .line 99
    return-void
.end method
