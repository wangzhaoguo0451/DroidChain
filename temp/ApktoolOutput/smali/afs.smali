.class public Lafs;
.super Laez;
.source "SourceFile"


# instance fields
.field private A:Z

.field private B:Z

.field private C:Lxh;

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:Z

.field private G:Landroid/app/Activity;

.field private H:Z

.field private I:Ljava/lang/String;

.field public a:Lcom/alipay/android/mini/widget/CustomEditText;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Ljava/lang/String;

.field private s:Lafc;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:I

.field private w:I

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Laez;-><init>()V

    .line 78
    iput-boolean v1, p0, Lafs;->H:Z

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lafs;->I:Ljava/lang/String;

    .line 82
    iput-boolean v1, p0, Lafs;->A:Z

    .line 83
    iput-boolean v1, p0, Lafs;->F:Z

    .line 84
    return-void
.end method

.method static synthetic a(Lafs;)Lcom/alipay/android/mini/widget/CustomEditText;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lafs;->a:Lcom/alipay/android/mini/widget/CustomEditText;

    return-object v0
.end method

.method static synthetic a(Lafs;Lcom/alipay/android/mini/widget/CustomEditText;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 484
    invoke-virtual {p1}, Lcom/alipay/android/mini/widget/CustomEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "mini_icon_clean"

    invoke-static {v1}, Lg;->e(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Laec;

    invoke-direct {v1, p1}, Laec;-><init>(Lcom/alipay/android/mini/widget/CustomEditText;)V

    invoke-virtual {p1, v0, v1}, Lcom/alipay/android/mini/widget/CustomEditText;->a(Landroid/graphics/drawable/Drawable;Lcom/alipay/android/mini/widget/CustomEditText$c;)V

    return-void
.end method

.method static synthetic a(Lafs;Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 433
    iput-boolean p2, p0, Lafs;->H:Z

    iget-boolean v0, p0, Lafs;->H:Z

    if-eqz v0, :cond_0

    iput-object p1, p0, Lafs;->I:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lafs;->a:Lcom/alipay/android/mini/widget/CustomEditText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lafs;->a:Lcom/alipay/android/mini/widget/CustomEditText;

    new-instance v1, Laea;

    invoke-direct {v1, p0, p1}, Laea;-><init>(Lafs;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/CustomEditText;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/mini/widget/CustomEditText;)V
    .locals 0
    .parameter

    .prologue
    .line 497
    invoke-virtual {p0}, Lcom/alipay/android/mini/widget/CustomEditText;->a()V

    return-void
.end method

.method static synthetic b(Lafs;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lafs;->G:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic c(Lafs;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lafs;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lafs;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lafs;->t:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lafs;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lafs;->u:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lafs;)I
    .locals 1
    .parameter

    .prologue
    .line 64
    iget v0, p0, Lafs;->v:I

    return v0
.end method

.method static synthetic g(Lafs;)I
    .locals 1
    .parameter

    .prologue
    .line 66
    iget v0, p0, Lafs;->w:I

    return v0
.end method

.method static synthetic h(Lafs;)Lafc;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lafs;->s:Lafc;

    return-object v0
.end method

.method static synthetic i(Lafs;)V
    .locals 0
    .parameter

    .prologue
    .line 449
    invoke-direct {p0}, Lafs;->m()V

    return-void
.end method

.method private l()Ljava/lang/String;
    .locals 3

    .prologue
    .line 425
    iget-object v0, p0, Lafs;->a:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {v0}, Lcom/alipay/android/mini/widget/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 426
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private m()V
    .locals 1

    .prologue
    .line 450
    new-instance v0, Laeb;

    invoke-direct {v0, p0}, Laeb;-><init>(Lafs;)V

    .line 481
    invoke-virtual {p0, p0, v0}, Lafs;->a(Ljava/lang/Object;Ladu;)V

    .line 482
    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    .prologue
    .line 120
    const-string v0, "mini_ui_lable_input"

    invoke-static {v0}, Lg;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final a(I)I
    .locals 1
    .parameter

    .prologue
    .line 333
    iget-object v0, p0, Lafs;->a:Lcom/alipay/android/mini/widget/CustomEditText;

    if-eqz v0, :cond_1

    .line 334
    iget-object v0, p0, Lafs;->q:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    .line 335
    if-lt v0, p1, :cond_0

    move p1, v0

    .line 343
    :goto_0
    return p1

    .line 338
    :cond_0
    iget-object v0, p0, Lafs;->q:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setWidth(I)V

    goto :goto_0

    .line 341
    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method

.method protected final synthetic a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1
    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lafs;->G:Landroid/app/Activity;

    const-string v0, "mini_input_layout"

    invoke-static {v0}, Lg;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lafs;->b:Landroid/widget/LinearLayout;

    iget-object v0, p0, Laez;->o:Lcom/alipay/wandoujia/sg;

    instance-of v1, v0, Ladx;

    if-eqz v1, :cond_0

    check-cast v0, Ladx;

    iget-boolean v0, v0, Ladx;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lafs;->b:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const-string v0, "mini_input_et"

    invoke-static {v0}, Lg;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/mini/widget/CustomEditText;

    iput-object v0, p0, Lafs;->a:Lcom/alipay/android/mini/widget/CustomEditText;

    const-string v0, "mini_input_error_msg"

    invoke-static {v0}, Lg;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lafs;->c:Landroid/widget/TextView;

    const-string v0, "mini_input_lable"

    invoke-static {v0}, Lg;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lafs;->q:Landroid/widget/TextView;

    iget-object v0, p0, Lafs;->x:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lafs;->q:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lafs;->a:Lcom/alipay/android/mini/widget/CustomEditText;

    iget-object v1, p0, Laez;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/CustomEditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Laez;->j:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lafs;->F:Z

    if-eqz v0, :cond_7

    :try_start_0
    iget-object v0, p0, Laez;->j:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lafs;->a:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {v1, v0}, Lcom/alipay/android/mini/widget/CustomEditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    iget-boolean v0, p0, Lafs;->A:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lafs;->a:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {v0, v4}, Lcom/alipay/android/mini/widget/CustomEditText;->setEnabled(Z)V

    :goto_2
    iget-object v0, p0, Lafs;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lafs;->r:Ljava/lang/String;

    invoke-static {v0, p1}, Lafz;->b(Ljava/lang/String;Landroid/app/Activity;)I

    move-result v0

    iget-object v1, p0, Lafs;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_2
    iget-object v0, p0, Lafs;->b:Landroid/widget/LinearLayout;

    new-instance v1, Laft;

    invoke-direct {v1, p0}, Laft;-><init>(Lafs;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "num"

    iget-object v1, p0, Lafs;->y:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lafs;->a:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {v0, v2}, Lcom/alipay/android/mini/widget/CustomEditText;->setInputType(I)V

    :cond_3
    :goto_3
    iget-object v0, p0, Lafs;->z:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "card_no"

    iget-object v1, p0, Lafs;->z:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lafs;->a:Lcom/alipay/android/mini/widget/CustomEditText;

    new-array v1, v5, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x1a

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/CustomEditText;->setFilters([Landroid/text/InputFilter;)V

    new-instance v0, Lxh;

    invoke-direct {v0}, Lxh;-><init>()V

    iput-object v0, p0, Lafs;->C:Lxh;

    iget-object v0, p0, Lafs;->C:Lxh;

    iget-object v1, p0, Lafs;->a:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {v0, v1}, Lxh;->a(Landroid/widget/EditText;)V

    iget-object v0, p0, Lafs;->a:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {v0}, Lcom/alipay/android/mini/widget/CustomEditText;->a()V

    :cond_4
    const-string v0, "mobile"

    iget-object v1, p0, Lafs;->z:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lafs;->a:Lcom/alipay/android/mini/widget/CustomEditText;

    new-array v1, v5, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0xd

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/CustomEditText;->setFilters([Landroid/text/InputFilter;)V

    new-instance v0, Lxl;

    invoke-direct {v0}, Lxl;-><init>()V

    iget-object v1, p0, Lafs;->a:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {v0, v1}, Lxl;->a(Landroid/widget/EditText;)V

    :cond_5
    iget-object v0, p0, Lafs;->a:Lcom/alipay/android/mini/widget/CustomEditText;

    new-instance v1, Ladz;

    invoke-direct {v1, p0}, Ladz;-><init>(Lafs;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/CustomEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lafs;->a:Lcom/alipay/android/mini/widget/CustomEditText;

    new-instance v1, Lafu;

    invoke-direct {v1, p0}, Lafu;-><init>(Lafs;)V

    iput-object v1, v0, Lcom/alipay/android/mini/widget/CustomEditText;->d:Lcom/alipay/android/mini/widget/CustomEditText$a;

    return-void

    :cond_6
    iget-object v0, p0, Lafs;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lafs;->q:Landroid/widget/TextView;

    iget-object v1, p0, Lafs;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Ld;->b(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lafs;->a:Lcom/alipay/android/mini/widget/CustomEditText;

    iget-object v1, p0, Laez;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/CustomEditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_8
    iget-object v0, p0, Lafs;->a:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {v0, v5}, Lcom/alipay/android/mini/widget/CustomEditText;->setEnabled(Z)V

    goto/16 :goto_2

    :cond_9
    const-string v0, "en"

    iget-object v1, p0, Lafs;->y:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lafs;->a:Lcom/alipay/android/mini/widget/CustomEditText;

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/CustomEditText;->setInputType(I)V

    goto/16 :goto_3

    :cond_a
    const-string v0, "cert"

    iget-object v1, p0, Lafs;->y:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lafs;->a:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {v0, v2}, Lcom/alipay/android/mini/widget/CustomEditText;->setInputType(I)V

    goto/16 :goto_3

    :cond_b
    const-string v0, "pinyin"

    iget-object v1, p0, Lafs;->y:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lafs;->a:Lcom/alipay/android/mini/widget/CustomEditText;

    const/16 v1, 0xc0

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/CustomEditText;->setInputType(I)V

    goto/16 :goto_3

    :cond_c
    const-string v0, "email"

    iget-object v1, p0, Lafs;->y:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lafs;->a:Lcom/alipay/android/mini/widget/CustomEditText;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/CustomEditText;->setInputType(I)V

    goto/16 :goto_3
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 295
    iget-object v0, p0, Lafs;->a:Lcom/alipay/android/mini/widget/CustomEditText;

    if-nez v0, :cond_1

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 301
    iget-object v0, p0, Lafs;->a:Lcom/alipay/android/mini/widget/CustomEditText;

    new-instance v1, Lady;

    invoke-direct {v1, p0, p1}, Lady;-><init>(Lafs;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/CustomEditText;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-super {p0, p1}, Laez;->a(Lorg/json/JSONObject;)V

    .line 89
    const-string v0, "width"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lafs;->r:Ljava/lang/String;

    .line 90
    const-string v0, "onload"

    invoke-static {p1, v0}, Lafc;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lafc;

    move-result-object v0

    iput-object v0, p0, Lafs;->s:Lafc;

    .line 91
    const-string v0, "smsread"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 92
    if-eqz v2, :cond_1

    .line 93
    const-string v0, "template"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lafs;->t:Ljava/lang/String;

    .line 94
    const-string v0, "rules"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 95
    if-eqz v3, :cond_0

    .line 96
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    .line 97
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lt v0, v5, :cond_2

    .line 103
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lafs;->u:Ljava/lang/String;

    .line 105
    :cond_0
    const-string v0, "tempGroup"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lafs;->v:I

    .line 106
    const-string v0, "readTime"

    const/16 v1, 0xb4

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lafs;->w:I

    .line 108
    :cond_1
    const-string v0, "label"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lafs;->x:Ljava/lang/String;

    .line 109
    const-string v0, "keyboard"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lafs;->y:Ljava/lang/String;

    .line 110
    const-string v0, "content"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lafs;->z:Ljava/lang/String;

    .line 111
    const-string v0, "disable"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lafs;->A:Z

    .line 112
    const-string v0, "format"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lafs;->D:Ljava/lang/String;

    .line 113
    const-string v0, "encoded"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lafs;->F:Z

    .line 114
    const-string v0, "format_msg"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lafs;->E:Ljava/lang/String;

    .line 115
    const-string v0, "must"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lafs;->B:Z

    .line 116
    return-void

    .line 98
    :cond_2
    if-lez v0, :cond_3

    .line 99
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    :cond_3
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 202
    iget-object v0, p0, Lafs;->a:Lcom/alipay/android/mini/widget/CustomEditText;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lafs;->a:Lcom/alipay/android/mini/widget/CustomEditText;

    new-instance v1, Lafv;

    invoke-direct {v1, p0}, Lafv;-><init>(Lafs;)V

    .line 208
    const-wide/16 v2, 0xc8

    .line 203
    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/mini/widget/CustomEditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 210
    :cond_0
    return-void
.end method

.method protected final d()V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lafs;->s:Lafc;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lafs;->s:Lafc;

    invoke-static {v0}, Lcom/alipay/wandoujia/ra;->a(Lafc;)Lcom/alipay/wandoujia/ra;

    move-result-object v0

    .line 216
    sget-object v1, Lcom/alipay/wandoujia/ra;->l:Lcom/alipay/wandoujia/ra;

    if-ne v0, v1, :cond_1

    .line 217
    invoke-direct {p0}, Lafs;->m()V

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    new-instance v1, Ladu;

    invoke-direct {v1, v0}, Ladu;-><init>(Lcom/alipay/wandoujia/ra;)V

    invoke-virtual {p0, p0, v1}, Lafs;->a(Ljava/lang/Object;Ladu;)V

    goto :goto_0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lafs;->a:Lcom/alipay/android/mini/widget/CustomEditText;

    .line 126
    invoke-static {v0}, Lafd;->a(Landroid/view/View;)V

    .line 127
    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    .line 130
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v0, 0x1

    .line 226
    iget-boolean v1, p0, Lafs;->B:Z

    if-nez v1, :cond_0

    .line 237
    :goto_0
    return v0

    .line 229
    :cond_0
    iget-object v1, p0, Lafs;->a:Lcom/alipay/android/mini/widget/CustomEditText;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Laez;->e:Z

    if-nez v1, :cond_2

    .line 230
    :cond_1
    iget-object v1, p0, Lafs;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 233
    :cond_2
    iget-object v1, p0, Lafs;->a:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {v1}, Lcom/alipay/android/mini/widget/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 234
    const/4 v0, 0x0

    goto :goto_0

    .line 236
    :cond_3
    iget-object v1, p0, Lafs;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public g()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 243
    iget-boolean v1, p0, Lafs;->B:Z

    if-nez v1, :cond_1

    .line 272
    :cond_0
    :goto_0
    return v0

    .line 246
    :cond_1
    invoke-virtual {p0}, Lafs;->f()Z

    move-result v1

    if-nez v1, :cond_2

    .line 247
    const/4 v0, 0x0

    goto :goto_0

    .line 250
    :cond_2
    iget-object v1, p0, Lafs;->D:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 252
    :try_start_0
    iget-object v1, p0, Lafs;->D:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 253
    invoke-direct {p0}, Lafs;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    .line 254
    if-nez v1, :cond_4

    .line 255
    iget-object v2, p0, Lafs;->q:Landroid/widget/TextView;

    const/high16 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 256
    iget-object v2, p0, Lafs;->E:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 257
    iget-object v2, p0, Lafs;->a:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {v2}, Lcom/alipay/android/mini/widget/CustomEditText;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 258
    const-string v3, "mini_format_error"

    invoke-static {v3}, Lg;->g(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 260
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Laez;->h:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lafs;->E:Ljava/lang/String;

    .line 263
    :cond_3
    iget-object v2, p0, Lafs;->a:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-static {v2}, Lafz;->b(Landroid/widget/EditText;)V

    .line 265
    iget-object v2, p0, Lafs;->G:Landroid/app/Activity;

    iget-object v3, p0, Lafs;->E:Ljava/lang/String;

    invoke-static {v2, v3}, Ld;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    move v0, v1

    .line 270
    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public h()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 280
    invoke-virtual {p0}, Lafs;->j()Lorg/json/JSONObject;

    move-result-object v1

    .line 282
    :try_start_0
    invoke-direct {p0}, Lafs;->l()Ljava/lang/String;

    move-result-object v0

    .line 283
    invoke-virtual {p0}, Lafs;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 284
    iget-boolean v2, p0, Lafs;->H:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lafs;->I:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    const-string v0, "local"

    const-string v2, "Y"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    :cond_0
    :goto_0
    return-object v1

    .line 288
    :catch_0
    move-exception v0

    invoke-static {v0}, Ld;->b(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public i()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 313
    invoke-super {p0}, Laez;->i()V

    .line 314
    iget-object v0, p0, Lafs;->a:Lcom/alipay/android/mini/widget/CustomEditText;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lafs;->c:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 318
    :cond_0
    iput-object v2, p0, Lafs;->C:Lxh;

    .line 319
    iput-object v2, p0, Lafs;->a:Lcom/alipay/android/mini/widget/CustomEditText;

    .line 320
    iput-object v2, p0, Lafs;->x:Ljava/lang/String;

    .line 321
    iput-object v2, p0, Lafs;->s:Lafc;

    .line 322
    iput-object v2, p0, Lafs;->G:Landroid/app/Activity;

    .line 323
    return-void
.end method
