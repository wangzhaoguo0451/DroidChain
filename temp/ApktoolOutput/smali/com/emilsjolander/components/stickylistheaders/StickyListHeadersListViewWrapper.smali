.class public Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;
.super Landroid/widget/FrameLayout;
.source "StickyListHeadersListViewWrapper.java"


# static fields
.field private static final b:Z

.field private static c:Ljava/lang/reflect/Field;

.field private static d:Ljava/lang/reflect/Field;


# instance fields
.field a:Landroid/view/View;

.field private e:I

.field private f:Landroid/graphics/drawable/Drawable;

.field private final g:Landroid/view/ViewConfiguration;

.field private h:Z

.field private i:Z

.field private final j:Landroid/graphics/Rect;

.field private final k:Landroid/view/GestureDetector;

.field private final l:Landroid/view/View$OnTouchListener;

.field private final m:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private n:Z

.field private o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->b:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 92
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 101
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->a:Landroid/view/View;

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->e:I

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->i:Z

    .line 34
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->j:Landroid/graphics/Rect;

    .line 36
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Laik;

    invoke-direct {v2, p0}, Laik;-><init>(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->k:Landroid/view/GestureDetector;

    .line 47
    new-instance v0, Lail;

    invoke-direct {v0, p0}, Lail;-><init>(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;)V

    iput-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->l:Landroid/view/View$OnTouchListener;

    .line 70
    new-instance v0, Laim;

    invoke-direct {v0, p0}, Laim;-><init>(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;)V

    iput-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->m:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 102
    sget-boolean v0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->b:Z

    if-nez v0, :cond_0

    .line 104
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "mTop"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->c:Ljava/lang/reflect/Field;

    .line 105
    const-class v0, Landroid/view/View;

    const-string v1, "mBottom"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->d:Ljava/lang/reflect/Field;

    .line 106
    sget-object v0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->c:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 107
    sget-object v0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->d:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :cond_0
    :goto_0
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->g:Landroid/view/ViewConfiguration;

    .line 115
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->m:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 116
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static synthetic a(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;)Landroid/graphics/Rect;
    .locals 1
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->getRefreshedSelectorBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter

    .prologue
    .line 235
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->f:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->getRefreshedSelectorBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 236
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    .line 237
    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->f:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 238
    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 239
    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 240
    return-void
.end method

.method public static synthetic a(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->h:Z

    return p1
.end method

.method public static synthetic b(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;)Landroid/view/ViewConfiguration;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->g:Landroid/view/ViewConfiguration;

    return-object v0
.end method

.method public static synthetic c(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;)Landroid/view/GestureDetector;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->k:Landroid/view/GestureDetector;

    return-object v0
.end method

.method public static synthetic d(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;)Z
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->o:Z

    return v0
.end method

.method public static synthetic e(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->a:Landroid/view/View;

    return-object v0
.end method

.method public static synthetic f(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;)Z
    .locals 1
    .parameter

    .prologue
    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->o:Z

    return v0
.end method

.method private getRefreshedSelectorBounds()Landroid/graphics/Rect;
    .locals 3

    .prologue
    .line 243
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->j:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 244
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->j:Landroid/graphics/Rect;

    iget v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->e:I

    iget-object v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 245
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->j:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 246
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->j:Landroid/graphics/Rect;

    iget v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->e:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 247
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->j:Landroid/graphics/Rect;

    return-object v0
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 156
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 157
    iget-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->n:Z

    if-eqz v0, :cond_1

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->o:Z

    .line 162
    :goto_0
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->a:Landroid/view/View;

    .line 165
    iput-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->a:Landroid/view/View;

    .line 166
    return-object v0

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter

    .prologue
    .line 225
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->h:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->i:Z

    if-nez v0, :cond_0

    .line 226
    invoke-direct {p0, p1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->a(Landroid/graphics/Canvas;)V

    .line 228
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 229
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->h:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->i:Z

    if-eqz v0, :cond_1

    .line 230
    invoke-direct {p0, p1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->a(Landroid/graphics/Canvas;)V

    .line 232
    :cond_1
    return-void
.end method

.method getHeaderBottomPosition()I
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->e:I

    return v0
.end method

.method getHeaderHeight()I
    .locals 4

    .prologue
    const/high16 v3, 0x4000

    const/4 v1, 0x0

    .line 178
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->a:Landroid/view/View;

    if-nez v0, :cond_0

    .line 191
    :goto_0
    return v1

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 183
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->getMeasuredWidth()I

    move-result v2

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    sub-int v0, v2, v0

    .line 186
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 188
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->getHeight()I

    move-result v1

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 190
    iget-object v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->a:Landroid/view/View;

    invoke-virtual {p0, v2, v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->measureChild(Landroid/view/View;II)V

    .line 191
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    goto :goto_0

    .line 183
    :cond_1
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->n:Z

    .line 150
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 151
    iget v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->e:I

    invoke-virtual {p0, v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->setHeaderBottomPosition(I)V

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->n:Z

    .line 153
    return-void
.end method

.method public setDrawSelectorOnTop(Z)V
    .locals 0
    .parameter

    .prologue
    .line 251
    iput-boolean p1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->i:Z

    .line 252
    return-void
.end method

.method setHeader(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->a:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->a:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 123
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must first remove the old header first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_2
    iput-object p1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->a:Landroid/view/View;

    .line 127
    if-eqz p1, :cond_0

    .line 128
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 129
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 131
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 132
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 133
    const/16 v0, 0x30

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 134
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->l:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 138
    iget-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->n:Z

    if-eqz v0, :cond_3

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->o:Z

    goto :goto_0

    .line 141
    :cond_3
    invoke-virtual {p0, p1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method setHeaderBottomPosition(I)V
    .locals 3
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 197
    sget-boolean v0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->b:Z

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int v1, p1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 208
    :cond_0
    :goto_0
    iput p1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->e:I

    .line 213
    return-void

    .line 202
    :cond_1
    :try_start_0
    sget-object v0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->c:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int v2, p1, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 204
    sget-object v0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->d:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->a:Landroid/view/View;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 206
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter

    .prologue
    .line 220
    iput-object p1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->f:Landroid/graphics/drawable/Drawable;

    .line 221
    return-void
.end method
