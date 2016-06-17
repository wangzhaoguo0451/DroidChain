.class public final Laep;
.super Laez;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Landroid/widget/EditText;

.field public c:Z

.field private q:Ljava/util/List;

.field private r:Z

.field private s:Landroid/widget/LinearLayout;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Laez;-><init>()V

    .line 59
    const-string v0, ""

    iput-object v0, p0, Laep;->a:Ljava/lang/String;

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Laep;->c:Z

    .line 61
    return-void
.end method

.method static synthetic a(Laep;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Laep;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic a(Laep;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 259
    move v1, v2

    :goto_0
    iget-object v0, p0, Laep;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    if-ge v1, p1, :cond_1

    iget-object v0, p0, Laep;->q:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Laep;->q:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method static synthetic a(Laep;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Laep;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Laep;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Laep;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Laep;)Z
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-boolean v0, p0, Laep;->r:Z

    return v0
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 142
    const-string v0, "mini_ui_simple_password"

    invoke-static {v0}, Lg;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected final synthetic a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p2, Landroid/widget/LinearLayout;

    const-string v0, "mini_linSimplePwdComponent"

    invoke-static {v0}, Lg;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Laep;->s:Landroid/widget/LinearLayout;

    const-string v0, "mini_spwd_iv_1"

    invoke-static {v0}, Lg;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v1, "mini_spwd_iv_2"

    invoke-static {v1}, Lg;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const-string v2, "mini_spwd_iv_3"

    invoke-static {v2}, Lg;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const-string v3, "mini_spwd_iv_4"

    invoke-static {v3}, Lg;->a(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const-string v4, "mini_spwd_iv_5"

    invoke-static {v4}, Lg;->a(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const-string v5, "mini_spwd_iv_6"

    invoke-static {v5}, Lg;->a(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p2, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Laep;->q:Ljava/util/List;

    iget-object v6, p0, Laep;->q:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Laep;->q:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Laep;->q:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Laep;->q:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Laep;->q:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Laep;->q:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "mini_spwd_input"

    invoke-static {v0}, Lg;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Laep;->b:Landroid/widget/EditText;

    iget-object v0, p0, Laep;->s:Landroid/widget/LinearLayout;

    new-instance v1, Laer;

    invoke-direct {v1, p0}, Laer;-><init>(Laep;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Laep;->b:Landroid/widget/EditText;

    new-instance v1, Laes;

    invoke-direct {v1, p0}, Laes;-><init>(Laep;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-boolean v0, p0, Laep;->p:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lafz;->a(Landroid/app/Activity;)I

    move-result v0

    :goto_0
    int-to-float v0, v0

    invoke-static {p1}, Lafz;->b(Landroid/app/Activity;)F

    move-result v1

    const/high16 v2, 0x41a0

    mul-float/2addr v1, v2

    const/high16 v2, 0x4000

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {}, Ld;->h()V

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    div-int/lit8 v0, v0, 0x6

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void

    :cond_0
    invoke-static {p1}, Lafz;->c(Landroid/app/Activity;)I

    move-result v0

    goto :goto_0
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 2
    .parameter

    .prologue
    .line 69
    invoke-super {p0, p1}, Laez;->a(Lorg/json/JSONObject;)V

    .line 70
    const-string v0, "auto"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Laep;->r:Z

    .line 71
    const-string v0, "format"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laep;->t:Ljava/lang/String;

    .line 72
    const-string v0, "format_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laep;->u:Ljava/lang/String;

    .line 73
    const-string v0, "format_msg"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laep;->v:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 78
    iget-object v0, p0, Laep;->b:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Laep;->c:Z

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Laep;->b:Landroid/widget/EditText;

    new-instance v1, Laeq;

    invoke-direct {v1, p0}, Laeq;-><init>(Laep;)V

    .line 84
    const-wide/16 v2, 0xc8

    .line 79
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 86
    :cond_0
    return-void
.end method

.method protected final d()V
    .locals 0

    .prologue
    .line 246
    return-void
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Laep;->b:Landroid/widget/EditText;

    .line 148
    invoke-static {v0}, Lafd;->a(Landroid/view/View;)V

    .line 149
    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    .line 152
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 90
    iget-object v1, p0, Laep;->s:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Laez;->e:Z

    if-nez v1, :cond_1

    .line 96
    :cond_0
    :goto_0
    return v0

    .line 93
    :cond_1
    iget-object v1, p0, Laep;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    .line 96
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Z
    .locals 5

    .prologue
    .line 101
    invoke-virtual {p0}, Laep;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 102
    iget-object v0, p0, Laep;->t:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 105
    :try_start_0
    iget-object v0, p0, Laep;->a:Ljava/lang/String;

    .line 106
    iget-object v1, p0, Laep;->u:Ljava/lang/String;

    const-string v2, "md5"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    invoke-static {v0}, Ld;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    :cond_0
    iget-object v1, p0, Laep;->t:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 110
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    .line 111
    if-nez v1, :cond_2

    .line 112
    iget-object v0, p0, Laep;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 113
    iget-object v2, p0, Laep;->v:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 115
    const-string v2, "mini_format_error"

    invoke-static {v2}, Lg;->g(Ljava/lang/String;)I

    move-result v2

    .line 114
    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 116
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Laez;->h:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Laep;->v:Ljava/lang/String;

    .line 118
    :cond_1
    iget-object v2, p0, Laep;->b:Landroid/widget/EditText;

    invoke-static {v2}, Lafz;->b(Landroid/widget/EditText;)V

    .line 119
    iget-object v2, p0, Laep;->v:Ljava/lang/String;

    invoke-static {v0, v2}, Ld;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move v0, v1

    .line 126
    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_3
    invoke-virtual {p0}, Laep;->f()Z

    move-result v0

    goto :goto_0
.end method

.method public final h()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 131
    invoke-virtual {p0}, Laep;->j()Lorg/json/JSONObject;

    move-result-object v1

    .line 133
    :try_start_0
    invoke-virtual {p0}, Laep;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Laep;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_0
    return-object v1

    .line 135
    :catch_0
    move-exception v0

    invoke-static {v0}, Ld;->b(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final i()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 250
    invoke-super {p0}, Laez;->i()V

    .line 251
    iget-object v0, p0, Laep;->q:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Laep;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 254
    :cond_0
    iput-object v1, p0, Laep;->a:Ljava/lang/String;

    .line 255
    iput-object v1, p0, Laep;->b:Landroid/widget/EditText;

    .line 256
    iput-object v1, p0, Laep;->s:Landroid/widget/LinearLayout;

    .line 257
    return-void
.end method
