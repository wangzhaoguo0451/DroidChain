.class public final Lcom/unionpay/mpay/widgets/h;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Landroid/widget/EditText;

.field b:Landroid/widget/ImageView;

.field c:Z

.field d:Lcom/unionpay/mpay/widgets/h$a;

.field private e:Landroid/content/Context;

.field private f:Lccn;

.field private g:Landroid/graphics/Paint;

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:Landroid/view/View$OnClickListener;

.field private j:Landroid/text/TextWatcher;

.field private k:Landroid/view/View$OnFocusChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 10

    const/4 v9, -0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v6, -0x1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/unionpay/mpay/widgets/h;->e:Landroid/content/Context;

    iput-object v1, p0, Lcom/unionpay/mpay/widgets/h;->a:Landroid/widget/EditText;

    iput-object v1, p0, Lcom/unionpay/mpay/widgets/h;->b:Landroid/widget/ImageView;

    iput-boolean v8, p0, Lcom/unionpay/mpay/widgets/h;->c:Z

    iput-object v1, p0, Lcom/unionpay/mpay/widgets/h;->d:Lcom/unionpay/mpay/widgets/h$a;

    iput-object v1, p0, Lcom/unionpay/mpay/widgets/h;->f:Lccn;

    iput-object v1, p0, Lcom/unionpay/mpay/widgets/h;->g:Landroid/graphics/Paint;

    iput-object v1, p0, Lcom/unionpay/mpay/widgets/h;->h:Landroid/graphics/drawable/Drawable;

    new-instance v0, Lceo;

    invoke-direct {v0, p0}, Lceo;-><init>(Lcom/unionpay/mpay/widgets/h;)V

    iput-object v0, p0, Lcom/unionpay/mpay/widgets/h;->i:Landroid/view/View$OnClickListener;

    new-instance v0, Lcep;

    invoke-direct {v0, p0}, Lcep;-><init>(Lcom/unionpay/mpay/widgets/h;)V

    iput-object v0, p0, Lcom/unionpay/mpay/widgets/h;->j:Landroid/text/TextWatcher;

    new-instance v0, Lceq;

    invoke-direct {v0, p0}, Lceq;-><init>(Lcom/unionpay/mpay/widgets/h;)V

    iput-object v0, p0, Lcom/unionpay/mpay/widgets/h;->k:Landroid/view/View$OnFocusChangeListener;

    iput-object p1, p0, Lcom/unionpay/mpay/widgets/h;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/unionpay/mpay/widgets/h;->h:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/h;->e:Landroid/content/Context;

    invoke-static {v0}, Lccn;->a(Landroid/content/Context;)Lccn;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mpay/widgets/h;->f:Lccn;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    sget v2, Lccd;->q:I

    invoke-direct {v0, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sget v2, Lccd;->b:I

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p0, v7}, Lcom/unionpay/mpay/widgets/h;->setBackgroundColor(I)V

    iget-object v3, p0, Lcom/unionpay/mpay/widgets/h;->f:Lccn;

    const/16 v4, 0x3f4

    invoke-virtual {v3, v4, v6, v6}, Lccn;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/unionpay/mpay/widgets/h;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0}, Lcom/unionpay/mpay/widgets/h;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v8}, Lcom/unionpay/mpay/widgets/h;->setFocusable(Z)V

    new-instance v0, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/unionpay/mpay/widgets/h;->e:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unionpay/mpay/widgets/h;->b:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/h;->b:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/unionpay/mpay/widgets/h;->f:Lccn;

    const/16 v4, 0x7d0

    sget v5, Lccd;->o:I

    invoke-virtual {v3, v4, v6, v5}, Lccn;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/h;->b:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/unionpay/mpay/widgets/h;->i:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/h;->b:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/h;->b:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/unionpay/mpay/widgets/h;->b:Landroid/widget/ImageView;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setId(I)V

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/h;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/h;->b:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/h;->e:Landroid/content/Context;

    const/high16 v3, 0x41f0

    invoke-static {v0, v3}, Ld;->a(Landroid/content/Context;F)I

    move-result v0

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xf

    invoke-virtual {v3, v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v0, 0xb

    invoke-virtual {v3, v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/h;->e:Landroid/content/Context;

    const/high16 v4, 0x4080

    invoke-static {v0, v4}, Ld;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/h;->b:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v3}, Lcom/unionpay/mpay/widgets/h;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/h;->h:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/unionpay/mpay/widgets/h;->e:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setId(I)V

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/unionpay/mpay/widgets/h;->e:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/unionpay/mpay/widgets/h;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    sget v4, Lccd;->x:I

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/unionpay/mpay/widgets/h;->e:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/unionpay/mpay/widgets/h;->f:Lccn;

    const/16 v5, 0x3f3

    invoke-virtual {v4, v5, v6, v6}, Lccn;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    sget v5, Lccd;->t:I

    invoke-direct {v4, v9, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v5, Lccd;->g:I

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const/16 v5, 0x10

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xf

    invoke-virtual {v3, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v4, 0x9

    invoke-virtual {v3, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v4, p0, Lcom/unionpay/mpay/widgets/h;->e:Landroid/content/Context;

    const/high16 v5, 0x4080

    invoke-static {v4, v5}, Ld;->a(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0, v0, v3}, Lcom/unionpay/mpay/widgets/h;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    new-instance v3, Landroid/widget/EditText;

    iget-object v4, p0, Lcom/unionpay/mpay/widgets/h;->e:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/unionpay/mpay/widgets/h;->a:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/unionpay/mpay/widgets/h;->a:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->setSingleLine()V

    iget-object v3, p0, Lcom/unionpay/mpay/widgets/h;->a:Landroid/widget/EditText;

    const v4, -0xe2793f

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHintTextColor(I)V

    iget-object v3, p0, Lcom/unionpay/mpay/widgets/h;->a:Landroid/widget/EditText;

    const/high16 v4, 0x4180

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTextSize(F)V

    iget-object v3, p0, Lcom/unionpay/mpay/widgets/h;->a:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/unionpay/mpay/widgets/h;->a:Landroid/widget/EditText;

    const/16 v3, 0x10

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setGravity(I)V

    iget-object v1, p0, Lcom/unionpay/mpay/widgets/h;->a:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/unionpay/mpay/widgets/h;->j:Landroid/text/TextWatcher;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, p0, Lcom/unionpay/mpay/widgets/h;->a:Landroid/widget/EditText;

    div-int/lit8 v3, v2, 0x2

    invoke-virtual {v1, v3, v7, v7, v7}, Landroid/widget/EditText;->setPadding(IIII)V

    iget-object v1, p0, Lcom/unionpay/mpay/widgets/h;->a:Landroid/widget/EditText;

    const v3, -0xffb677

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setTextColor(I)V

    iget-boolean v1, p0, Lcom/unionpay/mpay/widgets/h;->c:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/unionpay/mpay/widgets/h;->a:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/unionpay/mpay/widgets/h;->k:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_0
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    sget v3, Lccd;->s:I

    invoke-direct {v1, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/unionpay/mpay/widgets/h;->b:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getId()I

    move-result v3

    invoke-virtual {v1, v7, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v3, 0xf

    invoke-virtual {v1, v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getId()I

    move-result v0

    invoke-virtual {v1, v8, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :cond_1
    iget-object v0, p0, Lcom/unionpay/mpay/widgets/h;->e:Landroid/content/Context;

    const/high16 v3, 0x4100

    invoke-static {v0, v3}, Ld;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/h;->a:Landroid/widget/EditText;

    invoke-virtual {p0, v0, v1}, Lcom/unionpay/mpay/widgets/h;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/unionpay/mpay/widgets/h;->g:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/h;->g:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/h;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/h;->g:Landroid/graphics/Paint;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/h;->g:Landroid/graphics/Paint;

    const v1, -0x48341c

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    return-void

    :cond_2
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public static synthetic a(Lcom/unionpay/mpay/widgets/h;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/h;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method public static synthetic a(Lcom/unionpay/mpay/widgets/h;Z)V
    .locals 3

    const/4 v2, -0x1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/h;->f:Lccn;

    const/16 v1, 0x3f5

    invoke-virtual {v0, v1, v2, v2}, Lccn;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/unionpay/mpay/widgets/h;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/unionpay/mpay/widgets/h;->f:Lccn;

    const/16 v1, 0x3f4

    invoke-virtual {v0, v1, v2, v2}, Lccn;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/unionpay/mpay/widgets/h;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public static synthetic b(Lcom/unionpay/mpay/widgets/h;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/unionpay/mpay/widgets/h;->a:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/unionpay/mpay/widgets/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/unionpay/mpay/widgets/h;->c:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static synthetic c(Lcom/unionpay/mpay/widgets/h;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/h;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic d(Lcom/unionpay/mpay/widgets/h;)Lcom/unionpay/mpay/widgets/h$a;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/h;->d:Lcom/unionpay/mpay/widgets/h$a;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/unionpay/mpay/widgets/h;->a:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/h;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/h;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/h;->a:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setInputType(I)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/text/InputFilter;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-array v0, v5, [Landroid/text/InputFilter;

    aput-object p1, v0, v4

    iget-object v1, p0, Lcom/unionpay/mpay/widgets/h;->a:Landroid/widget/EditText;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/unionpay/mpay/widgets/h;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getFilters()[Landroid/text/InputFilter;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/unionpay/mpay/widgets/h;->a:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0

    :cond_1
    array-length v2, v1

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [Landroid/text/InputFilter;

    array-length v3, v1

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v1

    invoke-static {v0, v4, v2, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/h;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0
.end method

.method public final a(Landroid/text/TextWatcher;)V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/h;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/h;->a:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/h;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/h;->a:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/h;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/h;->a:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLongClickable(Z)V

    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/h;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/h;->a:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/h;->a:Landroid/widget/EditText;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/unionpay/mpay/widgets/h;->a:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/h;->d:Lcom/unionpay/mpay/widgets/h$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/h;->d:Lcom/unionpay/mpay/widgets/h$a;

    invoke-interface {v0}, Lcom/unionpay/mpay/widgets/h$a;->d()V

    goto :goto_0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/h;->d:Lcom/unionpay/mpay/widgets/h$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/h;->d:Lcom/unionpay/mpay/widgets/h$a;

    invoke-interface {v0}, Lcom/unionpay/mpay/widgets/h$a;->e()V

    :cond_0
    return-void
.end method

.method public final setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/h;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/h;->a:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method
