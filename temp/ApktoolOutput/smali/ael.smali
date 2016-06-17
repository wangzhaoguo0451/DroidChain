.class public final Lael;
.super Laez;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Landroid/view/View;

.field private c:Ljava/util/List;

.field private q:Ljava/util/List;

.field private r:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Laez;-><init>()V

    return-void
.end method

.method static synthetic a(Lael;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lael;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lael;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lael;->r:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lael;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lael;->q:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lael;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lael;->b:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 75
    const-string v0, "mini_ui_select_button"

    invoke-static {v0}, Lg;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected final synthetic a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1
    check-cast p2, Landroid/view/ViewGroup;

    const-string v0, "mini_list"

    invoke-static {v0}, Lg;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lael;->a:Landroid/widget/ListView;

    new-instance v0, Laem;

    invoke-direct {v0, p0, v3}, Laem;-><init>(Lael;B)V

    iget-object v1, p0, Lael;->a:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lael;->a:Landroid/widget/ListView;

    new-instance v1, Laen;

    invoke-direct {v1, p0}, Laen;-><init>(Lael;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lael;->a:Landroid/widget/ListView;

    new-instance v1, Laeo;

    invoke-direct {v1, p0}, Laeo;-><init>(Lael;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    const-string v0, "mini_list_mask"

    invoke-static {v0}, Lg;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lael;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "msp_dimen_40"

    invoke-static {v1}, Lg;->d(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lael;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/2addr v0, v1

    iget-object v1, p0, Laez;->o:Lcom/alipay/wandoujia/sg;

    invoke-interface {v1}, Lcom/alipay/wandoujia/sg;->o()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1, p1}, Lafz;->a(Ljava/lang/String;Landroid/app/Activity;)I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lael;->b:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lael;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 5
    .parameter

    .prologue
    .line 45
    invoke-super {p0, p1}, Laez;->a(Lorg/json/JSONObject;)V

    .line 46
    iget-object v0, p0, Laez;->d:Ljava/lang/Object;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    move-object v1, v0

    .line 48
    :goto_0
    if-eqz v1, :cond_0

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lael;->q:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lael;->c:Ljava/util/List;

    .line 51
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v0, v2, :cond_2

    .line 60
    :cond_0
    return-void

    .line 46
    :cond_1
    iget-object v0, p0, Laez;->d:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONArray;

    move-object v1, v0

    goto :goto_0

    .line 52
    :cond_2
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 53
    iget-object v3, p0, Lael;->c:Ljava/util/List;

    const-string v4, "text"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v3, p0, Lael;->q:Ljava/util/List;

    const-string v4, "val"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lael;->a:Landroid/widget/ListView;

    .line 81
    invoke-static {v0}, Lafd;->a(Landroid/view/View;)V

    .line 82
    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    .line 85
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 64
    invoke-virtual {p0}, Lael;->j()Lorg/json/JSONObject;

    move-result-object v1

    .line 66
    :try_start_0
    invoke-virtual {p0}, Lael;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lael;->r:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    return-object v1

    .line 68
    :catch_0
    move-exception v0

    invoke-static {v0}, Ld;->b(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final i()V
    .locals 1

    .prologue
    .line 205
    invoke-super {p0}, Laez;->i()V

    .line 206
    const/4 v0, 0x0

    iput-object v0, p0, Lael;->a:Landroid/widget/ListView;

    .line 208
    return-void
.end method
