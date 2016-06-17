.class public final Lafn;
.super Laez;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/Map;

.field private b:Landroid/widget/Spinner;

.field private c:Ljava/util/List;

.field private q:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Laez;-><init>()V

    .line 43
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 53
    const-string v0, "mini_ui_combobox"

    invoke-static {v0}, Lg;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected final synthetic a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p2, Landroid/widget/LinearLayout;

    const-string v0, "mini_combox_spinner"

    invoke-static {v0}, Lg;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lafn;->b:Landroid/widget/Spinner;

    const-string v0, "mini_combox_label"

    invoke-static {v0}, Lg;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lafn;->q:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Laez;->d:Ljava/lang/Object;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lafn;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lafn;->c:Ljava/util/List;

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Landroid/widget/ArrayAdapter;

    const-string v1, "mini_ui_label"

    invoke-static {v1}, Lg;->f(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lafn;->c:Ljava/util/List;

    invoke-direct {v0, p1, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v1, p0, Lafn;->b:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lafn;->b:Landroid/widget/Spinner;

    iget-object v1, p0, Lafn;->c:Ljava/util/List;

    iget-object v2, p0, Laez;->j:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lafn;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Laez;->d:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    move-object v1, v0

    goto :goto_1

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lafn;->a:Ljava/util/Map;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lafn;->c:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 1
    .parameter

    .prologue
    .line 47
    invoke-super {p0, p1}, Laez;->a(Lorg/json/JSONObject;)V

    .line 48
    const-string v0, "label"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lafn;->q:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lafn;->b:Landroid/widget/Spinner;

    .line 59
    invoke-static {v0}, Lafd;->a(Landroid/view/View;)V

    .line 60
    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    .line 63
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 100
    invoke-virtual {p0}, Lafn;->j()Lorg/json/JSONObject;

    move-result-object v1

    .line 102
    :try_start_0
    invoke-virtual {p0}, Lafn;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lafn;->a:Ljava/util/Map;

    iget-object v3, p0, Lafn;->b:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    return-object v1

    .line 104
    :catch_0
    move-exception v0

    invoke-static {v0}, Ld;->b(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final i()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 111
    invoke-super {p0}, Laez;->i()V

    .line 112
    iput-object v0, p0, Lafn;->b:Landroid/widget/Spinner;

    .line 113
    iput-object v0, p0, Lafn;->q:Ljava/lang/String;

    .line 114
    return-void
.end method
