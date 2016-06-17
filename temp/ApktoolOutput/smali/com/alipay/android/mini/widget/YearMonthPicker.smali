.class public Lcom/alipay/android/mini/widget/YearMonthPicker;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/TextView;

.field public c:I

.field public d:Landroid/os/Handler;

.field public e:I

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/Button;

.field private j:I

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->d:Landroid/os/Handler;

    .line 39
    iput-boolean v1, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->k:Z

    .line 42
    iput-boolean v1, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->l:Z

    .line 43
    iput-boolean v1, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->m:Z

    .line 44
    iput-boolean v1, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->n:Z

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->d:Landroid/os/Handler;

    .line 39
    iput-boolean v1, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->k:Z

    .line 42
    iput-boolean v1, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->l:Z

    .line 43
    iput-boolean v1, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->m:Z

    .line 44
    iput-boolean v1, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->n:Z

    .line 54
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 55
    const-string v1, "mini_year_month_picker"

    invoke-static {v1}, Lg;->f(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    .line 54
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 56
    return-void
.end method

.method private static a(I)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 308
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 309
    const/16 v1, 0x9

    if-le p0, v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Landroid/widget/Button;ZZ)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 166
    new-instance v0, Lxy;

    invoke-direct {v0, p0, p3, p2}, Lxy;-><init>(Lcom/alipay/android/mini/widget/YearMonthPicker;ZZ)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    new-instance v0, Lxz;

    invoke-direct {v0, p0, p2, p3}, Lxz;-><init>(Lcom/alipay/android/mini/widget/YearMonthPicker;ZZ)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 191
    new-instance v0, Lya;

    invoke-direct {v0, p0}, Lya;-><init>(Lcom/alipay/android/mini/widget/YearMonthPicker;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 205
    return-void
.end method

.method public static synthetic a(Lcom/alipay/android/mini/widget/YearMonthPicker;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->m:Z

    return-void
.end method

.method public static synthetic a(Lcom/alipay/android/mini/widget/YearMonthPicker;)Z
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->k:Z

    return v0
.end method

.method public static synthetic b(Lcom/alipay/android/mini/widget/YearMonthPicker;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->n:Z

    return-void
.end method

.method public static synthetic b(Lcom/alipay/android/mini/widget/YearMonthPicker;)Z
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->m:Z

    return v0
.end method

.method public static synthetic c(Lcom/alipay/android/mini/widget/YearMonthPicker;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->k:Z

    return-void
.end method

.method public static synthetic c(Lcom/alipay/android/mini/widget/YearMonthPicker;)Z
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->n:Z

    return v0
.end method

.method public static synthetic d(Lcom/alipay/android/mini/widget/YearMonthPicker;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->l:Z

    return-void
.end method

.method public static synthetic d(Lcom/alipay/android/mini/widget/YearMonthPicker;)Z
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->l:Z

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 222
    add-int/lit8 v0, v0, 0x1

    .line 223
    iget v1, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->j:I

    if-le v0, v1, :cond_0

    .line 224
    iget v0, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->c:I

    .line 226
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->a:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    return-void
.end method

.method public final a(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 128
    iget v0, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->j:I

    iget v1, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->c:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 129
    iget-object v1, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->a:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v0, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->b:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/alipay/android/mini/widget/YearMonthPicker;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 213
    if-eqz p1, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/alipay/android/mini/widget/YearMonthPicker;->a()V

    .line 218
    :goto_0
    return-void

    .line 216
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/mini/widget/YearMonthPicker;->b()V

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 231
    add-int/lit8 v0, v0, 0x1

    .line 232
    const/16 v1, 0xc

    if-le v0, v1, :cond_0

    .line 233
    const/4 v0, 0x1

    .line 235
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->b:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/alipay/android/mini/widget/YearMonthPicker;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    return-void
.end method

.method public final b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 244
    if-eqz p1, :cond_0

    .line 245
    invoke-virtual {p0}, Lcom/alipay/android/mini/widget/YearMonthPicker;->c()V

    .line 249
    :goto_0
    return-void

    .line 247
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/mini/widget/YearMonthPicker;->d()V

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 253
    add-int/lit8 v0, v0, -0x1

    .line 254
    iget v1, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->c:I

    if-ge v0, v1, :cond_0

    .line 255
    iget v0, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->j:I

    .line 257
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->a:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    return-void
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 262
    add-int/lit8 v0, v0, -0x1

    .line 263
    if-gtz v0, :cond_0

    .line 264
    const/16 v0, 0xc

    .line 267
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->b:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/alipay/android/mini/widget/YearMonthPicker;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 60
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 62
    const-string v0, "year_up_btn"

    invoke-static {v0}, Lg;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/mini/widget/YearMonthPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->f:Landroid/widget/Button;

    .line 63
    const-string v0, "year_down_btn"

    invoke-static {v0}, Lg;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/mini/widget/YearMonthPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->g:Landroid/widget/Button;

    .line 64
    const-string v0, "year_text"

    invoke-static {v0}, Lg;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/mini/widget/YearMonthPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->a:Landroid/widget/TextView;

    .line 66
    const-string v0, "month_up_btn"

    invoke-static {v0}, Lg;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/mini/widget/YearMonthPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->h:Landroid/widget/Button;

    .line 67
    const-string v0, "month_down_btn"

    invoke-static {v0}, Lg;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/mini/widget/YearMonthPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->i:Landroid/widget/Button;

    .line 68
    const-string v0, "month_text"

    invoke-static {v0}, Lg;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/mini/widget/YearMonthPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->b:Landroid/widget/TextView;

    .line 70
    iget-object v0, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->f:Landroid/widget/Button;

    invoke-direct {p0, v0, v1, v1}, Lcom/alipay/android/mini/widget/YearMonthPicker;->a(Landroid/widget/Button;ZZ)V

    .line 71
    iget-object v0, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->g:Landroid/widget/Button;

    invoke-direct {p0, v0, v1, v2}, Lcom/alipay/android/mini/widget/YearMonthPicker;->a(Landroid/widget/Button;ZZ)V

    .line 72
    iget-object v0, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->h:Landroid/widget/Button;

    invoke-direct {p0, v0, v2, v1}, Lcom/alipay/android/mini/widget/YearMonthPicker;->a(Landroid/widget/Button;ZZ)V

    .line 73
    iget-object v0, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->i:Landroid/widget/Button;

    invoke-direct {p0, v0, v2, v2}, Lcom/alipay/android/mini/widget/YearMonthPicker;->a(Landroid/widget/Button;ZZ)V

    .line 76
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->e:I

    iget v0, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->e:I

    div-int/lit8 v0, v0, 0x64

    mul-int/lit8 v0, v0, 0x64

    add-int/lit8 v1, v0, -0x64

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->c:I

    add-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/alipay/android/mini/widget/YearMonthPicker;->j:I

    .line 77
    return-void
.end method
