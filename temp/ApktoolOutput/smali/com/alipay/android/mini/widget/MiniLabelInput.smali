.class public Lcom/alipay/android/mini/widget/MiniLabelInput;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field public a:Lcom/alipay/android/mini/widget/CustomEditText;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/graphics/drawable/Drawable;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Z

.field public g:I

.field private h:Landroid/widget/LinearLayout;

.field private i:Lcom/alipay/android/mini/widget/CustomEditText$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/android/mini/widget/MiniLabelInput;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 49
    const-string v1, "mini_widget_label_input"

    invoke-static {v1}, Lg;->f(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    .line 48
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 50
    return-void
.end method

.method public static synthetic a(Lcom/alipay/android/mini/widget/MiniLabelInput;)Lcom/alipay/android/mini/widget/CustomEditText;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->a:Lcom/alipay/android/mini/widget/CustomEditText;

    return-object v0
.end method

.method public static synthetic b(Lcom/alipay/android/mini/widget/MiniLabelInput;)V
    .locals 3
    .parameter

    .prologue
    .line 229
    iget-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->a:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {v0}, Lcom/alipay/android/mini/widget/CustomEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "mini_icon_clean"

    invoke-static {v1}, Lg;->e(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->a:Lcom/alipay/android/mini/widget/CustomEditText;

    new-instance v2, Lxw;

    invoke-direct {v2, p0}, Lxw;-><init>(Lcom/alipay/android/mini/widget/MiniLabelInput;)V

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/mini/widget/CustomEditText;->a(Landroid/graphics/drawable/Drawable;Lcom/alipay/android/mini/widget/CustomEditText$c;)V

    return-void
.end method

.method public static synthetic c(Lcom/alipay/android/mini/widget/MiniLabelInput;)V
    .locals 0
    .parameter

    .prologue
    .line 241
    invoke-direct {p0}, Lcom/alipay/android/mini/widget/MiniLabelInput;->e()V

    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    .line 242
    iget-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->a:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {v0}, Lcom/alipay/android/mini/widget/CustomEditText;->a()V

    .line 243
    iget-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->a:Lcom/alipay/android/mini/widget/CustomEditText;

    iget-object v1, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->c:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->i:Lcom/alipay/android/mini/widget/CustomEditText$c;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/mini/widget/CustomEditText;->a(Landroid/graphics/drawable/Drawable;Lcom/alipay/android/mini/widget/CustomEditText$c;)V

    .line 246
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->i:Lcom/alipay/android/mini/widget/CustomEditText$c;

    .line 75
    const-string v0, "mini_widget_label_input"

    invoke-static {v0}, Lg;->a(Ljava/lang/String;)I

    move-result v0

    .line 74
    invoke-virtual {p0, v0}, Lcom/alipay/android/mini/widget/MiniLabelInput;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->h:Landroid/widget/LinearLayout;

    .line 77
    const-string v0, "mini_widget_label_input_label"

    invoke-static {v0}, Lg;->a(Ljava/lang/String;)I

    move-result v0

    .line 76
    invoke-virtual {p0, v0}, Lcom/alipay/android/mini/widget/MiniLabelInput;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->b:Landroid/widget/TextView;

    .line 79
    const-string v0, "mini_widget_label_input_input"

    invoke-static {v0}, Lg;->a(Ljava/lang/String;)I

    move-result v0

    .line 78
    invoke-virtual {p0, v0}, Lcom/alipay/android/mini/widget/MiniLabelInput;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/mini/widget/CustomEditText;

    iput-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->a:Lcom/alipay/android/mini/widget/CustomEditText;

    .line 80
    iget-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 84
    invoke-direct {p0}, Lcom/alipay/android/mini/widget/MiniLabelInput;->e()V

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 87
    iget-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->a:Lcom/alipay/android/mini/widget/CustomEditText;

    iget-object v1, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/CustomEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 89
    :cond_2
    iget-boolean v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->f:Z

    if-eqz v0, :cond_3

    .line 90
    iget-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->a:Lcom/alipay/android/mini/widget/CustomEditText;

    .line 91
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/CustomEditText;->setInputType(I)V

    .line 92
    iget-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->a:Lcom/alipay/android/mini/widget/CustomEditText;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/CustomEditText;->setInputType(I)V

    .line 95
    :cond_3
    iget v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->g:I

    if-lez v0, :cond_4

    .line 96
    iget-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->a:Lcom/alipay/android/mini/widget/CustomEditText;

    .line 97
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    .line 98
    iget v4, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->g:I

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v2

    .line 97
    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/CustomEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 100
    :cond_4
    iget-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->h:Landroid/widget/LinearLayout;

    new-instance v1, Lxs;

    invoke-direct {v1, p0}, Lxs;-><init>(Lcom/alipay/android/mini/widget/MiniLabelInput;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->a:Lcom/alipay/android/mini/widget/CustomEditText;

    new-instance v1, Lxt;

    invoke-direct {v1, p0}, Lxt;-><init>(Lcom/alipay/android/mini/widget/MiniLabelInput;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/CustomEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 137
    iget-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->a:Lcom/alipay/android/mini/widget/CustomEditText;

    new-instance v1, Lxu;

    invoke-direct {v1, p0}, Lxu;-><init>(Lcom/alipay/android/mini/widget/MiniLabelInput;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/CustomEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 154
    return-void
.end method

.method public final a(I)V
    .locals 1
    .parameter

    .prologue
    .line 261
    iget-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->a:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {v0, p1}, Lcom/alipay/android/mini/widget/CustomEditText;->setInputType(I)V

    .line 262
    return-void
.end method

.method public final a(Landroid/text/TextWatcher;)V
    .locals 1
    .parameter

    .prologue
    .line 209
    iget-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->a:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {v0, p1}, Lcom/alipay/android/mini/widget/CustomEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 210
    return-void
.end method

.method public final a(Lcom/alipay/android/mini/widget/CustomEditText$c;)V
    .locals 0
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->i:Lcom/alipay/android/mini/widget/CustomEditText$c;

    .line 205
    invoke-direct {p0}, Lcom/alipay/android/mini/widget/MiniLabelInput;->e()V

    .line 206
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 249
    iget-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->a:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {v0, p1}, Lcom/alipay/android/mini/widget/CustomEditText;->setText(Ljava/lang/CharSequence;)V

    .line 250
    return-void
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 191
    iget-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->a:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {v0}, Lcom/alipay/android/mini/widget/CustomEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 192
    const-string v1, "mini_icon_clean"

    invoke-static {v1}, Lg;->e(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 194
    iget-object v1, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->a:Lcom/alipay/android/mini/widget/CustomEditText;

    .line 195
    new-instance v2, Lxv;

    invoke-direct {v2, p0}, Lxv;-><init>(Lcom/alipay/android/mini/widget/MiniLabelInput;)V

    .line 194
    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/alipay/android/mini/widget/CustomEditText;->i()V

    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/alipay/android/mini/widget/CustomEditText;->a:Z

    iput-object v2, v1, Lcom/alipay/android/mini/widget/CustomEditText;->c:Lcom/alipay/android/mini/widget/CustomEditText$c;

    iput-object v0, v1, Lcom/alipay/android/mini/widget/CustomEditText;->b:Landroid/graphics/drawable/Drawable;

    .line 201
    return-void
.end method

.method public final b(I)V
    .locals 4
    .parameter

    .prologue
    .line 269
    if-lez p1, :cond_0

    .line 270
    iget-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->a:Lcom/alipay/android/mini/widget/CustomEditText;

    .line 271
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    .line 272
    invoke-direct {v3, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v2

    .line 271
    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/CustomEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 274
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 265
    iget-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->a:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {v0, p1}, Lcom/alipay/android/mini/widget/CustomEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 266
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 225
    iget-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->a:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {v0}, Lcom/alipay/android/mini/widget/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 226
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

.method public final d()V
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->a:Lcom/alipay/android/mini/widget/CustomEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/CustomEditText;->setEnabled(Z)V

    .line 254
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 185
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 186
    invoke-virtual {p0}, Lcom/alipay/android/mini/widget/MiniLabelInput;->a()V

    .line 187
    return-void
.end method
