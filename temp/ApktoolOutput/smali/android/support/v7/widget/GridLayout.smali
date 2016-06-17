.class public Landroid/support/v7/widget/GridLayout;
.super Landroid/view/ViewGroup;
.source "GridLayout.java"


# static fields
.field private static A:Lsy;

.field private static B:Lsy;

.field private static C:Lsy;

.field public static final b:Lsy;

.field public static final c:Lsy;

.field public static final d:Lsy;

.field public static final e:Lsy;

.field private static f:Landroid/util/Printer;

.field private static g:Landroid/util/Printer;

.field private static final h:I

.field private static final i:I

.field private static final j:I

.field private static final k:I

.field private static final l:I

.field private static final m:I

.field private static final n:I

.field private static final v:Lsy;

.field private static final w:Lsy;

.field private static x:Lsy;

.field private static y:Lsy;

.field private static z:Lsy;


# instance fields
.field public a:Landroid/util/Printer;

.field private o:Lta;

.field private p:Lta;

.field private q:I

.field private r:Z

.field private s:I

.field private t:I

.field private u:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 222
    new-instance v0, Landroid/util/LogPrinter;

    const/4 v1, 0x3

    const-class v2, Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;)V

    sput-object v0, Landroid/support/v7/widget/GridLayout;->f:Landroid/util/Printer;

    .line 223
    new-instance v0, Lsp;

    invoke-direct {v0}, Lsp;-><init>()V

    sput-object v0, Landroid/support/v7/widget/GridLayout;->g:Landroid/util/Printer;

    .line 239
    sget v0, Landroid/support/v7/gridlayout/R$styleable;->GridLayout_orientation:I

    sput v0, Landroid/support/v7/widget/GridLayout;->h:I

    .line 240
    sget v0, Landroid/support/v7/gridlayout/R$styleable;->GridLayout_rowCount:I

    sput v0, Landroid/support/v7/widget/GridLayout;->i:I

    .line 241
    sget v0, Landroid/support/v7/gridlayout/R$styleable;->GridLayout_columnCount:I

    sput v0, Landroid/support/v7/widget/GridLayout;->j:I

    .line 242
    sget v0, Landroid/support/v7/gridlayout/R$styleable;->GridLayout_useDefaultMargins:I

    sput v0, Landroid/support/v7/widget/GridLayout;->k:I

    .line 243
    sget v0, Landroid/support/v7/gridlayout/R$styleable;->GridLayout_alignmentMode:I

    sput v0, Landroid/support/v7/widget/GridLayout;->l:I

    .line 244
    sget v0, Landroid/support/v7/gridlayout/R$styleable;->GridLayout_rowOrderPreserved:I

    sput v0, Landroid/support/v7/widget/GridLayout;->m:I

    .line 245
    sget v0, Landroid/support/v7/gridlayout/R$styleable;->GridLayout_columnOrderPreserved:I

    sput v0, Landroid/support/v7/widget/GridLayout;->n:I

    .line 2678
    new-instance v0, Lsq;

    invoke-direct {v0}, Lsq;-><init>()V

    sput-object v0, Landroid/support/v7/widget/GridLayout;->b:Lsy;

    .line 2699
    new-instance v0, Lsr;

    invoke-direct {v0}, Lsr;-><init>()V

    sput-object v0, Landroid/support/v7/widget/GridLayout;->v:Lsy;

    .line 2720
    new-instance v0, Lss;

    invoke-direct {v0}, Lss;-><init>()V

    sput-object v0, Landroid/support/v7/widget/GridLayout;->w:Lsy;

    .line 2741
    sget-object v0, Landroid/support/v7/widget/GridLayout;->v:Lsy;

    sput-object v0, Landroid/support/v7/widget/GridLayout;->x:Lsy;

    .line 2747
    sget-object v0, Landroid/support/v7/widget/GridLayout;->w:Lsy;

    sput-object v0, Landroid/support/v7/widget/GridLayout;->y:Lsy;

    .line 2753
    sget-object v0, Landroid/support/v7/widget/GridLayout;->v:Lsy;

    sput-object v0, Landroid/support/v7/widget/GridLayout;->c:Lsy;

    .line 2759
    sget-object v0, Landroid/support/v7/widget/GridLayout;->w:Lsy;

    sput-object v0, Landroid/support/v7/widget/GridLayout;->z:Lsy;

    .line 2788
    sget-object v0, Landroid/support/v7/widget/GridLayout;->c:Lsy;

    sget-object v1, Landroid/support/v7/widget/GridLayout;->z:Lsy;

    invoke-static {v0, v1}, Landroid/support/v7/widget/GridLayout;->a(Lsy;Lsy;)Lsy;

    move-result-object v0

    sput-object v0, Landroid/support/v7/widget/GridLayout;->A:Lsy;

    .line 2794
    sget-object v0, Landroid/support/v7/widget/GridLayout;->z:Lsy;

    sget-object v1, Landroid/support/v7/widget/GridLayout;->c:Lsy;

    invoke-static {v0, v1}, Landroid/support/v7/widget/GridLayout;->a(Lsy;Lsy;)Lsy;

    move-result-object v0

    sput-object v0, Landroid/support/v7/widget/GridLayout;->B:Lsy;

    .line 2801
    new-instance v0, Lsu;

    invoke-direct {v0}, Lsu;-><init>()V

    sput-object v0, Landroid/support/v7/widget/GridLayout;->C:Lsy;

    .line 2825
    new-instance v0, Lsv;

    invoke-direct {v0}, Lsv;-><init>()V

    sput-object v0, Landroid/support/v7/widget/GridLayout;->d:Lsy;

    .line 2886
    new-instance v0, Lsx;

    invoke-direct {v0}, Lsx;-><init>()V

    sput-object v0, Landroid/support/v7/widget/GridLayout;->e:Lsy;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 284
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 285
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 264
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 249
    new-instance v0, Lta;

    invoke-direct {v0, p0, v2, v1}, Lta;-><init>(Landroid/support/v7/widget/GridLayout;ZB)V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout;->o:Lta;

    .line 250
    new-instance v0, Lta;

    invoke-direct {v0, p0, v1, v1}, Lta;-><init>(Landroid/support/v7/widget/GridLayout;ZB)V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout;->p:Lta;

    .line 251
    iput v1, p0, Landroid/support/v7/widget/GridLayout;->q:I

    .line 252
    iput-boolean v1, p0, Landroid/support/v7/widget/GridLayout;->r:Z

    .line 253
    iput v2, p0, Landroid/support/v7/widget/GridLayout;->s:I

    .line 255
    iput v1, p0, Landroid/support/v7/widget/GridLayout;->u:I

    .line 256
    sget-object v0, Landroid/support/v7/widget/GridLayout;->f:Landroid/util/Printer;

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout;->a:Landroid/util/Printer;

    .line 265
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/gridlayout/R$dimen;->default_gap:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/GridLayout;->t:I

    .line 266
    sget-object v0, Landroid/support/v7/gridlayout/R$styleable;->GridLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 268
    :try_start_0
    sget v0, Landroid/support/v7/widget/GridLayout;->i:I

    const/high16 v2, -0x8000

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/GridLayout;->setRowCount(I)V

    .line 269
    sget v0, Landroid/support/v7/widget/GridLayout;->j:I

    const/high16 v2, -0x8000

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/GridLayout;->setColumnCount(I)V

    .line 270
    sget v0, Landroid/support/v7/widget/GridLayout;->h:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/GridLayout;->setOrientation(I)V

    .line 271
    sget v0, Landroid/support/v7/widget/GridLayout;->k:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/GridLayout;->setUseDefaultMargins(Z)V

    .line 272
    sget v0, Landroid/support/v7/widget/GridLayout;->l:I

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/GridLayout;->setAlignmentMode(I)V

    .line 273
    sget v0, Landroid/support/v7/widget/GridLayout;->m:I

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/GridLayout;->setRowOrderPreserved(Z)V

    .line 274
    sget v0, Landroid/support/v7/widget/GridLayout;->n:I

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/GridLayout;->setColumnOrderPreserved(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 277
    return-void

    .line 276
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method private static a(II)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 927
    add-int v0, p0, p1

    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0
.end method

.method public static a([I)I
    .locals 4
    .parameter

    .prologue
    .line 599
    const/4 v1, -0x1

    .line 600
    const/4 v0, 0x0

    array-length v2, p0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 601
    aget v3, p0, v0

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 600
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 603
    :cond_0
    return v1
.end method

.method public static a(Landroid/view/View;)Landroid/support/v7/widget/GridLayout$LayoutParams;
    .locals 1
    .parameter

    .prologue
    .line 798
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/GridLayout$LayoutParams;

    return-object v0
.end method

.method static a(IZ)Lsy;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 615
    if-eqz p1, :cond_0

    const/4 v0, 0x7

    move v1, v0

    .line 616
    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 617
    :goto_1
    and-int/2addr v1, p0

    shr-int v0, v1, v0

    .line 618
    sparse-switch v0, :sswitch_data_0

    .line 632
    sget-object v0, Landroid/support/v7/widget/GridLayout;->b:Lsy;

    :goto_2
    return-object v0

    .line 615
    :cond_0
    const/16 v0, 0x70

    move v1, v0

    goto :goto_0

    .line 616
    :cond_1
    const/4 v0, 0x4

    goto :goto_1

    .line 620
    :sswitch_0
    if-eqz p1, :cond_2

    sget-object v0, Landroid/support/v7/widget/GridLayout;->A:Lsy;

    goto :goto_2

    :cond_2
    sget-object v0, Landroid/support/v7/widget/GridLayout;->x:Lsy;

    goto :goto_2

    .line 622
    :sswitch_1
    if-eqz p1, :cond_3

    sget-object v0, Landroid/support/v7/widget/GridLayout;->B:Lsy;

    goto :goto_2

    :cond_3
    sget-object v0, Landroid/support/v7/widget/GridLayout;->y:Lsy;

    goto :goto_2

    .line 624
    :sswitch_2
    sget-object v0, Landroid/support/v7/widget/GridLayout;->e:Lsy;

    goto :goto_2

    .line 626
    :sswitch_3
    sget-object v0, Landroid/support/v7/widget/GridLayout;->C:Lsy;

    goto :goto_2

    .line 628
    :sswitch_4
    sget-object v0, Landroid/support/v7/widget/GridLayout;->c:Lsy;

    goto :goto_2

    .line 630
    :sswitch_5
    sget-object v0, Landroid/support/v7/widget/GridLayout;->z:Lsy;

    goto :goto_2

    .line 618
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x3 -> :sswitch_0
        0x5 -> :sswitch_1
        0x7 -> :sswitch_2
        0x800003 -> :sswitch_4
        0x800005 -> :sswitch_5
    .end sparse-switch
.end method

.method private static a(Lsy;Lsy;)Lsy;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2762
    new-instance v0, Lst;

    invoke-direct {v0, p0, p1}, Lst;-><init>(Lsy;Lsy;)V

    return-object v0
.end method

.method public static a()Ltg;
    .locals 4

    .prologue
    .line 2607
    const/high16 v0, -0x8000

    sget-object v1, Landroid/support/v7/widget/GridLayout;->b:Lsy;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Landroid/support/v7/widget/GridLayout;->a(IILsy;F)Ltg;

    move-result-object v0

    return-object v0
.end method

.method public static a(IILsy;F)Ltg;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 2511
    new-instance v0, Ltg;

    const/high16 v1, -0x8000

    if-eq p0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Ltg;-><init>(ZIILsy;FB)V

    return-object v0

    :cond_0
    move v1, v6

    goto :goto_0
.end method

.method private a(IIZ)V
    .locals 13
    .parameter
    .parameter
    .parameter

    .prologue
    .line 901
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result v12

    move v11, v0

    :goto_0
    if-ge v11, v12, :cond_6

    .line 902
    invoke-virtual {p0, v11}, Landroid/support/v7/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 903
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    .line 904
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/GridLayout$LayoutParams;

    .line 905
    if-eqz p3, :cond_1

    .line 906
    iget v4, v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->width:I

    iget v5, v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->height:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/GridLayout;->a(Landroid/view/View;IIII)V

    .line 901
    :cond_0
    :goto_1
    add-int/lit8 v0, v11, 0x1

    move v11, v0

    goto :goto_0

    .line 908
    :cond_1
    iget v2, p0, Landroid/support/v7/widget/GridLayout;->q:I

    if-nez v2, :cond_2

    const/4 v2, 0x1

    move v3, v2

    .line 909
    :goto_2
    if-eqz v3, :cond_3

    iget-object v2, v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->b:Ltg;

    .line 910
    :goto_3
    invoke-virtual {v2, v3}, Ltg;->a(Z)Lsy;

    move-result-object v4

    sget-object v5, Landroid/support/v7/widget/GridLayout;->e:Lsy;

    if-ne v4, v5, :cond_0

    .line 911
    iget-object v4, v2, Ltg;->c:Ltd;

    .line 912
    if-eqz v3, :cond_4

    iget-object v2, p0, Landroid/support/v7/widget/GridLayout;->o:Lta;

    .line 913
    :goto_4
    invoke-virtual {v2}, Lta;->c()[I

    move-result-object v2

    .line 914
    iget v5, v4, Ltd;->b:I

    aget v5, v2, v5

    iget v4, v4, Ltd;->a:I

    aget v2, v2, v4

    sub-int v2, v5, v2

    .line 915
    invoke-virtual {p0, v1, v3}, Landroid/support/v7/widget/GridLayout;->a(Landroid/view/View;Z)I

    move-result v4

    sub-int v4, v2, v4

    .line 916
    if-eqz v3, :cond_5

    .line 917
    iget v5, v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->height:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/GridLayout;->a(Landroid/view/View;IIII)V

    goto :goto_1

    .line 908
    :cond_2
    const/4 v2, 0x0

    move v3, v2

    goto :goto_2

    .line 909
    :cond_3
    iget-object v2, v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->a:Ltg;

    goto :goto_3

    .line 912
    :cond_4
    iget-object v2, p0, Landroid/support/v7/widget/GridLayout;->p:Lta;

    goto :goto_4

    .line 919
    :cond_5
    iget v9, v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->width:I

    move-object v5, p0

    move-object v6, v1

    move v7, p1

    move v8, p2

    move v10, v4

    invoke-direct/range {v5 .. v10}, Landroid/support/v7/widget/GridLayout;->a(Landroid/view/View;IIII)V

    goto :goto_1

    .line 924
    :cond_6
    return-void
.end method

.method private static a(Landroid/support/v7/widget/GridLayout$LayoutParams;IIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 708
    new-instance v0, Ltd;

    add-int v1, p1, p2

    invoke-direct {v0, p1, v1}, Ltd;-><init>(II)V

    iget-object v1, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->a:Ltg;

    invoke-virtual {v1, v0}, Ltg;->a(Ltd;)Ltg;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->a:Ltg;

    .line 709
    new-instance v0, Ltd;

    add-int v1, p3, p4

    invoke-direct {v0, p3, v1}, Ltd;-><init>(II)V

    iget-object v1, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->b:Ltg;

    invoke-virtual {v1, v0}, Ltg;->a(Ltd;)Ltg;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->b:Ltg;

    .line 710
    return-void
.end method

.method private a(Landroid/support/v7/widget/GridLayout$LayoutParams;Z)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/high16 v4, -0x8000

    .line 806
    if-eqz p2, :cond_3

    const-string v0, "column"

    move-object v1, v0

    .line 807
    :goto_0
    if-eqz p2, :cond_4

    iget-object v0, p1, Landroid/support/v7/widget/GridLayout$LayoutParams;->b:Ltg;

    .line 808
    :goto_1
    iget-object v2, v0, Ltg;->c:Ltd;

    .line 809
    iget v0, v2, Ltd;->a:I

    if-eq v0, v4, :cond_0

    iget v0, v2, Ltd;->a:I

    if-gez v0, :cond_0

    .line 810
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " indices must be positive"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/GridLayout;->b(Ljava/lang/String;)V

    .line 812
    :cond_0
    if-eqz p2, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->o:Lta;

    .line 813
    :goto_2
    iget v0, v0, Lta;->b:I

    .line 814
    if-eq v0, v4, :cond_2

    .line 815
    iget v3, v2, Ltd;->b:I

    if-le v3, v0, :cond_1

    .line 816
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " indices (start + span) mustn\'t exceed the "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " count"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/GridLayout;->b(Ljava/lang/String;)V

    .line 819
    :cond_1
    invoke-virtual {v2}, Ltd;->a()I

    move-result v2

    if-le v2, v0, :cond_2

    .line 820
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " span mustn\'t exceed the "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " count"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/GridLayout;->b(Ljava/lang/String;)V

    .line 823
    :cond_2
    return-void

    .line 806
    :cond_3
    const-string v0, "row"

    move-object v1, v0

    goto :goto_0

    .line 807
    :cond_4
    iget-object v0, p1, Landroid/support/v7/widget/GridLayout$LayoutParams;->a:Ltg;

    goto :goto_1

    .line 812
    :cond_5
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->p:Lta;

    goto :goto_2
.end method

.method private a(Landroid/view/View;IIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 892
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/GridLayout;->a(Landroid/view/View;Z)I

    move-result v0

    invoke-static {p2, v0, p4}, Landroid/support/v7/widget/GridLayout;->getChildMeasureSpec(III)I

    move-result v0

    .line 894
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/support/v7/widget/GridLayout;->a(Landroid/view/View;Z)I

    move-result v1

    invoke-static {p3, v1, p5}, Landroid/support/v7/widget/GridLayout;->getChildMeasureSpec(III)I

    move-result v1

    .line 896
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 897
    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 159
    invoke-static {p0}, Landroid/support/v7/widget/GridLayout;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static a(I)Z
    .locals 1
    .parameter

    .prologue
    .line 2909
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)[TT;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 608
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 609
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 610
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 611
    return-object v0
.end method

.method public static b(Landroid/view/View;Z)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 970
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_0
.end method

.method private b(Landroid/view/View;ZZ)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 674
    iget v0, p0, Landroid/support/v7/widget/GridLayout;->s:I

    if-ne v0, v2, :cond_0

    .line 675
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/GridLayout;->a(Landroid/view/View;ZZ)I

    move-result v0

    .line 682
    :goto_0
    return v0

    .line 677
    :cond_0
    if-eqz p2, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->o:Lta;

    .line 678
    :goto_1
    if-eqz p3, :cond_4

    iget-object v1, v0, Lta;->c:[I

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lta;->a()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [I

    iput-object v1, v0, Lta;->c:[I

    :cond_1
    iget-boolean v1, v0, Lta;->d:Z

    if-nez v1, :cond_2

    invoke-virtual {v0, v2}, Lta;->b(Z)V

    iput-boolean v2, v0, Lta;->d:Z

    :cond_2
    iget-object v0, v0, Lta;->c:[I

    move-object v1, v0

    .line 679
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/GridLayout$LayoutParams;

    .line 680
    if-eqz p2, :cond_7

    iget-object v0, v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->b:Ltg;

    .line 681
    :goto_3
    if-eqz p3, :cond_8

    iget-object v0, v0, Ltg;->c:Ltd;

    iget v0, v0, Ltd;->a:I

    .line 682
    :goto_4
    aget v0, v1, v0

    goto :goto_0

    .line 677
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->p:Lta;

    goto :goto_1

    .line 678
    :cond_4
    iget-object v1, v0, Lta;->e:[I

    if-nez v1, :cond_5

    invoke-virtual {v0}, Lta;->a()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [I

    iput-object v1, v0, Lta;->e:[I

    :cond_5
    iget-boolean v1, v0, Lta;->f:Z

    if-nez v1, :cond_6

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lta;->b(Z)V

    iput-boolean v2, v0, Lta;->f:Z

    :cond_6
    iget-object v0, v0, Lta;->e:[I

    move-object v1, v0

    goto :goto_2

    .line 680
    :cond_7
    iget-object v0, v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->a:Ltg;

    goto :goto_3

    .line 681
    :cond_8
    iget-object v0, v0, Ltg;->c:Ltd;

    iget v0, v0, Ltd;->b:I

    goto :goto_4
.end method

.method private static b(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 802
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 670
    invoke-static {p0}, Lgs;->h(Landroid/view/View;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 781
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/GridLayout;->u:I

    .line 782
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->o:Lta;

    invoke-virtual {v0}, Lta;->d()V

    .line 783
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->p:Lta;

    invoke-virtual {v0}, Lta;->d()V

    .line 785
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->d()V

    .line 786
    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 791
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->o:Lta;

    invoke-virtual {v0}, Lta;->e()V

    .line 793
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->p:Lta;

    invoke-virtual {v0}, Lta;->e()V

    .line 795
    return-void
.end method

.method private e()I
    .locals 6

    .prologue
    .line 865
    const/4 v1, 0x1

    .line 866
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result v3

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_0

    .line 867
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 868
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    .line 869
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/GridLayout$LayoutParams;

    .line 870
    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout$LayoutParams;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    .line 866
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 872
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private f()V
    .locals 14

    .prologue
    .line 876
    :goto_0
    iget v0, p0, Landroid/support/v7/widget/GridLayout;->u:I

    if-nez v0, :cond_13

    .line 877
    iget v0, p0, Landroid/support/v7/widget/GridLayout;->q:I

    if-nez v0, :cond_2

    const/4 v0, 0x1

    move v7, v0

    :goto_1
    if-eqz v7, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->o:Lta;

    :goto_2
    iget v1, v0, Lta;->b:I

    const/high16 v2, -0x8000

    if-eq v1, v2, :cond_4

    iget v0, v0, Lta;->b:I

    move v1, v0

    :goto_3
    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v8, v1, [I

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result v9

    move v6, v0

    :goto_4
    if-ge v6, v9, :cond_11

    invoke-virtual {p0, v6}, Landroid/support/v7/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/GridLayout$LayoutParams;

    if-eqz v7, :cond_5

    iget-object v2, v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->a:Ltg;

    :goto_5
    iget-object v5, v2, Ltg;->c:Ltd;

    iget-boolean v10, v2, Ltg;->b:Z

    invoke-virtual {v5}, Ltd;->a()I

    move-result v11

    if-eqz v10, :cond_0

    iget v3, v5, Ltd;->a:I

    :cond_0
    if-eqz v7, :cond_6

    iget-object v2, v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->b:Ltg;

    :goto_6
    iget-object v12, v2, Ltg;->c:Ltd;

    iget-boolean v13, v2, Ltg;->b:Z

    invoke-virtual {v12}, Ltd;->a()I

    move-result v5

    if-nez v1, :cond_7

    :goto_7
    if-eqz v13, :cond_14

    iget v2, v12, Ltd;->a:I

    :goto_8
    if-eqz v1, :cond_f

    if-eqz v10, :cond_1

    if-nez v13, :cond_e

    :cond_1
    :goto_9
    add-int v10, v2, v5

    array-length v4, v8

    if-le v10, v4, :cond_9

    const/4 v4, 0x0

    :goto_a
    if-nez v4, :cond_e

    if-eqz v13, :cond_c

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_2
    const/4 v0, 0x0

    move v7, v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->p:Lta;

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    move v1, v0

    goto :goto_3

    :cond_5
    iget-object v2, v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->b:Ltg;

    goto :goto_5

    :cond_6
    iget-object v2, v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->a:Ltg;

    goto :goto_6

    :cond_7
    if-eqz v13, :cond_8

    iget v2, v12, Ltd;->a:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_b
    sub-int v2, v1, v2

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v5, v2

    goto :goto_7

    :cond_8
    const/4 v2, 0x0

    goto :goto_b

    :cond_9
    move v4, v2

    :goto_c
    if-ge v4, v10, :cond_b

    aget v12, v8, v4

    if-le v12, v3, :cond_a

    const/4 v4, 0x0

    goto :goto_a

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_b
    const/4 v4, 0x1

    goto :goto_a

    :cond_c
    add-int v4, v2, v5

    if-gt v4, v1, :cond_d

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_d
    const/4 v2, 0x0

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_e
    add-int v4, v2, v5

    add-int v10, v3, v11

    array-length v12, v8

    invoke-static {v2, v12}, Ljava/lang/Math;->min(II)I

    move-result v13

    invoke-static {v4, v12}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v8, v13, v4, v10}, Ljava/util/Arrays;->fill([IIII)V

    :cond_f
    if-eqz v7, :cond_10

    invoke-static {v0, v3, v11, v2, v5}, Landroid/support/v7/widget/GridLayout;->a(Landroid/support/v7/widget/GridLayout$LayoutParams;IIII)V

    :goto_d
    add-int v4, v2, v5

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto/16 :goto_4

    :cond_10
    invoke-static {v0, v2, v5, v3, v11}, Landroid/support/v7/widget/GridLayout;->a(Landroid/support/v7/widget/GridLayout$LayoutParams;IIII)V

    goto :goto_d

    .line 878
    :cond_11
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->e()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/GridLayout;->u:I

    .line 885
    :cond_12
    return-void

    .line 879
    :cond_13
    iget v0, p0, Landroid/support/v7/widget/GridLayout;->u:I

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->e()I

    move-result v1

    if-eq v0, v1, :cond_12

    .line 880
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->a:Landroid/util/Printer;

    const-string v1, "The fields of some layout parameters were modified in between layout operations. Check the javadoc for GridLayout.LayoutParams#rowSpec."

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 882
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->c()V

    goto/16 :goto_0

    :cond_14
    move v2, v4

    goto/16 :goto_8
.end method


# virtual methods
.method public final a(Landroid/view/View;Z)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 687
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayout;->b(Landroid/view/View;ZZ)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Landroid/support/v7/widget/GridLayout;->b(Landroid/view/View;ZZ)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final a(Landroid/view/View;ZZ)I
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 662
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/GridLayout$LayoutParams;

    .line 663
    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    iget v2, v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->leftMargin:I

    .line 666
    :goto_0
    const/high16 v3, -0x8000

    if-ne v2, v3, :cond_b

    iget-boolean v2, p0, Landroid/support/v7/widget/GridLayout;->r:Z

    if-nez v2, :cond_3

    move v0, v1

    :goto_1
    return v0

    .line 663
    :cond_0
    iget v2, v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    iget v2, v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :cond_2
    iget v2, v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 666
    :cond_3
    if-eqz p2, :cond_6

    iget-object v0, v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->b:Ltg;

    move-object v2, v0

    :goto_2
    if-eqz p2, :cond_7

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->o:Lta;

    :goto_3
    iget-object v2, v2, Ltg;->c:Ltd;

    if-eqz p2, :cond_4

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->b()Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez p3, :cond_8

    const/4 p3, 0x1

    :cond_4
    :goto_4
    if-eqz p3, :cond_9

    iget v0, v2, Ltd;->a:I

    if-eqz v0, :cond_5

    :cond_5
    :goto_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Landroid/support/v7/widget/Space;

    if-ne v0, v2, :cond_a

    move v0, v1

    goto :goto_1

    :cond_6
    iget-object v0, v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->a:Ltg;

    move-object v2, v0

    goto :goto_2

    :cond_7
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->p:Lta;

    goto :goto_3

    :cond_8
    move p3, v1

    goto :goto_4

    :cond_9
    invoke-virtual {v0}, Lta;->a()I

    goto :goto_5

    :cond_a
    iget v0, p0, Landroid/support/v7/widget/GridLayout;->t:I

    div-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_b
    move v0, v2

    goto :goto_1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 827
    instance-of v2, p1, Landroid/support/v7/widget/GridLayout$LayoutParams;

    if-nez v2, :cond_0

    .line 835
    :goto_0
    return v0

    .line 830
    :cond_0
    check-cast p1, Landroid/support/v7/widget/GridLayout$LayoutParams;

    .line 832
    invoke-direct {p0, p1, v1}, Landroid/support/v7/widget/GridLayout;->a(Landroid/support/v7/widget/GridLayout$LayoutParams;Z)V

    .line 833
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/GridLayout;->a(Landroid/support/v7/widget/GridLayout$LayoutParams;Z)V

    move v0, v1

    .line 835
    goto :goto_0
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 159
    new-instance v0, Landroid/support/v7/widget/GridLayout$LayoutParams;

    invoke-direct {v0}, Landroid/support/v7/widget/GridLayout$LayoutParams;-><init>()V

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter

    .prologue
    .line 159
    new-instance v0, Landroid/support/v7/widget/GridLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v7/widget/GridLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter

    .prologue
    .line 159
    new-instance v0, Landroid/support/v7/widget/GridLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/GridLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getAlignmentMode()I
    .locals 1

    .prologue
    .line 478
    iget v0, p0, Landroid/support/v7/widget/GridLayout;->s:I

    return v0
.end method

.method public getColumnCount()I
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->o:Lta;

    invoke-virtual {v0}, Lta;->a()I

    move-result v0

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 307
    iget v0, p0, Landroid/support/v7/widget/GridLayout;->q:I

    return v0
.end method

.method public getPrinter()Landroid/util/Printer;
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->a:Landroid/util/Printer;

    return-object v0
.end method

.method public getRowCount()I
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->p:Lta;

    invoke-virtual {v0}, Lta;->a()I

    move-result v0

    return v0
.end method

.method public getUseDefaultMargins()Z
    .locals 1

    .prologue
    .line 431
    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayout;->r:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 32
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1002
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/GridLayout;->f()V

    .line 1004
    sub-int v12, p4, p2

    .line 1005
    sub-int v1, p5, p3

    .line 1007
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayout;->getPaddingLeft()I

    move-result v13

    .line 1008
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayout;->getPaddingTop()I

    move-result v14

    .line 1009
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayout;->getPaddingRight()I

    move-result v15

    .line 1010
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayout;->getPaddingBottom()I

    move-result v2

    .line 1012
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/GridLayout;->o:Lta;

    sub-int v4, v12, v13

    sub-int/2addr v4, v15

    invoke-virtual {v3, v4}, Lta;->c(I)V

    .line 1013
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/GridLayout;->p:Lta;

    sub-int/2addr v1, v14

    sub-int/2addr v1, v2

    invoke-virtual {v3, v1}, Lta;->c(I)V

    .line 1015
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/GridLayout;->o:Lta;

    invoke-virtual {v1}, Lta;->c()[I

    move-result-object v16

    .line 1016
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/GridLayout;->p:Lta;

    invoke-virtual {v1}, Lta;->c()[I

    move-result-object v17

    .line 1018
    const/4 v1, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result v18

    move v11, v1

    :goto_0
    move/from16 v0, v18

    if-ge v11, v0, :cond_4

    .line 1019
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/support/v7/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1020
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_2

    .line 1021
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/GridLayout$LayoutParams;

    .line 1022
    iget-object v2, v1, Landroid/support/v7/widget/GridLayout$LayoutParams;->b:Ltg;

    .line 1023
    iget-object v1, v1, Landroid/support/v7/widget/GridLayout$LayoutParams;->a:Ltg;

    .line 1025
    iget-object v4, v2, Ltg;->c:Ltd;

    .line 1026
    iget-object v5, v1, Ltg;->c:Ltd;

    .line 1028
    iget v6, v4, Ltd;->a:I

    aget v19, v16, v6

    .line 1029
    iget v6, v5, Ltd;->a:I

    aget v20, v17, v6

    .line 1031
    iget v4, v4, Ltd;->b:I

    aget v4, v16, v4

    .line 1032
    iget v5, v5, Ltd;->b:I

    aget v5, v17, v5

    .line 1034
    sub-int v21, v4, v19

    .line 1035
    sub-int v22, v5, v20

    .line 1037
    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/support/v7/widget/GridLayout;->b(Landroid/view/View;Z)I

    move-result v23

    .line 1038
    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/support/v7/widget/GridLayout;->b(Landroid/view/View;Z)I

    move-result v24

    .line 1040
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ltg;->a(Z)Lsy;

    move-result-object v4

    .line 1041
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ltg;->a(Z)Lsy;

    move-result-object v8

    .line 1043
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/GridLayout;->o:Lta;

    invoke-virtual {v1}, Lta;->b()Ltf;

    move-result-object v1

    invoke-virtual {v1, v11}, Ltf;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltc;

    .line 1044
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/GridLayout;->p:Lta;

    invoke-virtual {v2}, Lta;->b()Ltf;

    move-result-object v2

    invoke-virtual {v2, v11}, Ltf;->a(I)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ltc;

    .line 1047
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ltc;->a(Z)I

    move-result v2

    sub-int v2, v21, v2

    invoke-virtual {v4, v3, v2}, Lsy;->a(Landroid/view/View;I)I

    move-result v25

    .line 1048
    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Ltc;->a(Z)I

    move-result v2

    sub-int v2, v22, v2

    invoke-virtual {v8, v3, v2}, Lsy;->a(Landroid/view/View;I)I

    move-result v26

    .line 1050
    const/4 v2, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v5}, Landroid/support/v7/widget/GridLayout;->b(Landroid/view/View;ZZ)I

    move-result v27

    .line 1051
    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v5}, Landroid/support/v7/widget/GridLayout;->b(Landroid/view/View;ZZ)I

    move-result v28

    .line 1052
    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v5}, Landroid/support/v7/widget/GridLayout;->b(Landroid/view/View;ZZ)I

    move-result v29

    .line 1053
    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v5}, Landroid/support/v7/widget/GridLayout;->b(Landroid/view/View;ZZ)I

    move-result v2

    .line 1055
    add-int v30, v27, v29

    .line 1056
    add-int v31, v28, v2

    .line 1059
    add-int v5, v23, v30

    const/4 v6, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v1 .. v6}, Ltc;->a(Landroid/support/v7/widget/GridLayout;Landroid/view/View;Lsy;IZ)I

    move-result v1

    .line 1060
    add-int v9, v24, v31

    const/4 v10, 0x0

    move-object v5, v7

    move-object/from16 v6, p0

    move-object v7, v3

    invoke-virtual/range {v5 .. v10}, Ltc;->a(Landroid/support/v7/widget/GridLayout;Landroid/view/View;Lsy;IZ)I

    move-result v2

    .line 1062
    sub-int v5, v21, v30

    move/from16 v0, v23

    invoke-virtual {v4, v0, v5}, Lsy;->a(II)I

    move-result v4

    .line 1063
    sub-int v5, v22, v31

    move/from16 v0, v24

    invoke-virtual {v8, v0, v5}, Lsy;->a(II)I

    move-result v5

    .line 1065
    add-int v6, v19, v25

    add-int/2addr v1, v6

    .line 1067
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/GridLayout;->b()Z

    move-result v6

    if-nez v6, :cond_3

    add-int v6, v13, v27

    add-int/2addr v1, v6

    .line 1069
    :goto_1
    add-int v6, v14, v20

    add-int v6, v6, v26

    add-int/2addr v2, v6

    add-int v2, v2, v28

    .line 1071
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    if-ne v4, v6, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    if-eq v5, v6, :cond_1

    .line 1072
    :cond_0
    const/high16 v6, 0x4000

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    const/high16 v7, 0x4000

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v3, v6, v7}, Landroid/view/View;->measure(II)V

    .line 1074
    :cond_1
    add-int/2addr v4, v1

    add-int/2addr v5, v2

    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 1018
    :cond_2
    add-int/lit8 v1, v11, 0x1

    move v11, v1

    goto/16 :goto_0

    .line 1067
    :cond_3
    sub-int v6, v12, v4

    sub-int/2addr v6, v15

    sub-int v6, v6, v29

    sub-int v1, v6, v1

    goto :goto_1

    .line 1076
    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 933
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->f()V

    .line 937
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->d()V

    .line 939
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->getPaddingRight()I

    move-result v1

    add-int v2, v0, v1

    .line 940
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->getPaddingBottom()I

    move-result v1

    add-int v3, v0, v1

    .line 942
    neg-int v0, v2

    invoke-static {p1, v0}, Landroid/support/v7/widget/GridLayout;->a(II)I

    move-result v4

    .line 943
    neg-int v0, v3

    invoke-static {p2, v0}, Landroid/support/v7/widget/GridLayout;->a(II)I

    move-result v5

    .line 945
    const/4 v0, 0x1

    invoke-direct {p0, v4, v5, v0}, Landroid/support/v7/widget/GridLayout;->a(IIZ)V

    .line 951
    iget v0, p0, Landroid/support/v7/widget/GridLayout;->q:I

    if-nez v0, :cond_0

    .line 952
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->o:Lta;

    invoke-virtual {v0, v4}, Lta;->b(I)I

    move-result v1

    .line 953
    invoke-direct {p0, v4, v5, v6}, Landroid/support/v7/widget/GridLayout;->a(IIZ)V

    .line 954
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->p:Lta;

    invoke-virtual {v0, v5}, Lta;->b(I)I

    move-result v0

    .line 961
    :goto_0
    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 962
    add-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 964
    invoke-static {v1, p1, v6}, Lgs;->a(III)I

    move-result v1

    invoke-static {v0, p2, v6}, Lgs;->a(III)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/support/v7/widget/GridLayout;->setMeasuredDimension(II)V

    .line 967
    return-void

    .line 956
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->p:Lta;

    invoke-virtual {v0, v5}, Lta;->b(I)I

    move-result v0

    .line 957
    invoke-direct {p0, v4, v5, v6}, Landroid/support/v7/widget/GridLayout;->a(IIZ)V

    .line 958
    iget-object v1, p0, Landroid/support/v7/widget/GridLayout;->o:Lta;

    invoke-virtual {v1, v4}, Lta;->b(I)I

    move-result v1

    goto :goto_0
.end method

.method public requestLayout()V
    .locals 0

    .prologue
    .line 982
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 983
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->c()V

    .line 984
    return-void
.end method

.method public setAlignmentMode(I)V
    .locals 0
    .parameter

    .prologue
    .line 497
    iput p1, p0, Landroid/support/v7/widget/GridLayout;->s:I

    .line 498
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->requestLayout()V

    .line 499
    return-void
.end method

.method public setColumnCount(I)V
    .locals 1
    .parameter

    .prologue
    .line 415
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->o:Lta;

    invoke-virtual {v0, p1}, Lta;->a(I)V

    .line 416
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->c()V

    .line 417
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->requestLayout()V

    .line 418
    return-void
.end method

.method public setColumnOrderPreserved(Z)V
    .locals 1
    .parameter

    .prologue
    .line 568
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->o:Lta;

    invoke-virtual {v0, p1}, Lta;->a(Z)V

    .line 569
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->c()V

    .line 570
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->requestLayout()V

    .line 571
    return-void
.end method

.method public setOrientation(I)V
    .locals 1
    .parameter

    .prologue
    .line 347
    iget v0, p0, Landroid/support/v7/widget/GridLayout;->q:I

    if-eq v0, p1, :cond_0

    .line 348
    iput p1, p0, Landroid/support/v7/widget/GridLayout;->q:I

    .line 349
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->c()V

    .line 350
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->requestLayout()V

    .line 352
    :cond_0
    return-void
.end method

.method public setPrinter(Landroid/util/Printer;)V
    .locals 0
    .parameter

    .prologue
    .line 593
    if-nez p1, :cond_0

    sget-object p1, Landroid/support/v7/widget/GridLayout;->g:Landroid/util/Printer;

    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/GridLayout;->a:Landroid/util/Printer;

    .line 594
    return-void
.end method

.method public setRowCount(I)V
    .locals 1
    .parameter

    .prologue
    .line 382
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->p:Lta;

    invoke-virtual {v0, p1}, Lta;->a(I)V

    .line 383
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->c()V

    .line 384
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->requestLayout()V

    .line 385
    return-void
.end method

.method public setRowOrderPreserved(Z)V
    .locals 1
    .parameter

    .prologue
    .line 532
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->p:Lta;

    invoke-virtual {v0, p1}, Lta;->a(Z)V

    .line 533
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->c()V

    .line 534
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->requestLayout()V

    .line 535
    return-void
.end method

.method public setUseDefaultMargins(Z)V
    .locals 0
    .parameter

    .prologue
    .line 461
    iput-boolean p1, p0, Landroid/support/v7/widget/GridLayout;->r:Z

    .line 462
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->requestLayout()V

    .line 463
    return-void
.end method
