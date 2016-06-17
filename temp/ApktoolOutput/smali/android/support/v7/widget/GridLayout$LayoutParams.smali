.class public Landroid/support/v7/widget/GridLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "GridLayout.java"


# static fields
.field private static final c:I

.field private static final d:I

.field private static final e:I

.field private static final f:I

.field private static final g:I

.field private static final h:I

.field private static final i:I

.field private static final j:I

.field private static final k:I

.field private static final l:I

.field private static final m:I

.field private static final n:I

.field private static final o:I


# instance fields
.field public a:Ltg;

.field public b:Ltg;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1878
    new-instance v0, Ltd;

    const/high16 v1, -0x8000

    const v2, -0x7fffffff

    invoke-direct {v0, v1, v2}, Ltd;-><init>(II)V

    .line 1879
    invoke-virtual {v0}, Ltd;->a()I

    move-result v0

    sput v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->c:I

    .line 1883
    sget v0, Landroid/support/v7/gridlayout/R$styleable;->GridLayout_Layout_android_layout_margin:I

    sput v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->d:I

    .line 1884
    sget v0, Landroid/support/v7/gridlayout/R$styleable;->GridLayout_Layout_android_layout_marginLeft:I

    sput v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->e:I

    .line 1885
    sget v0, Landroid/support/v7/gridlayout/R$styleable;->GridLayout_Layout_android_layout_marginTop:I

    sput v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->f:I

    .line 1886
    sget v0, Landroid/support/v7/gridlayout/R$styleable;->GridLayout_Layout_android_layout_marginRight:I

    sput v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->g:I

    .line 1887
    sget v0, Landroid/support/v7/gridlayout/R$styleable;->GridLayout_Layout_android_layout_marginBottom:I

    sput v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->h:I

    .line 1889
    sget v0, Landroid/support/v7/gridlayout/R$styleable;->GridLayout_Layout_layout_column:I

    sput v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->i:I

    .line 1890
    sget v0, Landroid/support/v7/gridlayout/R$styleable;->GridLayout_Layout_layout_columnSpan:I

    sput v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->j:I

    .line 1891
    sget v0, Landroid/support/v7/gridlayout/R$styleable;->GridLayout_Layout_layout_columnWeight:I

    sput v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->k:I

    .line 1893
    sget v0, Landroid/support/v7/gridlayout/R$styleable;->GridLayout_Layout_layout_row:I

    sput v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->l:I

    .line 1894
    sget v0, Landroid/support/v7/gridlayout/R$styleable;->GridLayout_Layout_layout_rowSpan:I

    sput v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->m:I

    .line 1895
    sget v0, Landroid/support/v7/gridlayout/R$styleable;->GridLayout_Layout_layout_rowWeight:I

    sput v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->n:I

    .line 1897
    sget v0, Landroid/support/v7/gridlayout/R$styleable;->GridLayout_Layout_layout_gravity:I

    sput v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->o:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 1959
    sget-object v0, Ltg;->a:Ltg;

    sget-object v1, Ltg;->a:Ltg;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/support/v7/widget/GridLayout$LayoutParams;-><init>(Ltg;Ltg;B)V

    .line 1960
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 2000
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1913
    sget-object v0, Ltg;->a:Ltg;

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->a:Ltg;

    .line 1927
    sget-object v0, Ltg;->a:Ltg;

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->b:Ltg;

    .line 2001
    sget-object v0, Landroid/support/v7/gridlayout/R$styleable;->GridLayout_Layout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    :try_start_0
    sget v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->d:I

    const/high16 v2, -0x8000

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    sget v2, Landroid/support/v7/widget/GridLayout$LayoutParams;->e:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->leftMargin:I

    sget v2, Landroid/support/v7/widget/GridLayout$LayoutParams;->f:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->topMargin:I

    sget v2, Landroid/support/v7/widget/GridLayout$LayoutParams;->g:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->rightMargin:I

    sget v2, Landroid/support/v7/widget/GridLayout$LayoutParams;->h:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->bottomMargin:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 2002
    sget-object v0, Landroid/support/v7/gridlayout/R$styleable;->GridLayout_Layout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    :try_start_1
    sget v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->o:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    sget v2, Landroid/support/v7/widget/GridLayout$LayoutParams;->i:I

    const/high16 v3, -0x8000

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    sget v3, Landroid/support/v7/widget/GridLayout$LayoutParams;->j:I

    sget v4, Landroid/support/v7/widget/GridLayout$LayoutParams;->c:I

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    sget v4, Landroid/support/v7/widget/GridLayout$LayoutParams;->k:I

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    const/4 v5, 0x1

    invoke-static {v0, v5}, Landroid/support/v7/widget/GridLayout;->a(IZ)Lsy;

    move-result-object v5

    invoke-static {v2, v3, v5, v4}, Landroid/support/v7/widget/GridLayout;->a(IILsy;F)Ltg;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->b:Ltg;

    sget v2, Landroid/support/v7/widget/GridLayout$LayoutParams;->l:I

    const/high16 v3, -0x8000

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    sget v3, Landroid/support/v7/widget/GridLayout$LayoutParams;->m:I

    sget v4, Landroid/support/v7/widget/GridLayout$LayoutParams;->c:I

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    sget v4, Landroid/support/v7/widget/GridLayout$LayoutParams;->n:I

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    const/4 v5, 0x0

    invoke-static {v0, v5}, Landroid/support/v7/widget/GridLayout;->a(IZ)Lsy;

    move-result-object v0

    invoke-static {v2, v3, v0, v4}, Landroid/support/v7/widget/GridLayout;->a(IILsy;F)Ltg;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->a:Ltg;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    .line 2001
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    .line 2002
    :catchall_1
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter

    .prologue
    .line 1968
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1913
    sget-object v0, Ltg;->a:Ltg;

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->a:Ltg;

    .line 1927
    sget-object v0, Ltg;->a:Ltg;

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->b:Ltg;

    .line 1969
    return-void
.end method

.method private constructor <init>(Ltg;Ltg;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x2

    const/high16 v1, -0x8000

    .line 1935
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1913
    sget-object v0, Ltg;->a:Ltg;

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->a:Ltg;

    .line 1927
    sget-object v0, Ltg;->a:Ltg;

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->b:Ltg;

    .line 1936
    invoke-virtual {p0, v1, v1, v1, v1}, Landroid/support/v7/widget/GridLayout$LayoutParams;->setMargins(IIII)V

    .line 1937
    iput-object p1, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->a:Ltg;

    .line 1938
    iput-object p2, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->b:Ltg;

    .line 1939
    return-void
.end method

.method private constructor <init>(Ltg;Ltg;B)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1950
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/GridLayout$LayoutParams;-><init>(Ltg;Ltg;)V

    .line 1953
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2079
    if-ne p0, p1, :cond_1

    .line 2087
    :cond_0
    :goto_0
    return v0

    .line 2080
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 2082
    :cond_3
    check-cast p1, Landroid/support/v7/widget/GridLayout$LayoutParams;

    .line 2084
    iget-object v2, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->b:Ltg;

    iget-object v3, p1, Landroid/support/v7/widget/GridLayout$LayoutParams;->b:Ltg;

    invoke-virtual {v2, v3}, Ltg;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    .line 2085
    :cond_4
    iget-object v2, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->a:Ltg;

    iget-object v3, p1, Landroid/support/v7/widget/GridLayout$LayoutParams;->a:Ltg;

    invoke-virtual {v2, v3}, Ltg;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 2092
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->a:Ltg;

    invoke-virtual {v0}, Ltg;->hashCode()I

    move-result v0

    .line 2093
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->b:Ltg;

    invoke-virtual {v1}, Ltg;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 2094
    return v0
.end method

.method protected setBaseAttributes(Landroid/content/res/TypedArray;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x2

    .line 2065
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->width:I

    .line 2066
    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->height:I

    .line 2067
    return-void
.end method
