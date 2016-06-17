.class public Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;
.super Landroid/widget/HorizontalScrollView;
.source "PagerSlidingTabStrip.java"


# static fields
.field private static final b:[I


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:I

.field private E:Landroid/content/res/ColorStateList;

.field private F:I

.field private G:Ljava/util/Locale;

.field public a:Lhw;

.field private final c:Lhou;

.field private d:Landroid/widget/LinearLayout$LayoutParams;

.field private e:Landroid/widget/LinearLayout$LayoutParams;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/support/v4/view/ViewPager;

.field private h:Lhoy;

.field private i:I

.field private j:I

.field private k:F

.field private l:I

.field private m:Landroid/graphics/Paint;

.field private n:Landroid/graphics/Paint;

.field private o:Z

.field private p:I

.field private q:I

.field private r:I

.field private s:Z

.field private t:Z

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->b:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x95t 0x0t 0x1t 0x1t
        0x98t 0x0t 0x1t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v2, 0xc

    const v1, -0x99999a

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 96
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    new-instance v0, Lhou;

    invoke-direct {v0, p0, v4}, Lhou;-><init>(Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;B)V

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->c:Lhou;

    .line 61
    iput v4, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->j:I

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->k:F

    .line 63
    iput v5, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->l:I

    .line 66
    iput-boolean v4, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->o:Z

    .line 67
    iput v1, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->p:I

    .line 68
    const/high16 v0, 0x1a00

    iput v0, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->q:I

    .line 69
    const/high16 v0, 0x1a00

    iput v0, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->r:I

    .line 70
    iput-boolean v4, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->s:Z

    .line 71
    iput-boolean v3, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->t:Z

    .line 72
    const/16 v0, 0x34

    iput v0, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->u:I

    .line 73
    const/16 v0, 0x8

    iput v0, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->v:I

    .line 74
    iput v4, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->w:I

    .line 75
    const/4 v0, 0x2

    iput v0, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->x:I

    .line 76
    iput v2, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->y:I

    .line 77
    const/16 v0, 0x18

    iput v0, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->z:I

    .line 78
    iput v4, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->A:I

    .line 79
    iput v3, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->B:I

    .line 80
    iput v2, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->C:I

    .line 81
    iput v1, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->D:I

    .line 83
    iput v4, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->F:I

    .line 97
    invoke-virtual {p0, v3}, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->setFillViewport(Z)V

    .line 98
    invoke-virtual {p0, v4}, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->setWillNotDraw(Z)V

    .line 101
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 102
    iget v1, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->u:I

    int-to-float v1, v1

    invoke-static {v3, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->u:I

    .line 103
    iget v1, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->v:I

    int-to-float v1, v1

    invoke-static {v3, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->v:I

    .line 105
    iget v1, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->x:I

    int-to-float v1, v1

    invoke-static {v3, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->x:I

    .line 107
    iget v1, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->y:I

    int-to-float v1, v1

    invoke-static {v3, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->y:I

    .line 109
    iget v1, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->z:I

    int-to-float v1, v1

    invoke-static {v3, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->z:I

    .line 111
    iget v1, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->A:I

    int-to-float v1, v1

    invoke-static {v3, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->A:I

    .line 113
    iget v1, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->B:I

    int-to-float v1, v1

    invoke-static {v3, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->B:I

    .line 114
    iget v1, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->C:I

    int-to-float v1, v1

    invoke-static {v3, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->C:I

    .line 117
    sget-object v0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->b:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 118
    iget v1, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->C:I

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->C:I

    .line 119
    iget v1, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->D:I

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->D:I

    .line 120
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 123
    sget-object v0, Lcom/wandoujia/ripple_framework/R$styleable;->PagerSlidingTabStrip:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 124
    sget v1, Lcom/wandoujia/ripple_framework/R$styleable;->PagerSlidingTabStrip_indicatorColor:I

    iget v2, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->p:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->p:I

    .line 125
    sget v1, Lcom/wandoujia/ripple_framework/R$styleable;->PagerSlidingTabStrip_underlineColor:I

    iget v2, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->q:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->q:I

    .line 126
    sget v1, Lcom/wandoujia/ripple_framework/R$styleable;->PagerSlidingTabStrip_dividerColor:I

    iget v2, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->r:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->r:I

    .line 127
    sget v1, Lcom/wandoujia/ripple_framework/R$styleable;->PagerSlidingTabStrip_indicatorHeight:I

    iget v2, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->v:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->v:I

    .line 129
    sget v1, Lcom/wandoujia/ripple_framework/R$styleable;->PagerSlidingTabStrip_underlineHeight:I

    iget v2, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->x:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->x:I

    .line 131
    sget v1, Lcom/wandoujia/ripple_framework/R$styleable;->PagerSlidingTabStrip_indicatorWidth:I

    iget v2, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->w:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->w:I

    .line 133
    sget v1, Lcom/wandoujia/ripple_framework/R$styleable;->PagerSlidingTabStrip_tab_dividerPadding:I

    iget v2, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->y:I

    .line 135
    sget v1, Lcom/wandoujia/ripple_framework/R$styleable;->PagerSlidingTabStrip_tabPaddingLeftRight:I

    iget v2, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->z:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->z:I

    .line 138
    sget v1, Lcom/wandoujia/ripple_framework/R$styleable;->PagerSlidingTabStrip_indicatorPaddingBottom:I

    iget v2, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->A:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->A:I

    .line 141
    sget v1, Lcom/wandoujia/ripple_framework/R$styleable;->PagerSlidingTabStrip_tab_background:I

    iget v2, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->F:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->F:I

    .line 143
    sget v1, Lcom/wandoujia/ripple_framework/R$styleable;->PagerSlidingTabStrip_shouldExpand:I

    iget-boolean v2, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->s:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->s:Z

    .line 144
    sget v1, Lcom/wandoujia/ripple_framework/R$styleable;->PagerSlidingTabStrip_scrollOffset:I

    iget v2, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->u:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->u:I

    .line 146
    sget v1, Lcom/wandoujia/ripple_framework/R$styleable;->PagerSlidingTabStrip_tab_textAllCaps:I

    iget-boolean v2, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->t:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->t:Z

    .line 147
    sget v1, Lcom/wandoujia/ripple_framework/R$styleable;->PagerSlidingTabStrip_tab_textColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->E:Landroid/content/res/ColorStateList;

    .line 148
    sget v1, Lcom/wandoujia/ripple_framework/R$styleable;->PagerSlidingTabStrip_tabTextSize:I

    iget v2, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->C:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->C:I

    .line 150
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 152
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->m:Landroid/graphics/Paint;

    .line 153
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 154
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->m:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 156
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->n:Landroid/graphics/Paint;

    .line 157
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->n:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 158
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->n:Landroid/graphics/Paint;

    iget v1, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->B:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 160
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->d:Landroid/widget/LinearLayout$LayoutParams;

    .line 162
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v4, v5, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->e:Landroid/widget/LinearLayout$LayoutParams;

    .line 164
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->G:Ljava/util/Locale;

    if-nez v0, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->G:Ljava/util/Locale;

    .line 167
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    .line 168
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 169
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 171
    iget v1, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->x:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 172
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->addView(Landroid/view/View;)V

    .line 174
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;F)F
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    iput p1, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->k:F

    return p1
.end method

.method public static synthetic a(Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    iput p1, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->j:I

    return p1
.end method

.method public static synthetic a(Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->g:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private a(I)V
    .locals 2
    .parameter

    .prologue
    .line 373
    iget v0, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->l:I

    if-ne v0, p1, :cond_1

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 376
    :cond_1
    iget v0, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->i:I

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    .line 379
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->l:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 380
    if-eqz v0, :cond_2

    .line 381
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 383
    :cond_2
    iput p1, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->l:I

    .line 384
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->l:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 385
    if-eqz v0, :cond_0

    .line 386
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0
.end method

.method private a(ILhow;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->g:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p2, v0, p1, v1}, Lhow;->a(Landroid/content/Context;ILandroid/support/v4/view/ViewPager;)Landroid/view/View;

    move-result-object v0

    .line 244
    iget v1, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->l:I

    if-ne p1, v1, :cond_0

    .line 245
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 247
    :cond_0
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 248
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    iget v0, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->i:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    add-int/2addr v0, p2

    if-gtz p1, :cond_0

    if-lez p2, :cond_1

    :cond_0
    iget v1, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->u:I

    sub-int/2addr v0, v1

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->scrollTo(II)V

    :cond_2
    return-void
.end method

.method private a(Z)V
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 255
    move v2, v3

    :goto_0
    iget v0, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->i:I

    if-ge v2, v0, :cond_5

    .line 256
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 257
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->d:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 258
    iget v0, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->F:I

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 259
    sget v0, Lcom/wandoujia/ripple_framework/R$id;->tab_skip_horizontal_padding:I

    invoke-virtual {v1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v0, Lcom/wandoujia/ripple_framework/R$id;->tab_skip_horizontal_padding:I

    invoke-virtual {v1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 261
    :cond_0
    iget v0, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->z:I

    iget v4, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->z:I

    invoke-virtual {v1, v0, v3, v4, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 264
    :cond_1
    instance-of v0, v1, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    sget v0, Lcom/wandoujia/ripple_framework/R$id;->tab_default_theme:I

    invoke-virtual {v1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    sget v0, Lcom/wandoujia/ripple_framework/R$id;->tab_default_theme:I

    invoke-virtual {v1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v1

    .line 267
    check-cast v0, Landroid/widget/TextView;

    .line 268
    iget v1, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->C:I

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 269
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->E:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_3

    .line 270
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->E:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 277
    :goto_1
    iget-boolean v1, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->t:Z

    if-eqz v1, :cond_2

    .line 278
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v1, v4, :cond_4

    .line 279
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 255
    :cond_2
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 272
    :cond_3
    iget v1, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->D:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 281
    :cond_4
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->G:Ljava/util/Locale;

    invoke-virtual {v1, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 286
    :cond_5
    if-eqz p1, :cond_6

    .line 287
    iput-boolean v3, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->o:Z

    .line 289
    :cond_6
    return-void
.end method

.method private b()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 292
    iget v1, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->j:I

    if-lez v1, :cond_2

    iget v1, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->j:I

    iget v2, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->i:I

    if-ge v1, v2, :cond_2

    .line 293
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->getMeasuredWidth()I

    move-result v1

    .line 294
    iput v0, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->u:I

    .line 295
    :goto_0
    iget v2, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->j:I

    if-ge v0, v2, :cond_0

    .line 296
    iget-object v2, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 297
    iget-object v3, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 298
    iget v4, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->u:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->u:I

    .line 299
    iget v4, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->u:I

    add-int/2addr v3, v4

    if-le v3, v1, :cond_1

    .line 300
    iget v0, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->u:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->u:I

    .line 309
    :cond_0
    :goto_1
    return-void

    .line 295
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 304
    :cond_2
    iget v1, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->j:I

    if-nez v1, :cond_0

    .line 305
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 306
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->u:I

    goto :goto_1
.end method

.method public static synthetic b(Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->b()V

    return-void
.end method

.method public static synthetic b(Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->a(I)V

    return-void
.end method

.method public static synthetic c(Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;)I
    .locals 1
    .parameter

    .prologue
    .line 47
    iget v0, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->j:I

    return v0
.end method

.method public static synthetic d(Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;)I
    .locals 1
    .parameter

    .prologue
    .line 47
    iget v0, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->l:I

    return v0
.end method

.method public static synthetic e(Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 223
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 224
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->g:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Lgf;

    move-result-object v0

    invoke-virtual {v0}, Lgf;->c()I

    move-result v0

    iput v0, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->i:I

    .line 225
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->i:I

    if-ge v0, v1, :cond_1

    .line 226
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->h:Lhoy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->h:Lhoy;

    invoke-interface {v1, v0}, Lhoy;->a_(I)Lhow;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 227
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->h:Lhoy;

    invoke-interface {v1, v0}, Lhoy;->a_(I)Lhow;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->a(ILhow;)V

    .line 225
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 229
    :cond_0
    new-instance v1, Lhow;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->g:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getAdapter()Lgf;

    move-result-object v3

    invoke-virtual {v3, v0}, Lgf;->b(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lhow;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 231
    invoke-direct {p0, v0, v1}, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->a(ILhow;)V

    goto :goto_1

    .line 234
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->a(Z)V

    .line 235
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->g:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->a(I)V

    .line 236
    return-void
.end method

.method public getCurrentSelectedPosition()I
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->l:I

    return v0
.end method

.method public getDividerColor()I
    .locals 1

    .prologue
    .line 475
    iget v0, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->r:I

    return v0
.end method

.method public getDividerPadding()I
    .locals 1

    .prologue
    .line 493
    iget v0, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->y:I

    return v0
.end method

.method public getIndicatorColor()I
    .locals 1

    .prologue
    .line 438
    iget v0, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->p:I

    return v0
.end method

.method public getIndicatorHeight()I
    .locals 1

    .prologue
    .line 447
    iget v0, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->v:I

    return v0
.end method

.method public getIndicatorPaddingBottom()I
    .locals 1

    .prologue
    .line 573
    iget v0, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->A:I

    return v0
.end method

.method public getScrollOffset()I
    .locals 1

    .prologue
    .line 502
    iget v0, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->u:I

    return v0
.end method

.method public getShouldExpand()Z
    .locals 1

    .prologue
    .line 511
    iget-boolean v0, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->s:Z

    return v0
.end method

.method public getTabBackground()I
    .locals 1

    .prologue
    .line 556
    iget v0, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->F:I

    return v0
.end method

.method public getTabPaddingLeftRight()I
    .locals 1

    .prologue
    .line 564
    iget v0, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->z:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 542
    iget v0, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->D:I

    return v0
.end method

.method public getTextSize()I
    .locals 1

    .prologue
    .line 528
    iget v0, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->C:I

    return v0
.end method

.method public getUnderlineColor()I
    .locals 1

    .prologue
    .line 461
    iget v0, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->q:I

    return v0
.end method

.method public getUnderlineHeight()I
    .locals 1

    .prologue
    .line 484
    iget v0, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->x:I

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter

    .prologue
    .line 343
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->a(Z)V

    .line 344
    new-instance v0, Lhot;

    invoke-direct {v0, p0}, Lhot;-><init>(Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;)V

    invoke-virtual {p0, v0}, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->post(Ljava/lang/Runnable;)Z

    .line 350
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter

    .prologue
    const/high16 v6, 0x3f80

    const/4 v1, 0x0

    .line 392
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onDraw(Landroid/graphics/Canvas;)V

    .line 394
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->i:I

    if-nez v0, :cond_1

    .line 430
    :cond_0
    return-void

    .line 397
    :cond_1
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->getHeight()I

    move-result v7

    .line 399
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->m:Landroid/graphics/Paint;

    iget v2, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->q:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 400
    iget v0, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->x:I

    sub-int v0, v7, v0

    int-to-float v2, v0

    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    int-to-float v3, v0

    int-to-float v4, v7

    iget-object v5, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->m:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 402
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->m:Landroid/graphics/Paint;

    iget v2, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->p:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 405
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->j:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 406
    iget v0, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->w:I

    if-nez v0, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->w:I

    .line 407
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->w:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    int-to-float v0, v0

    .line 408
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v4, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->w:I

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v3, v2

    int-to-float v3, v2

    .line 412
    iget v2, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->k:F

    cmpl-float v1, v2, v1

    if-lez v1, :cond_3

    iget v1, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->j:I

    iget v2, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->i:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_3

    .line 413
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->j:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 414
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->w:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    int-to-float v2, v2

    .line 415
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v5, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->w:I

    sub-int/2addr v1, v5

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v4, v1

    int-to-float v4, v1

    .line 417
    iget v1, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->k:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->k:F

    sub-float v2, v6, v2

    mul-float/2addr v0, v2

    add-float/2addr v1, v0

    .line 418
    iget v0, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->k:F

    mul-float/2addr v0, v4

    iget v2, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->k:F

    sub-float v2, v6, v2

    mul-float/2addr v2, v3

    add-float v3, v0, v2

    .line 420
    :goto_1
    iget v0, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->v:I

    sub-int v0, v7, v0

    iget v2, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->A:I

    sub-int/2addr v0, v2

    int-to-float v2, v0

    iget v0, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->A:I

    sub-int v0, v7, v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->m:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 424
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->n:Landroid/graphics/Paint;

    iget v1, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->r:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 425
    const/4 v0, 0x0

    move v6, v0

    :goto_2
    iget v0, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->i:I

    add-int/lit8 v0, v0, -0x1

    if-ge v6, v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 427
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->y:I

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v3, v0

    iget v0, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->y:I

    sub-int v0, v7, v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->n:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 425
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_2

    .line 406
    :cond_2
    iget v0, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->w:I

    goto/16 :goto_0

    :cond_3
    move v1, v0

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 313
    iget-boolean v0, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->s:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->o:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 315
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 339
    :goto_0
    return-void

    .line 318
    :cond_1
    iget-boolean v0, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->o:Z

    if-nez v0, :cond_2

    .line 320
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 322
    :cond_2
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->getMeasuredWidth()I

    move-result v3

    move v0, v1

    move v2, v1

    .line 324
    :goto_1
    iget v4, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->i:I

    if-ge v0, v4, :cond_3

    .line 325
    iget-object v4, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v2, v4

    .line 324
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 327
    :cond_3
    if-lez v2, :cond_5

    if-lez v3, :cond_5

    .line 328
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->b()V

    .line 329
    if-gt v2, v3, :cond_4

    move v0, v1

    .line 330
    :goto_2
    iget v2, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->i:I

    if-ge v0, v2, :cond_4

    .line 331
    iget-object v2, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 332
    iget-object v3, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->e:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 333
    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 330
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 336
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->o:Z

    .line 338
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1
    .parameter

    .prologue
    .line 583
    check-cast p1, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip$SavedState;

    .line 584
    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/HorizontalScrollView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 585
    iget v0, p1, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip$SavedState;->a:I

    iput v0, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->j:I

    .line 586
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->requestLayout()V

    .line 587
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 591
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 592
    new-instance v1, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip$SavedState;

    invoke-direct {v1, v0}, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 593
    iget v0, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->j:I

    iput v0, v1, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip$SavedState;->a:I

    .line 594
    return-object v1
.end method

.method public setAllCaps(Z)V
    .locals 0
    .parameter

    .prologue
    .line 524
    iput-boolean p1, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->t:Z

    .line 525
    return-void
.end method

.method public setAllTabEnabled(Z)V
    .locals 2
    .parameter

    .prologue
    .line 216
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 217
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 218
    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 216
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 220
    :cond_0
    return-void
.end method

.method public setDividerColor(I)V
    .locals 0
    .parameter

    .prologue
    .line 479
    iput p1, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->r:I

    .line 480
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->invalidate()V

    .line 481
    return-void
.end method

.method public setDividerColorResource(I)V
    .locals 1
    .parameter

    .prologue
    .line 470
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->r:I

    .line 471
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->invalidate()V

    .line 472
    return-void
.end method

.method public setDividerPadding(I)V
    .locals 0
    .parameter

    .prologue
    .line 497
    iput p1, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->y:I

    .line 498
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->invalidate()V

    .line 499
    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 0
    .parameter

    .prologue
    .line 442
    iput p1, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->p:I

    .line 443
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->invalidate()V

    .line 444
    return-void
.end method

.method public setIndicatorColorResource(I)V
    .locals 1
    .parameter

    .prologue
    .line 433
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->p:I

    .line 434
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->invalidate()V

    .line 435
    return-void
.end method

.method public setIndicatorHeight(I)V
    .locals 0
    .parameter

    .prologue
    .line 451
    iput p1, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->v:I

    .line 452
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->invalidate()V

    .line 453
    return-void
.end method

.method public setIndicatorPaddingBottom(I)V
    .locals 1
    .parameter

    .prologue
    .line 577
    iput p1, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->A:I

    .line 578
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->a(Z)V

    .line 579
    return-void
.end method

.method public setOnPageChangeListener(Lhw;)V
    .locals 0
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->a:Lhw;

    .line 213
    return-void
.end method

.method public setScrollOffset(I)V
    .locals 0
    .parameter

    .prologue
    .line 506
    iput p1, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->u:I

    .line 507
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->invalidate()V

    .line 508
    return-void
.end method

.method public setShouldExpand(Z)V
    .locals 0
    .parameter

    .prologue
    .line 515
    iput-boolean p1, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->s:Z

    .line 516
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->requestLayout()V

    .line 517
    return-void
.end method

.method public setTabBackground(I)V
    .locals 0
    .parameter

    .prologue
    .line 560
    iput p1, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->F:I

    .line 561
    return-void
.end method

.method public setTabPaddingLeftRight(I)V
    .locals 1
    .parameter

    .prologue
    .line 568
    iput p1, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->z:I

    .line 569
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->a(Z)V

    .line 570
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .parameter

    .prologue
    .line 546
    iput p1, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->D:I

    .line 547
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->a(Z)V

    .line 548
    return-void
.end method

.method public setTextColorResource(I)V
    .locals 1
    .parameter

    .prologue
    .line 537
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->D:I

    .line 538
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->a(Z)V

    .line 539
    return-void
.end method

.method public setTextColorStateList(I)V
    .locals 1
    .parameter

    .prologue
    .line 551
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->E:Landroid/content/res/ColorStateList;

    .line 552
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->a(Z)V

    .line 553
    return-void
.end method

.method public setTextSize(I)V
    .locals 1
    .parameter

    .prologue
    .line 532
    iput p1, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->C:I

    .line 533
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->a(Z)V

    .line 534
    return-void
.end method

.method public setUnderlineColor(I)V
    .locals 0
    .parameter

    .prologue
    .line 465
    iput p1, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->q:I

    .line 466
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->invalidate()V

    .line 467
    return-void
.end method

.method public setUnderlineColorResource(I)V
    .locals 1
    .parameter

    .prologue
    .line 456
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->q:I

    .line 457
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->invalidate()V

    .line 458
    return-void
.end method

.method public setUnderlineHeight(I)V
    .locals 0
    .parameter

    .prologue
    .line 488
    iput p1, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->x:I

    .line 489
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->invalidate()V

    .line 490
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2
    .parameter

    .prologue
    .line 177
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Lgf;

    move-result-object v0

    instance-of v0, v0, Lhoy;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Lgf;

    move-result-object v0

    check-cast v0, Lhoy;

    :goto_0
    iput-object p1, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->g:Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->h:Lhoy;

    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->g:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Lgf;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager does not have adapter instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->g:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->c:Lhou;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->a(Lhw;)V

    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lhos;

    invoke-direct {v1, p0}, Lhos;-><init>(Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->a()V

    .line 180
    return-void
.end method
