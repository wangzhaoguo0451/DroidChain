.class public final Lcom/unionpay/mpay/widgets/c;
.super Lcom/unionpay/mpay/widgets/m;


# static fields
.field private static l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Landroid/widget/Spinner;

.field private b:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private m:Landroid/widget/AdapterView$OnItemSelectedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const-string v1, "01"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "02"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "03"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "04"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "05"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "06"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "07"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "99"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sput-object v0, Lcom/unionpay/mpay/widgets/c;->l:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 8

    const/4 v1, 0x0

    const v0, 0x1090008

    const/4 v7, 0x0

    const/4 v6, -0x1

    invoke-direct {p0, p1, p2}, Lcom/unionpay/mpay/widgets/m;-><init>(Landroid/content/Context;Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/unionpay/mpay/widgets/c;->a:Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/unionpay/mpay/widgets/c;->b:Landroid/widget/ArrayAdapter;

    iput v7, p0, Lcom/unionpay/mpay/widgets/c;->c:I

    new-instance v1, Lcel;

    invoke-direct {v1, p0}, Lcel;-><init>(Lcom/unionpay/mpay/widgets/c;)V

    iput-object v1, p0, Lcom/unionpay/mpay/widgets/c;->m:Landroid/widget/AdapterView$OnItemSelectedListener;

    iget-object v1, p0, Lcom/unionpay/mpay/widgets/c;->k:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/unionpay/mpay/widgets/c;->d:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/unionpay/mpay/widgets/c;->a:Landroid/widget/Spinner;

    new-instance v2, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/unionpay/mpay/widgets/c;->d:Landroid/content/Context;

    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0x8

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    sget-object v5, Lccg;->ab:Lccg;

    iget-object v5, v5, Lccg;->t:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v5, Lccg;->ab:Lccg;

    iget-object v5, v5, Lccg;->u:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v5, Lccg;->ab:Lccg;

    iget-object v5, v5, Lccg;->v:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v5, Lccg;->ab:Lccg;

    iget-object v5, v5, Lccg;->w:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v5, Lccg;->ab:Lccg;

    iget-object v5, v5, Lccg;->x:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v5, Lccg;->ab:Lccg;

    iget-object v5, v5, Lccg;->y:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v5, Lccg;->ab:Lccg;

    iget-object v5, v5, Lccg;->z:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v5, Lccg;->ab:Lccg;

    iget-object v5, v5, Lccg;->A:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {v2, v3, v0, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v2, p0, Lcom/unionpay/mpay/widgets/c;->b:Landroid/widget/ArrayAdapter;

    iget-boolean v2, p0, Lcom/unionpay/mpay/widgets/c;->h:Z

    if-eqz v2, :cond_1

    :goto_0
    iget-object v2, p0, Lcom/unionpay/mpay/widgets/c;->b:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/c;->a:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/unionpay/mpay/widgets/c;->b:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/c;->d:Landroid/content/Context;

    invoke-static {v0}, Lccn;->a(Landroid/content/Context;)Lccn;

    move-result-object v0

    const/16 v2, 0x7df

    invoke-virtual {v0, v2, v6, v6}, Lccn;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v2, p0, Lcom/unionpay/mpay/widgets/c;->a:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/c;->a:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/unionpay/mpay/widgets/c;->m:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-boolean v0, p0, Lcom/unionpay/mpay/widgets/c;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/c;->a:Landroid/widget/Spinner;

    invoke-virtual {v0, v7}, Landroid/widget/Spinner;->setEnabled(Z)V

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/c;->a:Landroid/widget/Spinner;

    invoke-virtual {v0, v7}, Landroid/widget/Spinner;->setClickable(Z)V

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/c;->a:Landroid/widget/Spinner;

    invoke-virtual {v0, v7}, Landroid/widget/Spinner;->setFocusable(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/unionpay/mpay/widgets/c;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unionpay/mpay/widgets/c;->b(Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/unionpay/mpay/widgets/c;->a:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setSelection(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    sget v2, Lccd;->t:I

    invoke-direct {v0, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lcom/unionpay/mpay/widgets/c;->a:Landroid/widget/Spinner;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1
    const v0, 0x1090009

    goto :goto_0
.end method

.method public static synthetic a(Lcom/unionpay/mpay/widgets/c;I)I
    .locals 0

    iput p1, p0, Lcom/unionpay/mpay/widgets/c;->c:I

    return p1
.end method

.method public static synthetic a(Lcom/unionpay/mpay/widgets/c;)Landroid/widget/Spinner;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/c;->a:Landroid/widget/Spinner;

    return-object v0
.end method

.method public static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p0
.end method

.method private static b(Ljava/lang/String;)I
    .locals 3

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    move v1, v2

    :goto_0
    sget-object v0, Lcom/unionpay/mpay/widgets/c;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    sget-object v0, Lcom/unionpay/mpay/widgets/c;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v1

    :cond_0
    return v2

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 3

    const-string v0, ""

    iget v1, p0, Lcom/unionpay/mpay/widgets/c;->c:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/unionpay/mpay/widgets/c;->c:I

    sget-object v2, Lcom/unionpay/mpay/widgets/c;->l:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v1, v2, :cond_0

    sget-object v0, Lcom/unionpay/mpay/widgets/c;->l:Ljava/util/ArrayList;

    iget v1, p0, Lcom/unionpay/mpay/widgets/c;->c:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
